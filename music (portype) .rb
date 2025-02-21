use_bpm 160



sample "C:/Users/jared_garcia/Documents/Audacity/intro.wav"

sleep 26

live_loop :back do
  sample "C:/Users/jared_garcia/Documents/Audacity/back.wav" , amp: 1.25
  sync
end

live_loop :top1 do
  use_synth :piano
  
  # First block with release and cutoff values for each note
  play :g5, sustain: 2.5 , amp: 2
  sleep 2
  play :f5,sustain: 5 , amp: 2
  sleep 0.5
  play :g5,sustain: 1.25, amp: 2
  sleep 0.5
  play :b5,sustain: 1.25, amp: 2
  sleep 2
  play :d5,sustain: 5, amp: 2
  sleep 2
  play :c5,sustain: 5, amp: 2
  sleep 0.5
  play :d5,sustain: 1.25, amp: 2
  sleep 0.5
  play :f5,sustain: 1.25, amp: 2
  sleep 2
  play :g5,sustain: 5, amp: 2
  sleep 2
  play :f5,sustain: 5, amp: 2
  sleep 0.5
  play :g5,sustain: 1.25, amp: 2
  sleep 0.5
  play :b5,sustain: 1.25, amp: 2
  sleep 2
  
  play :d5,sustain: 5, amp: 2
  sleep 2
  play :c5,sustain: 5, amp: 2
  sleep 1
  play :d5,sustain: 2.5, amp: 2
  sleep 2
  
  play :g5,sustain: 5, amp: 2
  sleep 2
  play :f5,sustain: 5, amp: 2
  sleep 0.5
  play :g5,sustain: 1.25, amp: 2
  sleep 0.5
  play :b5,sustain: 1.25, amp: 2
  sleep 2
  
  play :d5,sustain: 5, amp: 2
  sleep 2
  play :c5,sustain: 5, amp: 2
  sleep 0.5
  play :d5,sustain: 1.25, amp: 2
  sleep 0.5
  play :f5,sustain: 1.25, amp: 2
  sleep 2
  play :g5,sustain: 5, amp: 2
  sleep 2
  play :f5,sustain: 5, amp: 2
  sleep 0.5
  play :g5,sustain: 1.25, amp: 2
  sleep 0.5
  play :b5,sustain: 1.25, amp: 2
  sleep 2
  
  play :d5,sustain: 5, amp: 2
  sleep 2
  play :c5,sustain: 5, amp: 2
  sleep 1
  play :d2,sustain: 2.5, amp: 2
  play :g2 ,sustain: 2.5, amp: 2
  sleep 1
  
  
  play :d2,sustain: 9, amp: 2
  play :g2,sustain: 9, amp: 2
  
  sleep 2
  
  
  play :f2 , sustain: 2, amp: 2
  play :c2 ,  sustain: 3, amp: 2
  
  sleep 2
  
  sleep 1
end


sleep 44.5

live_loop:second do
  sleep 2
  play :b3 , amp: 3
  play :e3, amp: 3
  play :b2, amp: 3
  sleep 2
  play :b2, amp: 3
  sleep 2
  
  play :b2, amp: 3
  sleep 2
  play :b3, amp: 3
  play :d3, amp: 3
  play :b2, amp: 3
  sleep 2
end
