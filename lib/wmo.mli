module type Nimbus = sig
  val nimbus : string
end

module Cumulus : Nimbus
module Stratus : Nimbus
