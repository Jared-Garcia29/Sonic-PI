use_bpm 160



sample "C:/Users/jared_garcia/Documents/Audacity/true.wav"


sleep 17


# Define a soft ambient synth pad sound
define :ambient_pad do
  with_fx :reverb, mix: 0.6, room: 0.8 do
    use_synth :piano
    # Create chords with 5/8 timing - 5 beats in total
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1  # Each chord lasts for 1/5 of the bar (5/8)
    play_chord [:a3, :c4, :e4], sustain: 4, release: 6, amp: 0.4
    sleep 1  # 1/5 of the bar
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1  # 1/5 of the bar
    play_chord [:a3, :c4, :e4], sustain: 4, release: 6, amp: 0.4
    sleep 1  # 1/5 of the bar
    play_chord [:e3, :g3, :b3], sustain: 4, release: 6, amp: 0.4
    sleep 1  # 1/5 of the bar
  end
end

# Define a soft lead piano sound
define :piano_lead do
  use_synth :piano
  # Adjust melody to fit 5/8 time signature
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
  
  # First block with release and cutoff values for each note
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
  play :d2,sustain: 9 ,amp: 1.5
  play :g2 ,sustain: 9,amp: 1.5
  sleep 1
  
  
  play :d2,sustain: 9,amp: 1.5
  play :g2,sustain: 9,amp: 1.5
  
  sleep 2
  
  
  play :f2 , sustain: 9,amp: 1.5
  play :c2 ,  sustain: 9,amp: 1.5
  
  sleep 2
  
  sleep 5
  stop
end
# Play the background pad and piano
live_loop :ambient_background do
  7.times do
    ambient_pad
  end
  stop
end

live_loop :piano_melody do
  7.times do
    
    piano_lead
  end
  stop
end





sleep 40

live_loop:second do
  sleep 2
  sample "C:/Users/jared_garcia/Documents/Audacity/CRAZY (Instrumental).wav", rate: 2
  sync
  stop
end

