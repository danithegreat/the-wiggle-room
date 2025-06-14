<!-- src/routes/+page.svelte -->
<script lang="ts">
  import WelcomeSection from '$lib/components/WelcomeSection.svelte';
  import ChatInterface from '$lib/components/ChatInterface.svelte';
  import DashboardOverview from '$lib/components/DashboardOverview.svelte';
  import Button from '$lib/components/ui/Button.svelte';
  let hasStarted = false;
  let showChat = false;

  // Called when WelcomeSection dispatches a "start" event
  function handleStart() {
    hasStarted = true;
  }

  function toggleChat() {
    showChat = !showChat;
  }
</script>

{#if !hasStarted}
  <!-- Initial welcome screen -->
  <WelcomeSection on:start={handleStart} />
{:else}
  <!-- Main app shell -->
  <div class="min-h-screen bg-gradient-to-br from-green-50 via-purple-50 to-pink-50">
    <div class="container mx-auto px-4 py-6 max-w-4xl">
      
      <!-- Header -->
      <div class="flex items-center justify-between mb-8">
        <div class="flex items-center gap-3">
          <div class="text-3xl">🩰</div>
          <h1 class="text-2xl font-semibold text-slate-800">The Wiggle Room</h1>
        </div>
        <Button
          on:click={toggleChat}
          class="bg-gradient-to-r from-green-400 to-purple-400 
                 hover:from-green-500 hover:to-purple-500 
                 text-white rounded-full px-6 py-2 
                 transition-all duration-300 shadow-lg hover:shadow-xl"
        >
          {#if showChat}Hide Chat{:else}💬 Chat with Coach{/if}
        </Button>
      </div>

      <!-- Main Content -->
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
        <DashboardOverview />

        {#if showChat}
          <div class="lg:col-span-1">
            <ChatInterface />
          </div>
        {/if}
      </div>

    </div>
  </div>
{/if}