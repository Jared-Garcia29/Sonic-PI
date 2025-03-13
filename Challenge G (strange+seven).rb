use_bpm 160
use_synth :saw
piano = [:c2,:e2,:g2,:b2,:c3,:b2,:g2,:e2]
a=0
live_loop :main_theme do
  5.times do
    with_fx :distortion do
      8.times do
        play piano [a]
        sleep 0.5
        a=a+1
      end
    end
    a=0
    
  end
  stop
end

sleep 20

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

notes_=[:e3,:e3,:g3,:d3,:c3,:b2]
rest = [ 1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]
b=0
live_loop :white_stripes do
  5.times do
    with_fx :reverb do
      8.times do
        play notes_[a]
        sleep rest[b]
        a=a+1
        b=b+1
      end
    end
    a=0
    b=0
  end
  stop
end
