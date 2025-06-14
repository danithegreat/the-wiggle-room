<!-- ChatInterface.svelte -->
<script lang="ts">
  import { Send, Sparkles } from 'lucide-svelte';
  
  interface Message {
    id: string;
    content: string;
    isUser: boolean;
    timestamp: Date;
  }

  let messages: Message[] = [
    {
      id: "1",
      content: "Hey there! 👋 I'm your wiggle coach. How are you feeling today? Ready for a little movement, or do you need some gentle encouragement first?",
      isUser: false,
      timestamp: new Date(),
    }
  ];
  
  let inputValue = "";

  const quickActions = [
    "I'm feeling tired 😴",
    "I have 5 minutes ⏰",
    "My back hurts 💆‍♀️",
    "I'm stressed 😰",
  ];

  function handleSendMessage() {
    if (!inputValue.trim()) return;

    const userMessage: Message = {
      id: Date.now().toString(),
      content: inputValue,
      isUser: true,
      timestamp: new Date(),
    };

    messages = [...messages, userMessage];

    // Simulate AI response
    setTimeout(() => {
      const responses = [
        "I love that energy! ✨ How about we start with just 30 seconds of gentle stretching? Even tiny movements count.",
        "That's totally okay! 💙 Some days are harder than others. What if we just do 3 deep breaths and call it a win?",
        "You're showing up, and that's what matters! 🌟 Let's try some shoulder rolls while you're sitting. No need to get up.",
        "Perfect! Let's celebrate that you're here. 🎉 Want to try a quick body scan? Just notice how you feel right now.",
      ];

      const aiMessage: Message = {
        id: (Date.now() + 1).toString(),
        content: responses[Math.floor(Math.random() * responses.length)],
        isUser: false,
        timestamp: new Date(),
      };

      messages = [...messages, aiMessage];
    }, 1000);

    inputValue = "";
  }

  function handleKeyDown(event: KeyboardEvent) {
    if (event.key === 'Enter') {
      handleSendMessage();
    }
  }
</script>

<div class="h-96 flex flex-col bg-white/90 backdrop-blur-sm border-0 shadow-xl rounded-2xl overflow-hidden">
  <!-- Header -->
  <div class="bg-gradient-to-r from-green-400 to-purple-400 p-4 text-white">
    <div class="flex items-center gap-2">
      <Sparkles class="w-5 h-5" />
      <h3 class="font-semibold">Your Wiggle Coach</h3>
    </div>
  </div>

  <!-- Messages -->
  <div class="flex-1 overflow-y-auto p-4 space-y-4">
    {#each messages as message (message.id)}
      <div class="flex {message.isUser ? 'justify-end' : 'justify-start'}">
        <div class="max-w-xs px-4 py-2 rounded-2xl {
          message.isUser
            ? 'bg-gradient-to-r from-green-400 to-purple-400 text-white'
            : 'bg-slate-100 text-slate-800'
        }">
          <p class="text-sm">{message.content}</p>
        </div>
      </div>
    {/each}
  </div>

  <!-- Quick Actions -->
  <div class="px-4 py-2 border-t border-slate-100">
    <div class="flex flex-wrap gap-2 mb-2">
      {#each quickActions as action}
        <button
          class="text-xs rounded-full border border-slate-200 hover:bg-green-50 px-3 py-1"
          on:click={() => inputValue = action}
        >
          {action}
        </button>
      {/each}
    </div>
  </div>

  <!-- Input -->
  <div class="p-4 border-t border-slate-100">
    <div class="flex gap-2">
      <input
        type="text"
        bind:value={inputValue}
        on:keydown={handleKeyDown}
        placeholder="How are you feeling? What's your energy like?"
        class="flex-1 rounded-full border border-slate-200 focus:border-green-400 px-4 py-2 focus:outline-none"
      />
      <button
        on:click={handleSendMessage}
        class="rounded-full bg-gradient-to-r from-green-400 to-purple-400 hover:from-green-500 hover:to-purple-500 p-2"
      >
        <Send class="w-4 h-4 text-white" />
      </button>
    </div>
  </div>
</div> 