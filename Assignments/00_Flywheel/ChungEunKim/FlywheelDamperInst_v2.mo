model FlywheelDamperInst
  import FlywheelDamper.*;
  FlywheelWithDamper fwd(fly.J = 1, fly.phi(start = 0), fly.w(start = 0), damp.d = 1);
  annotation(Documentation(info = "<html>
 <p>
  This model instantiate the flywheel with damper model implemented
 </p>
</html>"));
end FlywheelDamperInst;

