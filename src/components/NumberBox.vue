<template>
    <section>
        <div id="numbers-container">
            <div v-for="(fact, number) in numberFacts" :key="number" class="number-box">
                <div class="number-fact">
                    <p>{{ fact }}</p>
                </div>
                <div class="number">
                    {{ number }}
                </div>
            </div>
        </div>
    </section>
  </template>
  
  <script>
  export default {
    props: {
      fact: String,
      number: String,
    },
    data() {
        return {
            authorName: 'Bhagya Wijenayake',
            heroImageUrl: 'https://images.unsplash.com/photo-1635695604201-2b718204bccb?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            numberFacts: {}
        };
    },
    async mounted() {
        try {
            const response = await fetch('http://numbersapi.com/1..51');
            const data = await response.json();
            this.numberFacts = data;
        } catch (error) {
            console.error('Error:', error);
            alert('An error occurred while fetching data.');
        }
    }
  };
  </script>
  
  <style scoped>

  </style>
  