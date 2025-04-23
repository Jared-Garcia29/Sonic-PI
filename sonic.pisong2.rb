use_bpm 190
use_synth :sc808_cowbell
intro = sample "C:/Users/notic/Downloads/Don't Say Lazy - K-On! Ending (Isolated Tracks) (mp3cut.net) (2).mp3"
d=0.1

d1=1
d2=2

g=80

k=1



define :lowrepeat4  do
  play :e1
  sleep 1
  play :e2
  sleep 0.5
  play :e1
  sleep 0.5
end

define :lowrepeat14 do
  3.times do
    lowrepeat4
  end
  play_chord [:e2,:e1]
  sleep 1
  play_chord [:f2,:f1]
  sleep 1
end




define :lowrepeat1 do |set1,set2,set3,set4,set5,set6|
  
  play set1 ,amp: 0.8
  sleep 1
  
  play set2,amp: 0.8
  sleep 0.5
  
  play set3,amp: 0.8
  sleep 1
  
  play set4,amp: 0.8
  sleep 0.5
  play set5,amp: 0.8
  sleep 0.5
  play set6,amp: 0.8
  sleep 0.5
end

define :lowrepeat2 do
  4.times do
    play_chord [:e3,:e2],amp: 0.8
    sleep 0.5
    play :b3,amp: 0.8
    sleep 0.5
  end
end

define :rawtop do
  play_chord [:e5,:b4]
  sleep 0.5
  play :d5
  sleep 0.5
  play_chord [:e5,:b4]
  sleep 1
  
  sleep 0.5
  
  play :d5
  sleep 0.5
  play_chord [:e5,:b4]
  sleep 0.5
  play :d5
  sleep 0.5
  
  
  play_chord [:e5,:b4]
  sleep 0.5
  play :d5
  sleep 0.5
  play_chord [:e5,:b4]
  sleep 0.5
  play :d5
  sleep 0.5
  play_chord [:g5,:b4]
  sleep 1
  play_chord [:g5,:b4]
  sleep 1
  
  
end



define :toprepeat2 do
  play_chord [:e5,:b4,:e4]
  sleep 0.5
  play_chord [:e5,:b4,:e4]
  sleep 0.5
  
  sleep 0.5
  
  play :e4
  sleep 0.5
end
define :toprepeat13 do
  3.times do
    toprepeat2
  end
  play_chord [:e5,:b4,:e4]
  sleep 1
  play_chord [:f5,:c5,:f4]
  sleep 1
end


define :highrepeat1 do
  2.times do
    play_chord [:e5,:b4] ,amp: 1
    sleep 0.5
    play :d5, amp: 1
    sleep 0.5
  end
end


live_loop :bass do
  with_fx :rlpf do
    sample "C:/Users/notic/Downloads/Don't Say Lazy - K-On! Ending (Isolated Tracks) (mp3cut.net) (2).mp3" ,num_slices: 9.2 , slice:0, amp: 0.6
    stop
  end
end



live_loop :low do
  
  lowrepeat1 :c2,:c3,:c2,:c2,:c3,:c2
  lowrepeat1 :d2,:d3,:d2,:d2,:d3,:d2
  lowrepeat1 :e2,:e3,:e2,:e2,:e3,:e2
  
  play :e2,amp: 0.8
  sleep 1
  play :e3,amp: 0.8
  sleep 0.5
  play :e2,amp: 0.8
  sleep 0.5
  play :d2,amp: 0.8
  sleep 1
  play :d3,amp: 0.8
  sleep 0.5
  play :d2,amp: 0.8
  sleep 0.5
  
  
  lowrepeat1 :c2,:c3,:c2,:c2,:c3,:c2
  lowrepeat1 :d2,:d3,:d2,:d2,:d3,:d2
  
  use_synth :organ_tonewheel
  
  
  lowrepeat2
  lowrepeat2
  
  lowrepeat1 :c2,:c3,:c2,:c2,:c3,:c2
  lowrepeat1 :d2,:d3,:d2,:d2,:d3,:d2
  lowrepeat1 :e2,:e3,:e2,:e2,:e3,:e2
  
  play :e2,amp: 0.8
  sleep 1
  play :e3,amp: 0.8
  sleep 0.5
  play :e2,amp: 0.8
  sleep 0.5
  play :d2,amp: 0.8
  sleep 1
  play :d3,amp: 0.8
  sleep 0.5
  play :d2,amp: 0.8
  sleep 0.5
  
  
  lowrepeat1 :c2,:c3,:c2,:c2,:c3,:c2
  lowrepeat1 :d2,:d3,:d2,:d2,:d3,:d2
  
  lowrepeat2
  lowrepeat2
  
  use_synth :dtri
  
  lowrepeat14
  lowrepeat14
  
  8.times do
    lowrepeat4
  end
  lowrepeat14
  lowrepeat14
  
  stop
