pragma circom 2.0.0;

/*The Circuit Include Three Gates Which Are AND,NOT and OR Gates.The Circuit Take Two Input Signals a&b And Give Output q signal*/  

template Multiplier2 () {  

   //Declaring The Input Signals Of Circuit
      signal input a;
      signal input b;


  //Declaring The Intrmediate Signals Of Circuit
      signal x;
      signal y;


  //Declaring The Output Of The Circuit
      signal output q;


  //Declaring The Gates Required For Completion Of Circuit
      component andGate = AND();
      component notGate = NOT();
      component orGate = OR();


  //Coding THe logic Of Circuit (Connections In Cicuit)

  //Giving Inputs To AND And NOT Gate
      andGate.a <== a;
      andGate.b <== b;
      notGate.in <== b;
  // Getting Signals From AND and NOT Gate And assigning These Signals To X and Y Signals

      x <== andGate.out;
      y <== notGate.out;
  //Giving X and Y Signlas To The Input Of The OR Gate
      orGate.a <== x;
      orGate.b <== y;

  //Assingning The Output Signal From OR Gate To Q Signal

      q <== orGate.out;

   //TEMPLATE Of The Gates Used For Building THe Given Circuit
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
