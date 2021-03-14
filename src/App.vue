<template>
  <div id="app" class="container">
  
    <p style="color:green; font-family:verdana; font-size:30px">This is a paragraph !</p>
    <img alt="Vue logo" src="./assets/koala.jpg" height="254px" width="300px" />
    <h2></h2>
    <ParticleBtn
      :visible.sync="btnOps.visible"
      :animating.sync="btnOps.animating"
      :options="btnOps"
      cls="btn-cls"
    >
      Koala Chocolat!!!
    </ParticleBtn>
    <!-- <h2>animating:{{ btnOps.animating }}</h2>
    <h2>visible:{{ btnOps.visible }}</h2> -->
    <h2></h2>
    <button @click="btnOps.visible = !btnOps.visible">switch</button>

    <input-contenteditable

    />
      <p>Insert your favorite number between 1 and 118 below</p>
  <vue-number-input v-model="value" :min="1" :max="118" inline controls></vue-number-input>

  </div>
</template>

<script>

import ParticleBtn from "vue-particle-effect-buttons";
import VueNumberInput from '@chenfengyuan/vue-number-input';

export default {
  data() {
    return {
      btnOps: {
        type: "triangle",
        easing: "easeOutQuart",
        size: 5,
        particlesAmountCoefficient: 8,
        oscillationCoefficient: 2,
        color: function () {
          return Math.random() < 0.5 ? "#000000" : "#ffffff";
        },
        onComplete: () => {
          console.log("complete");
        },
        onBegin: () => {
          console.log("begin");
        },
        visible: true,
        animating: false,
      },
    };
  },
  name: "App",
  components: { ParticleBtn, VueNumberInput},
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.container {
  background-image: linear-gradient(
    -128deg,
    rgb(235, 146, 146) 3%,
    rgba(168, 140, 245, 0.938) 88%,
    rgba(94, 41, 219, 0.87) 100%
  );
  /* display: flex; */
  width: 100%;
  height: 100%;
  justify-content: center;
  align-items: center;
}

html,
body {
  height: 100%;
  margin: 0;
}
</style>
