

use_bpm 136
use_synth :piano



define :m28 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
define :m346 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end
define :m57 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end



live_loop:background_notes do
  play:E3, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  play:E4, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  sleep 1
  play:E4, amp: 0.25
  sleep 1
  
  play:E3, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  play:E4, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  sleep 1
  play:E4, amp: 0.5
  sleep 1
  
  play:E3, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  play:E4, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  sleep 1
  play:E4, amp: 0.75
  sleep 1
  
  5.times do
    play:E3, amp: 1
    sleep 1
    play:B3, amp: 1
    play:E4, amp: 1
    sleep 1
    play:B3, amp: 1
    sleep 1
    play:E4, amp: 1
    sleep 1
  end
  stop
end

live_loop :outside do
  16.times do
    
    sample :drum_bass_hard
    sleep 1
    sample :sn_dolf
    sleep 1
  end
  stop
end



# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

with_fx :echo do
  m28
end
with_fx :echo do
  m346
end
with_fx :echo do
  m346
end
with_fx :echo do
  m57
end
with_fx :echo do
  m346
end
with_fx :echo do
  m57
end
with_fx :echo do
  m28
end

live_loop :ending do
  3.times do
    sample :bass_voxy_hit_c
    sleep 1
    sample :ambi_piano
    sleep 1
    sample :bass_woodsy_c
    sleep 1
    play:Gs2
    play:Gs4
    play:bs2
    play:Gs4
    sleep 1
    play:Gs4
    play:g5
    play:g4
    play:g5
    play:g4
    sleep 2
  end
  stop
end
