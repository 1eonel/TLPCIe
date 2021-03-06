/* Generated by Yosys 0.7+281 (git sha1 d38a64b, gcc 4.9.2-10 -fPIC -Os) */

(* top =  1  *)
(* src = "DRAM1.v:1" *)
module DRAM1(data_a, addr_a, addr_b, we_a, re_b, clk, q_b);
  (* src = "DRAM1.v:25" *)
  wire [7:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  (* src = "DRAM1.v:4" *)
  input [5:0] addr_a;
  (* src = "DRAM1.v:4" *)
  input [5:0] addr_b;
  (* src = "DRAM1.v:5" *)
  input clk;
  (* src = "DRAM1.v:3" *)
  input [7:0] data_a;
  (* src = "DRAM1.v:6" *)
  output [7:0] q_b;
  wire [3:0] \ram[0] ;
  wire [3:0] \ram[1] ;
  wire [3:0] \ram[2] ;
  wire [3:0] \ram[3] ;
  wire [3:0] \ram[4] ;
  wire [3:0] \ram[5] ;
  wire [3:0] \ram[6] ;
  wire [3:0] \ram[7] ;
  (* src = "DRAM1.v:5" *)
  input re_b;
  (* src = "DRAM1.v:5" *)
  input we_a;
  NOT _244_ (
    .A(re_b),
    .Y(_233_)
  );
  NOT _245_ (
    .A(q_b[4]),
    .Y(_234_)
  );
  NOT _246_ (
    .A(q_b[5]),
    .Y(_235_)
  );
  NOT _247_ (
    .A(q_b[6]),
    .Y(_237_)
  );
  NOT _248_ (
    .A(q_b[7]),
    .Y(_239_)
  );
  NOT _249_ (
    .A(data_a[0]),
    .Y(_241_)
  );
  NOT _250_ (
    .A(we_a),
    .Y(_243_)
  );
  NOT _251_ (
    .A(data_a[1]),
    .Y(_001_)
  );
  NOT _252_ (
    .A(data_a[2]),
    .Y(_003_)
  );
  NOT _253_ (
    .A(data_a[3]),
    .Y(_005_)
  );
  NOT _254_ (
    .A(addr_a[0]),
    .Y(_007_)
  );
  NOT _255_ (
    .A(addr_a[1]),
    .Y(_009_)
  );
  NOT _256_ (
    .A(addr_a[2]),
    .Y(_010_)
  );
  NOT _257_ (
    .A(addr_b[2]),
    .Y(_012_)
  );
  NOT _258_ (
    .A(\ram[0] [0]),
    .Y(_014_)
  );
  NOT _259_ (
    .A(\ram[1] [0]),
    .Y(_016_)
  );
  NOT _260_ (
    .A(addr_b[0]),
    .Y(_018_)
  );
  NOT _261_ (
    .A(\ram[0] [2]),
    .Y(_019_)
  );
  NOT _262_ (
    .A(\ram[1] [2]),
    .Y(_021_)
  );
  NOT _263_ (
    .A(\ram[3] [3]),
    .Y(_023_)
  );
  NOT _264_ (
    .A(\ram[7] [0]),
    .Y(_025_)
  );
  NOT _265_ (
    .A(\ram[7] [1]),
    .Y(_027_)
  );
  NOT _266_ (
    .A(\ram[7] [2]),
    .Y(_028_)
  );
  NAND _267_ (
    .A(addr_b[2]),
    .B(\ram[6] [1]),
    .Y(_030_)
  );
  NAND _268_ (
    .A(_012_),
    .B(\ram[2] [1]),
    .Y(_032_)
  );
  NOR _269_ (
    .A(addr_b[2]),
    .B(\ram[3] [1]),
    .Y(_034_)
  );
  NAND _270_ (
    .A(addr_b[2]),
    .B(_027_),
    .Y(_036_)
  );
  NAND _271_ (
    .A(addr_b[0]),
    .B(_036_),
    .Y(_037_)
  );
  NOR _272_ (
    .A(_034_),
    .B(_037_),
    .Y(_039_)
  );
  NAND _273_ (
    .A(_030_),
    .B(_032_),
    .Y(_041_)
  );
  NAND _274_ (
    .A(_018_),
    .B(_041_),
    .Y(_043_)
  );
  NAND _275_ (
    .A(addr_b[1]),
    .B(_043_),
    .Y(_045_)
  );
  NOR _276_ (
    .A(_039_),
    .B(_045_),
    .Y(_046_)
  );
  NAND _277_ (
    .A(_012_),
    .B(\ram[0] [1]),
    .Y(_048_)
  );
  NAND _278_ (
    .A(addr_b[2]),
    .B(\ram[4] [1]),
    .Y(_050_)
  );
  NAND _279_ (
    .A(_012_),
    .B(\ram[1] [1]),
    .Y(_052_)
  );
  NAND _280_ (
    .A(addr_b[2]),
    .B(\ram[5] [1]),
    .Y(_054_)
  );
  NAND _281_ (
    .A(_048_),
    .B(_050_),
    .Y(_055_)
  );
  NAND _282_ (
    .A(_018_),
    .B(_055_),
    .Y(_057_)
  );
  NAND _283_ (
    .A(_052_),
    .B(_054_),
    .Y(_059_)
  );
  NAND _284_ (
    .A(addr_b[0]),
    .B(_059_),
    .Y(_061_)
  );
  NAND _285_ (
    .A(_057_),
    .B(_061_),
    .Y(_063_)
  );
  NOR _286_ (
    .A(addr_b[1]),
    .B(_063_),
    .Y(_064_)
  );
  NOR _287_ (
    .A(_046_),
    .B(_064_),
    .Y(_065_)
  );
  NOR _288_ (
    .A(_233_),
    .B(_065_),
    .Y(_066_)
  );
  NOR _289_ (
    .A(q_b[1]),
    .B(re_b),
    .Y(_067_)
  );
  NOR _290_ (
    .A(_066_),
    .B(_067_),
    .Y(_000_[1])
  );
  NAND _291_ (
    .A(addr_b[2]),
    .B(\ram[6] [2]),
    .Y(_068_)
  );
  NAND _292_ (
    .A(_012_),
    .B(\ram[2] [2]),
    .Y(_069_)
  );
  NOR _293_ (
    .A(addr_b[2]),
    .B(\ram[3] [2]),
    .Y(_070_)
  );
  NAND _294_ (
    .A(addr_b[2]),
    .B(_028_),
    .Y(_071_)
  );
  NAND _295_ (
    .A(addr_b[0]),
    .B(_071_),
    .Y(_072_)
  );
  NOR _296_ (
    .A(_070_),
    .B(_072_),
    .Y(_073_)
  );
  NAND _297_ (
    .A(_068_),
    .B(_069_),
    .Y(_074_)
  );
  NAND _298_ (
    .A(_018_),
    .B(_074_),
    .Y(_075_)
  );
  NAND _299_ (
    .A(addr_b[1]),
    .B(_075_),
    .Y(_076_)
  );
  NOR _300_ (
    .A(_073_),
    .B(_076_),
    .Y(_077_)
  );
  NOR _301_ (
    .A(addr_b[2]),
    .B(_019_),
    .Y(_078_)
  );
  NAND _302_ (
    .A(addr_b[2]),
    .B(\ram[4] [2]),
    .Y(_079_)
  );
  NAND _303_ (
    .A(_018_),
    .B(_079_),
    .Y(_080_)
  );
  NOR _304_ (
    .A(_078_),
    .B(_080_),
    .Y(_081_)
  );
  NOR _305_ (
    .A(addr_b[2]),
    .B(_021_),
    .Y(_082_)
  );
  NAND _306_ (
    .A(addr_b[2]),
    .B(\ram[5] [2]),
    .Y(_083_)
  );
  NAND _307_ (
    .A(addr_b[0]),
    .B(_083_),
    .Y(_084_)
  );
  NOR _308_ (
    .A(_082_),
    .B(_084_),
    .Y(_085_)
  );
  NOR _309_ (
    .A(_081_),
    .B(_085_),
    .Y(_086_)
  );
  NOR _310_ (
    .A(addr_b[1]),
    .B(_086_),
    .Y(_087_)
  );
  NOR _311_ (
    .A(_077_),
    .B(_087_),
    .Y(_088_)
  );
  NOR _312_ (
    .A(_233_),
    .B(_088_),
    .Y(_089_)
  );
  NOR _313_ (
    .A(re_b),
    .B(q_b[2]),
    .Y(_090_)
  );
  NOR _314_ (
    .A(_089_),
    .B(_090_),
    .Y(_000_[2])
  );
  NAND _315_ (
    .A(_012_),
    .B(\ram[2] [3]),
    .Y(_091_)
  );
  NAND _316_ (
    .A(addr_b[2]),
    .B(\ram[6] [3]),
    .Y(_092_)
  );
  NOR _317_ (
    .A(_012_),
    .B(\ram[7] [3]),
    .Y(_093_)
  );
  NAND _318_ (
    .A(_012_),
    .B(_023_),
    .Y(_094_)
  );
  NAND _319_ (
    .A(addr_b[0]),
    .B(_094_),
    .Y(_095_)
  );
  NOR _320_ (
    .A(_093_),
    .B(_095_),
    .Y(_096_)
  );
  NAND _321_ (
    .A(_091_),
    .B(_092_),
    .Y(_097_)
  );
  NAND _322_ (
    .A(_018_),
    .B(_097_),
    .Y(_098_)
  );
  NAND _323_ (
    .A(addr_b[1]),
    .B(_098_),
    .Y(_099_)
  );
  NOR _324_ (
    .A(_096_),
    .B(_099_),
    .Y(_100_)
  );
  NAND _325_ (
    .A(addr_b[2]),
    .B(\ram[4] [3]),
    .Y(_101_)
  );
  NAND _326_ (
    .A(_012_),
    .B(\ram[0] [3]),
    .Y(_102_)
  );
  NAND _327_ (
    .A(addr_b[2]),
    .B(\ram[5] [3]),
    .Y(_103_)
  );
  NAND _328_ (
    .A(_012_),
    .B(\ram[1] [3]),
    .Y(_104_)
  );
  NAND _329_ (
    .A(_101_),
    .B(_102_),
    .Y(_105_)
  );
  NAND _330_ (
    .A(_018_),
    .B(_105_),
    .Y(_106_)
  );
  NAND _331_ (
    .A(_103_),
    .B(_104_),
    .Y(_107_)
  );
  NAND _332_ (
    .A(addr_b[0]),
    .B(_107_),
    .Y(_108_)
  );
  NAND _333_ (
    .A(_106_),
    .B(_108_),
    .Y(_109_)
  );
  NOR _334_ (
    .A(addr_b[1]),
    .B(_109_),
    .Y(_110_)
  );
  NOR _335_ (
    .A(_100_),
    .B(_110_),
    .Y(_111_)
  );
  NOR _336_ (
    .A(_233_),
    .B(_111_),
    .Y(_112_)
  );
  NOR _337_ (
    .A(re_b),
    .B(q_b[3]),
    .Y(_113_)
  );
  NOR _338_ (
    .A(_112_),
    .B(_113_),
    .Y(_000_[3])
  );
  NOR _339_ (
    .A(re_b),
    .B(_234_),
    .Y(_000_[4])
  );
  NOR _340_ (
    .A(re_b),
    .B(_235_),
    .Y(_000_[5])
  );
  NOR _341_ (
    .A(re_b),
    .B(_237_),
    .Y(_000_[6])
  );
  NOR _342_ (
    .A(re_b),
    .B(_239_),
    .Y(_000_[7])
  );
  NOR _343_ (
    .A(_243_),
    .B(addr_a[2]),
    .Y(_114_)
  );
  NAND _344_ (
    .A(we_a),
    .B(_010_),
    .Y(_115_)
  );
  NAND _345_ (
    .A(we_a),
    .B(addr_a[2]),
    .Y(_116_)
  );
  NOT _346_ (
    .A(_116_),
    .Y(_117_)
  );
  NOR _347_ (
    .A(addr_a[1]),
    .B(_115_),
    .Y(_118_)
  );
  NAND _348_ (
    .A(_009_),
    .B(_114_),
    .Y(_119_)
  );
  NOR _349_ (
    .A(addr_a[0]),
    .B(_119_),
    .Y(_120_)
  );
  NAND _350_ (
    .A(_007_),
    .B(_118_),
    .Y(_121_)
  );
  NAND _351_ (
    .A(data_a[0]),
    .B(_120_),
    .Y(_122_)
  );
  NAND _352_ (
    .A(\ram[0] [0]),
    .B(_121_),
    .Y(_123_)
  );
  NAND _353_ (
    .A(_122_),
    .B(_123_),
    .Y(_236_)
  );
  NAND _354_ (
    .A(data_a[1]),
    .B(_120_),
    .Y(_124_)
  );
  NAND _355_ (
    .A(\ram[0] [1]),
    .B(_121_),
    .Y(_125_)
  );
  NAND _356_ (
    .A(_124_),
    .B(_125_),
    .Y(_238_)
  );
  NAND _357_ (
    .A(data_a[2]),
    .B(_120_),
    .Y(_126_)
  );
  NAND _358_ (
    .A(\ram[0] [2]),
    .B(_121_),
    .Y(_127_)
  );
  NAND _359_ (
    .A(_126_),
    .B(_127_),
    .Y(_240_)
  );
  NAND _360_ (
    .A(data_a[3]),
    .B(_120_),
    .Y(_128_)
  );
  NAND _361_ (
    .A(\ram[0] [3]),
    .B(_121_),
    .Y(_129_)
  );
  NAND _362_ (
    .A(_128_),
    .B(_129_),
    .Y(_242_)
  );
  NOR _363_ (
    .A(_007_),
    .B(_119_),
    .Y(_130_)
  );
  NAND _364_ (
    .A(addr_a[0]),
    .B(_118_),
    .Y(_131_)
  );
  NAND _365_ (
    .A(data_a[0]),
    .B(_130_),
    .Y(_132_)
  );
  NAND _366_ (
    .A(\ram[1] [0]),
    .B(_131_),
    .Y(_133_)
  );
  NAND _367_ (
    .A(_132_),
    .B(_133_),
    .Y(_002_)
  );
  NAND _368_ (
    .A(data_a[1]),
    .B(_130_),
    .Y(_134_)
  );
  NAND _369_ (
    .A(\ram[1] [1]),
    .B(_131_),
    .Y(_135_)
  );
  NAND _370_ (
    .A(_134_),
    .B(_135_),
    .Y(_004_)
  );
  NAND _371_ (
    .A(data_a[2]),
    .B(_130_),
    .Y(_136_)
  );
  NAND _372_ (
    .A(\ram[1] [2]),
    .B(_131_),
    .Y(_137_)
  );
  NAND _373_ (
    .A(_136_),
    .B(_137_),
    .Y(_006_)
  );
  NAND _374_ (
    .A(data_a[3]),
    .B(_130_),
    .Y(_138_)
  );
  NAND _375_ (
    .A(\ram[1] [3]),
    .B(_131_),
    .Y(_139_)
  );
  NAND _376_ (
    .A(_138_),
    .B(_139_),
    .Y(_008_)
  );
  NOR _377_ (
    .A(_009_),
    .B(_115_),
    .Y(_140_)
  );
  NAND _378_ (
    .A(addr_a[1]),
    .B(_114_),
    .Y(_141_)
  );
  NOR _379_ (
    .A(addr_a[0]),
    .B(_141_),
    .Y(_142_)
  );
  NAND _380_ (
    .A(_007_),
    .B(_140_),
    .Y(_143_)
  );
  NAND _381_ (
    .A(\ram[2] [0]),
    .B(_143_),
    .Y(_144_)
  );
  NOR _382_ (
    .A(_241_),
    .B(_243_),
    .Y(_145_)
  );
  NAND _383_ (
    .A(_142_),
    .B(_145_),
    .Y(_146_)
  );
  NAND _384_ (
    .A(_144_),
    .B(_146_),
    .Y(_011_)
  );
  NAND _385_ (
    .A(\ram[2] [1]),
    .B(_143_),
    .Y(_147_)
  );
  NOR _386_ (
    .A(_243_),
    .B(_001_),
    .Y(_148_)
  );
  NAND _387_ (
    .A(_142_),
    .B(_148_),
    .Y(_149_)
  );
  NAND _388_ (
    .A(_147_),
    .B(_149_),
    .Y(_013_)
  );
  NAND _389_ (
    .A(\ram[2] [2]),
    .B(_143_),
    .Y(_150_)
  );
  NOR _390_ (
    .A(_243_),
    .B(_003_),
    .Y(_151_)
  );
  NAND _391_ (
    .A(_142_),
    .B(_151_),
    .Y(_152_)
  );
  NAND _392_ (
    .A(_150_),
    .B(_152_),
    .Y(_015_)
  );
  NAND _393_ (
    .A(\ram[2] [3]),
    .B(_143_),
    .Y(_153_)
  );
  NOR _394_ (
    .A(_243_),
    .B(_005_),
    .Y(_154_)
  );
  NAND _395_ (
    .A(_142_),
    .B(_154_),
    .Y(_155_)
  );
  NAND _396_ (
    .A(_153_),
    .B(_155_),
    .Y(_017_)
  );
  NOR _397_ (
    .A(_007_),
    .B(_141_),
    .Y(_156_)
  );
  NAND _398_ (
    .A(addr_a[0]),
    .B(_140_),
    .Y(_157_)
  );
  NAND _399_ (
    .A(\ram[3] [0]),
    .B(_157_),
    .Y(_158_)
  );
  NAND _400_ (
    .A(_145_),
    .B(_156_),
    .Y(_159_)
  );
  NAND _401_ (
    .A(_158_),
    .B(_159_),
    .Y(_020_)
  );
  NAND _402_ (
    .A(\ram[3] [1]),
    .B(_157_),
    .Y(_160_)
  );
  NAND _403_ (
    .A(_148_),
    .B(_156_),
    .Y(_161_)
  );
  NAND _404_ (
    .A(_160_),
    .B(_161_),
    .Y(_022_)
  );
  NAND _405_ (
    .A(\ram[3] [2]),
    .B(_157_),
    .Y(_162_)
  );
  NAND _406_ (
    .A(_151_),
    .B(_156_),
    .Y(_163_)
  );
  NAND _407_ (
    .A(_162_),
    .B(_163_),
    .Y(_024_)
  );
  NAND _408_ (
    .A(\ram[3] [3]),
    .B(_157_),
    .Y(_164_)
  );
  NAND _409_ (
    .A(_154_),
    .B(_156_),
    .Y(_165_)
  );
  NAND _410_ (
    .A(_164_),
    .B(_165_),
    .Y(_026_)
  );
  NOR _411_ (
    .A(addr_a[1]),
    .B(_116_),
    .Y(_166_)
  );
  NAND _412_ (
    .A(_009_),
    .B(_117_),
    .Y(_167_)
  );
  NOR _413_ (
    .A(addr_a[0]),
    .B(_167_),
    .Y(_168_)
  );
  NAND _414_ (
    .A(_007_),
    .B(_166_),
    .Y(_169_)
  );
  NAND _415_ (
    .A(\ram[4] [0]),
    .B(_169_),
    .Y(_170_)
  );
  NAND _416_ (
    .A(_145_),
    .B(_168_),
    .Y(_171_)
  );
  NAND _417_ (
    .A(_170_),
    .B(_171_),
    .Y(_029_)
  );
  NAND _418_ (
    .A(\ram[4] [1]),
    .B(_169_),
    .Y(_172_)
  );
  NAND _419_ (
    .A(_148_),
    .B(_168_),
    .Y(_173_)
  );
  NAND _420_ (
    .A(_172_),
    .B(_173_),
    .Y(_031_)
  );
  NAND _421_ (
    .A(\ram[4] [2]),
    .B(_169_),
    .Y(_174_)
  );
  NAND _422_ (
    .A(_151_),
    .B(_168_),
    .Y(_175_)
  );
  NAND _423_ (
    .A(_174_),
    .B(_175_),
    .Y(_033_)
  );
  NAND _424_ (
    .A(\ram[4] [3]),
    .B(_169_),
    .Y(_176_)
  );
  NAND _425_ (
    .A(_154_),
    .B(_168_),
    .Y(_177_)
  );
  NAND _426_ (
    .A(_176_),
    .B(_177_),
    .Y(_035_)
  );
  NOR _427_ (
    .A(_007_),
    .B(_167_),
    .Y(_178_)
  );
  NAND _428_ (
    .A(addr_a[0]),
    .B(_166_),
    .Y(_179_)
  );
  NAND _429_ (
    .A(\ram[5] [0]),
    .B(_179_),
    .Y(_180_)
  );
  NAND _430_ (
    .A(_145_),
    .B(_178_),
    .Y(_181_)
  );
  NAND _431_ (
    .A(_180_),
    .B(_181_),
    .Y(_038_)
  );
  NAND _432_ (
    .A(\ram[5] [1]),
    .B(_179_),
    .Y(_182_)
  );
  NAND _433_ (
    .A(_148_),
    .B(_178_),
    .Y(_183_)
  );
  NAND _434_ (
    .A(_182_),
    .B(_183_),
    .Y(_040_)
  );
  NAND _435_ (
    .A(\ram[5] [2]),
    .B(_179_),
    .Y(_184_)
  );
  NAND _436_ (
    .A(_151_),
    .B(_178_),
    .Y(_185_)
  );
  NAND _437_ (
    .A(_184_),
    .B(_185_),
    .Y(_042_)
  );
  NAND _438_ (
    .A(\ram[5] [3]),
    .B(_179_),
    .Y(_186_)
  );
  NAND _439_ (
    .A(_154_),
    .B(_178_),
    .Y(_187_)
  );
  NAND _440_ (
    .A(_186_),
    .B(_187_),
    .Y(_044_)
  );
  NOR _441_ (
    .A(_009_),
    .B(_116_),
    .Y(_188_)
  );
  NAND _442_ (
    .A(addr_a[1]),
    .B(_117_),
    .Y(_189_)
  );
  NOR _443_ (
    .A(addr_a[0]),
    .B(_189_),
    .Y(_190_)
  );
  NAND _444_ (
    .A(_007_),
    .B(_188_),
    .Y(_191_)
  );
  NAND _445_ (
    .A(\ram[6] [0]),
    .B(_191_),
    .Y(_192_)
  );
  NAND _446_ (
    .A(_145_),
    .B(_190_),
    .Y(_193_)
  );
  NAND _447_ (
    .A(_192_),
    .B(_193_),
    .Y(_047_)
  );
  NAND _448_ (
    .A(\ram[6] [1]),
    .B(_191_),
    .Y(_194_)
  );
  NAND _449_ (
    .A(_148_),
    .B(_190_),
    .Y(_195_)
  );
  NAND _450_ (
    .A(_194_),
    .B(_195_),
    .Y(_049_)
  );
  NAND _451_ (
    .A(\ram[6] [2]),
    .B(_191_),
    .Y(_196_)
  );
  NAND _452_ (
    .A(_151_),
    .B(_190_),
    .Y(_197_)
  );
  NAND _453_ (
    .A(_196_),
    .B(_197_),
    .Y(_051_)
  );
  NAND _454_ (
    .A(\ram[6] [3]),
    .B(_191_),
    .Y(_198_)
  );
  NAND _455_ (
    .A(_154_),
    .B(_190_),
    .Y(_199_)
  );
  NAND _456_ (
    .A(_198_),
    .B(_199_),
    .Y(_053_)
  );
  NOR _457_ (
    .A(_007_),
    .B(_189_),
    .Y(_200_)
  );
  NAND _458_ (
    .A(addr_a[0]),
    .B(_188_),
    .Y(_201_)
  );
  NAND _459_ (
    .A(\ram[7] [0]),
    .B(_201_),
    .Y(_202_)
  );
  NAND _460_ (
    .A(_145_),
    .B(_200_),
    .Y(_203_)
  );
  NAND _461_ (
    .A(_202_),
    .B(_203_),
    .Y(_056_)
  );
  NAND _462_ (
    .A(\ram[7] [1]),
    .B(_201_),
    .Y(_204_)
  );
  NAND _463_ (
    .A(_148_),
    .B(_200_),
    .Y(_205_)
  );
  NAND _464_ (
    .A(_204_),
    .B(_205_),
    .Y(_058_)
  );
  NAND _465_ (
    .A(\ram[7] [2]),
    .B(_201_),
    .Y(_206_)
  );
  NAND _466_ (
    .A(_151_),
    .B(_200_),
    .Y(_207_)
  );
  NAND _467_ (
    .A(_206_),
    .B(_207_),
    .Y(_060_)
  );
  NAND _468_ (
    .A(\ram[7] [3]),
    .B(_201_),
    .Y(_208_)
  );
  NAND _469_ (
    .A(_154_),
    .B(_200_),
    .Y(_209_)
  );
  NAND _470_ (
    .A(_208_),
    .B(_209_),
    .Y(_062_)
  );
  NAND _471_ (
    .A(addr_b[2]),
    .B(\ram[6] [0]),
    .Y(_210_)
  );
  NAND _472_ (
    .A(_012_),
    .B(\ram[2] [0]),
    .Y(_211_)
  );
  NOR _473_ (
    .A(addr_b[2]),
    .B(\ram[3] [0]),
    .Y(_212_)
  );
  NAND _474_ (
    .A(addr_b[2]),
    .B(_025_),
    .Y(_213_)
  );
  NAND _475_ (
    .A(addr_b[0]),
    .B(_213_),
    .Y(_214_)
  );
  NOR _476_ (
    .A(_212_),
    .B(_214_),
    .Y(_215_)
  );
  NAND _477_ (
    .A(_210_),
    .B(_211_),
    .Y(_216_)
  );
  NAND _478_ (
    .A(_018_),
    .B(_216_),
    .Y(_217_)
  );
  NAND _479_ (
    .A(addr_b[1]),
    .B(_217_),
    .Y(_218_)
  );
  NOR _480_ (
    .A(_215_),
    .B(_218_),
    .Y(_219_)
  );
  NOR _481_ (
    .A(addr_b[2]),
    .B(_014_),
    .Y(_220_)
  );
  NAND _482_ (
    .A(addr_b[2]),
    .B(\ram[4] [0]),
    .Y(_221_)
  );
  NAND _483_ (
    .A(_018_),
    .B(_221_),
    .Y(_222_)
  );
  NOR _484_ (
    .A(_220_),
    .B(_222_),
    .Y(_223_)
  );
  NOR _485_ (
    .A(addr_b[2]),
    .B(_016_),
    .Y(_224_)
  );
  NAND _486_ (
    .A(addr_b[2]),
    .B(\ram[5] [0]),
    .Y(_225_)
  );
  NAND _487_ (
    .A(addr_b[0]),
    .B(_225_),
    .Y(_226_)
  );
  NOR _488_ (
    .A(_224_),
    .B(_226_),
    .Y(_227_)
  );
  NOR _489_ (
    .A(_223_),
    .B(_227_),
    .Y(_228_)
  );
  NOR _490_ (
    .A(addr_b[1]),
    .B(_228_),
    .Y(_229_)
  );
  NOR _491_ (
    .A(_219_),
    .B(_229_),
    .Y(_230_)
  );
  NOR _492_ (
    .A(_233_),
    .B(_230_),
    .Y(_231_)
  );
  NOR _493_ (
    .A(re_b),
    .B(q_b[0]),
    .Y(_232_)
  );
  NOR _494_ (
    .A(_231_),
    .B(_232_),
    .Y(_000_[0])
  );
  DFF _495_ (
    .C(clk),
    .D(_020_),
    .Q(\ram[3] [0])
  );
  DFF _496_ (
    .C(clk),
    .D(_022_),
    .Q(\ram[3] [1])
  );
  DFF _497_ (
    .C(clk),
    .D(_024_),
    .Q(\ram[3] [2])
  );
  DFF _498_ (
    .C(clk),
    .D(_026_),
    .Q(\ram[3] [3])
  );
  DFF _499_ (
    .C(clk),
    .D(_002_),
    .Q(\ram[1] [0])
  );
  DFF _500_ (
    .C(clk),
    .D(_004_),
    .Q(\ram[1] [1])
  );
  DFF _501_ (
    .C(clk),
    .D(_006_),
    .Q(\ram[1] [2])
  );
  DFF _502_ (
    .C(clk),
    .D(_008_),
    .Q(\ram[1] [3])
  );
  DFF _503_ (
    .C(clk),
    .D(_011_),
    .Q(\ram[2] [0])
  );
  DFF _504_ (
    .C(clk),
    .D(_013_),
    .Q(\ram[2] [1])
  );
  DFF _505_ (
    .C(clk),
    .D(_015_),
    .Q(\ram[2] [2])
  );
  DFF _506_ (
    .C(clk),
    .D(_017_),
    .Q(\ram[2] [3])
  );
  DFF _507_ (
    .C(clk),
    .D(_000_[0]),
    .Q(q_b[0])
  );
  DFF _508_ (
    .C(clk),
    .D(_000_[1]),
    .Q(q_b[1])
  );
  DFF _509_ (
    .C(clk),
    .D(_000_[2]),
    .Q(q_b[2])
  );
  DFF _510_ (
    .C(clk),
    .D(_000_[3]),
    .Q(q_b[3])
  );
  DFF _511_ (
    .C(clk),
    .D(_000_[4]),
    .Q(q_b[4])
  );
  DFF _512_ (
    .C(clk),
    .D(_000_[5]),
    .Q(q_b[5])
  );
  DFF _513_ (
    .C(clk),
    .D(_000_[6]),
    .Q(q_b[6])
  );
  DFF _514_ (
    .C(clk),
    .D(_000_[7]),
    .Q(q_b[7])
  );
  DFF _515_ (
    .C(clk),
    .D(_236_),
    .Q(\ram[0] [0])
  );
  DFF _516_ (
    .C(clk),
    .D(_238_),
    .Q(\ram[0] [1])
  );
  DFF _517_ (
    .C(clk),
    .D(_240_),
    .Q(\ram[0] [2])
  );
  DFF _518_ (
    .C(clk),
    .D(_242_),
    .Q(\ram[0] [3])
  );
  DFF _519_ (
    .C(clk),
    .D(_029_),
    .Q(\ram[4] [0])
  );
  DFF _520_ (
    .C(clk),
    .D(_031_),
    .Q(\ram[4] [1])
  );
  DFF _521_ (
    .C(clk),
    .D(_033_),
    .Q(\ram[4] [2])
  );
  DFF _522_ (
    .C(clk),
    .D(_035_),
    .Q(\ram[4] [3])
  );
  DFF _523_ (
    .C(clk),
    .D(_038_),
    .Q(\ram[5] [0])
  );
  DFF _524_ (
    .C(clk),
    .D(_040_),
    .Q(\ram[5] [1])
  );
  DFF _525_ (
    .C(clk),
    .D(_042_),
    .Q(\ram[5] [2])
  );
  DFF _526_ (
    .C(clk),
    .D(_044_),
    .Q(\ram[5] [3])
  );
  DFF _527_ (
    .C(clk),
    .D(_047_),
    .Q(\ram[6] [0])
  );
  DFF _528_ (
    .C(clk),
    .D(_049_),
    .Q(\ram[6] [1])
  );
  DFF _529_ (
    .C(clk),
    .D(_051_),
    .Q(\ram[6] [2])
  );
  DFF _530_ (
    .C(clk),
    .D(_053_),
    .Q(\ram[6] [3])
  );
  DFF _531_ (
    .C(clk),
    .D(_056_),
    .Q(\ram[7] [0])
  );
  DFF _532_ (
    .C(clk),
    .D(_058_),
    .Q(\ram[7] [1])
  );
  DFF _533_ (
    .C(clk),
    .D(_060_),
    .Q(\ram[7] [2])
  );
  DFF _534_ (
    .C(clk),
    .D(_062_),
    .Q(\ram[7] [3])
  );
endmodule
