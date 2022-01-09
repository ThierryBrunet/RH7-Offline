// ------------------------------------------------------------------------
// Copyright 2021 The Dapr Authors
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//     http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ------------------------------------------------------------------------
namespace Dapr.E2E.Test
{
    using System;
    using System.Threading;
    using System.Threading.Tasks;
    using Dapr.Actors;
    using Dapr.E2E.Test.Actors.Reminders;
    using Xunit;

    public partial class E2ETests : IAsyncLifetime
    {
        [Fact]
        public async Task ActorCanStartAndStopReminder()
        {
            using var cts = new CancellationTokenSource(TimeSpan.FromSeconds(60));
            var proxy = this.ProxyFactory.CreateActorProxy<IReminderActor>(ActorId.CreateRandom(), "ReminderActor");

            await WaitForActorRuntimeAsync(proxy, cts.Token);

            // Start reminder, to count up to 10
            await proxy.StartReminder(new StartReminderOptions(){ Total = 10, });

            State state; 
            while (true)
            {
                cts.Token.ThrowIfCancellationRequested();

                state = await proxy.GetState();
                this.Output.WriteLine($"Got Count: {state.Count} IsReminderRunning: {state.IsReminderRunning}");
                if (!state.IsReminderRunning)
                {
                    break;
                }
            }

            // Should count up to exactly 10
            Assert.Equal(10, state.Count);
        }
    }
}
