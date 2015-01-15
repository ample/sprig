require 'hashery/ordered_hash'

module Sprig
  class TsortableHash < ::Hashery::OrderedHash
    include TSort

    alias tsort_each_node each_key

    def tsort_each_child(node, &block)
      fetch(node).each(&block)
    end
  end
end
