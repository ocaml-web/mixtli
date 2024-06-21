module type Nimbus = sig
  val nimbus : string
end

module Cumulus = Cumulus.M
module Stratus = Stratus.M
