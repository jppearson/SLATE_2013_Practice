package FlywheelDamper "Package that includes models for flywheel with damper"
  import rotate = Modelica.Mechanics.Rotational.Components;
  import SI = Modelica.SIunits;
  model Flywheel "Model for Flywheel"
    extends rotate.Inertia;
    SI.Energy E;
    // added rotational energy to inertia
  equation
    E = 1 / 2 * J * w ^ 2;
  end Flywheel;
  model Damper "Model for Damper"
    extends rotate.Damper;
  end Damper;
  model FlywheelWithDamper "Model for flywheel with a damper"
    Flywheel fly;
    Damper damp;
  equation
    connect(fly.flange_b,damp.flange_a);
    // connect a flywheel with a damper
  end FlywheelWithDamper;
  annotation(Documentation(info = "<html>
 <p>
  <b> Flywheel with a Damper </b> 
  This model demonstrates 3 models: a flywheel, a damper, and a flywheel with a damper.
  Flywheel model components extends the definition of Inertia from the standard library to
  include the concept of energy. Damper model components is same as the rotational damper from
  the standard library. Flywheel with a damper model components connects a flywheel and a damper
  implemented above.
 </p>
</html>"));
end FlywheelDamper;

