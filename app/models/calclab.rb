
class Calclab
  def self.actions(&block)
    ['calclab', 'services', 'opensource', 'jobs', 'research'].each do |action|
      yield action
    end
  end
end