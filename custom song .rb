use_bpm 160



sample "C:/Users/notic/Downloads/music/true.wav"

e = 3

sleep 17


define :ambient_pad do
  with_fx :reverb, mix: 0.6, room: 0.8 do
    use_synth :piano
    
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1
    play_chord [:a3, :c4, :e4], sustain: 4, release: 6, amp: 0.4
    sleep 1
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1
    play_chord [:a3, :c4, :e4], sustain: 4, release: 6, amp: 0.4
    sleep 1
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1
  end
end


define :piano_lead do
  use_synth :piano
  
  play :e4, sustain: 1, release: 0.5, amp: 0.4
  sleep 1
  play :g4, sustain: 1, release: 0.5, amp: 0.4
  sleep 1
  play :b4, sustain: 1, release: 0.5, amp: 0.4
  sleep 1
  play :e4, sustain: 1, release: 0.5, amp: 0.4
  sleep 1
  play :g4, sustain: 1, release: 0.5, amp: 0.4
  sleep 1
end

live_loop :top1 do
  use_synth :piano
  
  play :g5, sustain: 2.5
  sleep 2
  play :f5,sustain: 5
  sleep 0.5
  play :g5,sustain: 1.25
  sleep 0.5
  play :b5,sustain: 1.25
  sleep 2
  play :d5,sustain: 5
  sleep 2
  play :c5,sustain: 5
  sleep 0.5
  play :d5,sustain: 1.25
  sleep 0.5
  play :f5,sustain: 1.25
  sleep 2
  play :g5,sustain: 5
  sleep 2
  play :f5,sustain: 5
  sleep 0.5
  play :g5,sustain: 1.25
  sleep 0.5
  play :b5,sustain: 1.25
  sleep 2
  
  play :d5,sustain: 5
  sleep 2
  play :c5,sustain: 5
  sleep 1
  play :d5,sustain: 2.5
  sleep 2
  
  play :g5,sustain: 5
  sleep 2
  play :f5,sustain: 5
  sleep 0.5
  play :g5,sustain: 1.25
  sleep 0.5
  play :b5,sustain: 1.25
  sleep 2
  
  play :d5,sustain: 5
  sleep 2
  play :c5,sustain: 5
  sleep 0.5
  play :d5,sustain: 1.25
  sleep 0.5
  play :f5,sustain: 1.25
  sleep 2
  play :g5,sustain: 5
  sleep 2
  play :f5,sustain: 5
  sleep 0.5
  play :g5,sustain: 1.25
  sleep 0.5
  play :b5,sustain: 1.25
  sleep 2
  
  play :d5,sustain: 5
  sleep 2
  play :c5,sustain: 5
  sleep 1
  play :d2,sustain: 20 ,amp: 2
  play :g2 ,sustain: 20,amp: 2
  sleep 1
  
  
  play :d2,sustain: 20,amp: 2
  play :g2,sustain: 20,amp: 2
  
  sleep 2
  
  
  
  
  sleep 5
  stop
end

live_loop :ambient_background do
  sleep 10
  5.times do
    ambient_pad
  end
  stop
end

live_loop :piano_melody do
  sleep 5
  6.times do
    
    piano_lead
  end
  stop
end





sleep 40
live_loop :sound do
  with_synth :tb303 do
    3.times do
      sample :bd_sone , amp: 1.5
      sleep 1
    end
    stop
  end
end

live_loop:second do
  sleep 2
  sample "C:/Users/notic/Downloads/music/CRAZY (Instrumental).wav", rate: 1.5
  #sync
  stop
end

live_loop :end do
  sleep 116
  5.times do
    sample :arovane_beat_a
    sample :bd_sone
    sample :bd_808
  end
  stop
end

live_loop :boom do
  sleep 155.5
  sample :sn_generic , beat_stretch: 10 , amp: 5
  stop
end

