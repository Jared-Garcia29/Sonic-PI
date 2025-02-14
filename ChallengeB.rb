
#Challenge B Stranger Things
use_bpm 160

#Make sure its by every 4 beats

live_loop :main_theme do
  play :c2 , amp: 1.2
  sleep 0.5
  play :e2 , amp: 1.2
  sleep 0.5
  play :g2, amp: 1.2
  sleep 0.5
  play :b2, amp: 1.25
  sleep 0.5
  
  play :c3, amp: 1.25
  sleep 0.5
  play :b2, amp: 1.5
  sleep 0.5
  play :g2, amp: 1.25
  sleep 0.5
  play :e2, amp: 1.25
  sleep 0.5
end

sleep 12 # Wait here so I can ONLY here the first live loop

live_loop :bass do
  use_synth :chipbass
  play :b2, release: 0.5, cutoff: 90
  sleep 2
  play :a2, release: 0.5, cutoff: 200
  sleep 2
  play :e2, release: 0.5, cutoff: 50
  sleep 2
  play :g2, release: 0.5, cutoff: 100
  sleep 2
end

sleep 16

live_loop :drums do
  sample :bd_tek, amp: 2
  sleep 2
  sample :sn_generic, amp: 1.5 , beat_stretch: 5
  sleep 2
  sample :bd_tek, amp: 2
  sleep 2
  sample :elec_blup, amp: 1.5
  sleep 2
end
