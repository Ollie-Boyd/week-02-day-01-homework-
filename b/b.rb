class Team
    attr_reader :team_name, :players, :coach, :points
    attr_writer :team_name, :players, :coach, :points

    def initialize(team_name, players, coach, points=0)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = points

    end

    def add_player(player)
        return @players.push(player)
    end

    def contains_player(player)
        return @players.include?(player)
    end

    def update_points(fixture_result)
        points_hash={
            "win" => 1,
            "lose" => -1
        }
        return @points += points_hash[fixture_result]
    end


end