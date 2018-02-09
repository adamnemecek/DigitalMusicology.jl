module PitchOps

using DigitalMusicology

export pc, allpcs, transpose_by, transpose_to

"Turn a pitch (or pitch collection) into a pitch class (collection)"
function pc end

pc(pitch::MidiPitch) = midi(mod(pitch.pitch, 12))

"""
    allpcs(P)

Returns a list of all pitch classes of pitch type P.
"""
function allpcs end

allpcs(::Type{MidiPitch}) = midis(0:11)

"Transpose a pitch (collection) by some directed interval."
function transpose_by end

transpose_by(pitch::P, interval::P) where {P <: Pitch} = pitch+interval

"Transpose a pitch (collection) to a new reference point."
function transpose_to end

transpose_to(pitch::P, newref::P) where {P <: Pitch} = newref

end # module
