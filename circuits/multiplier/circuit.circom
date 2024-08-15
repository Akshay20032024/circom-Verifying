pragma circom 2.0.0;

/*This circuit Takes Two Inputs(a,b) And Give Specefic Output(q)*/  

template Multiplier2 () {  

   //Declare Your Input 
      signal input a;
      signal input b;


  //Declare Your Signal
      signal x;
      signal y;


  //Declare Your Output
      signal output q;


  //Declare Your Gate
      component andGate = AND();
      component notGate = NOT();
      component orGate = OR();


  //Logic Of Your Circuit

  //Inputs
      andGate.a <== a;
      andGate.b <== b;
      notGate.in <== b;
  // Declare Signals

      x <== andGate.out;
      y <== notGate.out;
  //Declare OrGate Inputs

      orGate.a <== x;
      orGate.b <== y;

  //Output

      q <== orGate.out;

   
}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = Multiplier2();