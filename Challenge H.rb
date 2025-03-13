use_bpm 120
use_synth :piano



define:song do |set1,set2|
  play set1
  play set2
  sleep 0.5
end

live_loop :mortal do
  5.times do
    song :a4,:a5
    song :a4,:a5
    song :c5,:c6
    song :a4,:a5
    song :d5,:d6
    song :a4,:a5
    song :e5,:e6
    song :d5,:d6
    
    song :c5,:c6
    song :c5,:c6
    song :e5,:e6
    song :c5,:c6
    song :g5,:g6
    song :c4,:c5
    song :e5,:e6
    song :c4,:c5
    
    song :g4,:g5
    song :g4,:g5
    song :b4,:b5
    song :g4,:g5
    song :c5,:c6
    song :g4,:g5
    song :d5,:d6
    song :c5,:c6
    
    song :f4,:f5
    song :f4,:f5
    song :a4,:a5
    song :f4,:f5
    song :c5,:c6
    song :f4,:f5
    song :c5,:c6
    song :b4,:b5
  end
  stop
end


