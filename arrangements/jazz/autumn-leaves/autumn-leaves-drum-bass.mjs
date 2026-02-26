const drums = sound("[hh - hh] hh hh hh").bank("RolandTR808");

const bass1 = note("<a2 d2 g2 c2 f#2 b2 e2 ->").sound("gm_acoustic_bass").clip(0.8);

const bass2 = note("<f#2 b2 e2 e2 a2 d2 g2 g2 f#2 b2 [e2 a2] [d2 g2] f#2 b2 e2 ->").sound("gm_acoustic_bass").clip(0.8);

arrange([2, drums], 
        [8, stack(drums, bass1)], 
        [8, stack(drums, bass1)], 
        [16, stack(drums, bass2)])
  .slow(1.2);
