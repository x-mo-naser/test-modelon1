within Workspace;

model Truck_6x2 "Typical 6x2 truck (one driven rear axle, one tag axle)"
  extends .VehicleDynamics.Vehicles.Templates.FrontEngineTruck(
    final icon_name=
        "modelica://VehicleDynamics/Resources/Images/Vehicles/Truck6x2Icon.png",

    redeclare .VehicleDynamics.Vehicles.Chassis.Examples.Trucks.Truck2s_22 truck,
    redeclare .VehicleDynamics.Vehicles.Dashboards.Minimal dashboard,
    redeclare .VehicleDynamics.Vehicles.Powertrains.Transmissions.Automatic.TwelveSpeed transmission,
    redeclare .VehicleDynamics.Vehicles.Powertrains.Engines.Tabular engine(
      rcm={0,0,0.4},
      m=250,
      rpm_thr_table_tau=[0,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1; 600,76,101,
          227,354,455,556,682,808,909,1011,1137; 800,0,172,344,515,687,859,1031,
          1203,1374,1546,1718; 900,-51,81,222,333,960,1200,1440,1680,1920,2160,
          2400; 1000,-86,35,187,303,960,1200,1440,1680,1920,2160,2400; 1300,-101,
          -10,121,283,960,1200,1440,1680,1920,2160,2400; 1600,-156,-35,86,253,
          768,960,1152,1344,1536,1728,1920; 1800,-221,-56,51,172,667,834,1000,
          1167,1334,1501,1667; 1900,-226,-86,-10,91,606,758,909,1061,1213,1364,
          1516; 2000,-226,-96,-25,56,445,556,667,778,889,1000,1112; 2100,-226,-91,
          -56,-51,-51,-51,-51,-56,-56,-61,-51],
      T_throttle=0.5,
      J=10),
    redeclare .VehicleDynamics.Vehicles.Powertrains.Drivelines.Trucks.RWD1 driveline,
    redeclare .VehicleDynamics.Vehicles.Brakes.Trucks.Lumped brakes);
end Truck_6x2;