end

live_loop :top do
  play_chord [:e5,:c5,:g4],amp: 1
  sleep 1
  play_chord [:b5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:a5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:g5,:e5,:c5],amp: 1
  sleep 1
  #can be made into paramaitized with the first note
  
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:g5,:d5],amp: 1
  sleep 1
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:b5,:d5],amp: 1
  sleep 1
  #can paramatized the first note
  
  play_chord [:d5,:b4],amp: 1
  sleep 1
  play_chord [:b5,:d5,:b4],amp: 1
  sleep 1
  play_chord [:a5,:d5,:b4],amp: 1
  sleep 1
  play_chord [:g5 ,:d5,:b4],amp: 1
  sleep 1
  #can paramatized this
  
  play_chord [:a5,:e5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:e5,:b4],amp: 1
  sleep 1
  play_chord [:e5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:e5,:b4],amp: 1
  sleep 1
  #can paramitize
  
  play_chord [:e5,:c5,:g4],amp: 1
  sleep 1
  play_chord [:b5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:a5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:g5,:e5,:c5],amp: 1
  sleep 1
  
  
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:g5,:d5],amp: 1
  sleep 1
  play_chord [:b5,:d5],amp: 1
  sleep 1.5
  play :d5,amp: 1
  sleep 0.5
  use_synth :organ_tonewheel
  
  
  highrepeat1
  play_chord [:e5,:b4],amp: 1
  sleep 1
  play_chord [:e5,:b4],amp: 1
  sleep 0.5
  play :d5,amp: 1
  sleep 0.5
  
  highrepeat1
  play_chord [:g5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:b4],amp: 1
  sleep 1
  
  
  
  
  play_chord [:e5,:c5,:g4],amp: 1
  sleep 1
  play_chord [:b5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:a5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:g5,:e5,:c5],amp: 1
  sleep 1
  #can be made into paramaitized with the first note
  
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:g5,:d5],amp: 1
  sleep 1
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:b5,:d5],amp: 1
  sleep 1
  #can paramatized the first note
  
  play_chord [:d5,:b4],amp: 1
  sleep 1
  play_chord [:b5,:d5,:b4],amp: 1
  sleep 1
  play_chord [:a5,:d5,:b4],amp: 1
  sleep 1
  play_chord [:g5 ,:d5,:b4],amp: 1
  sleep 1
  #can paramatized this
  
  play_chord [:a5,:e5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:e5,:b4],amp: 1
  sleep 1
  play_chord [:e5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:e5,:b4],amp: 1
  sleep 1
  #can paramitize
  
  play_chord [:e5,:c5,:g4],amp: 1
  sleep 1
  play_chord [:b5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:a5,:e5,:c5],amp: 1
  sleep 1
  play_chord [:g5,:e5,:c5],amp: 1
  sleep 1
  
  
  play_chord [:a5,:d5],amp: 1
  sleep 1
  play_chord [:g5,:d5],amp: 1
  sleep 1
  play_chord [:b5,:d5],amp: 1
  sleep 1.5
  play :d5,amp: 1
  sleep 0.5
  
  highrepeat1
  play_chord [:e5,:b4],amp: 1
  sleep 1
  play_chord [:e5,:b4],amp: 1
  sleep 0.5
  play :d5,amp: 1
  sleep 0.5
  
  highrepeat1
  play_chord [:g5,:b4],amp: 1
  sleep 1
  play_chord [:g5,:b4],amp: 1
  sleep 1
  
  use_synth :hoover
  
  toprepeat13
  toprepeat13
  
  rawtop
  rawtop
  toprepeat13
  toprepeat13
  
  use_synth :piano
  
  16.times do
    play g
    sleep 0.25
    g=g-1
  end
  20.times do
    play g
    sleep 0.25
    g=g+1
  end
  
  stop
  
end

sleep 32

live_loop :drums do
  with_fx :level do
    12.times do
      sample :sn_generic,amp: d
      sleep 2
      d=d+0.05
    end
  end
  sleep 8
  
  d=1.55
  
  
  24 .times do
    sample :sn_generic,amp: d
    sleep 2
  end
  
  stop
  
end
