within Workspace;

model SoloTruck "Open loop steering example"
  extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Trucks.Steer(
    redeclare .VehicleDynamics.Atmospheres.Constant atmosphere,
    redeclare .VehicleDynamics.Grounds.Flat ground,
    redeclare .VehicleDynamics.Vehicles.Chassis.Examples.Trucks.Truck2s_22 truck,
    steerRobot(release=false));
  .VehicleDynamics.Vehicles.Chassis.Experiments.Blocks.DoubleLaneChange doubleLaneChange(
    p1=3,
    p2=3,
    t2=4.5,
    a1_deg=135,
    a2_deg=-135)
    annotation (Placement(transformation(extent={{-140,20},{-120,40}})));
equation
  connect(doubleLaneChange.y, steerRobot.phi_ref) annotation (Line(
      points={{-119,30},{-101,30}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (
    experiment(
      StopTime=10,
      Tolerance=1e-008,
      __Dymola_Algorithm="Radau"),
    __Dymola_Commands(executeCall=.VehicleDynamics.Examples.GettingStarted.visualizeTruck()
        "Visualize", executeCall=
          .VehicleDynamics.Examples.GettingStarted.plotTruck() "Plot"),
    Documentation(revisions="<html>
Copyright &copy; 2004-2021, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.
</html>", info="<html>
<p>Select <b>Commands | Visualize </b>to set the animation view. </p>
<p>Select <b>Commands | Plot </b>to show plots with relevant variables. </p>
</html>"));
end SoloTruck;
