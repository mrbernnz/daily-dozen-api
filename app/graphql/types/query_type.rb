Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The root of all queries"

  field :athletes, types[Types::AthleteType] do
    resolve ->(obj, args, ctx) {
      raise "Unauthorized" unless ctx[:current_user]

      Athlete.all
    }
  end

  field :athlete, Types::AthleteType do
    argument :id, !types.ID
    description "Find a Athleter by ID"
    resolve ->(obj, args, ctx) { Athlete.find(args[:id]) }
  end

  field :workouts, types[Types::WorkoutType] do
    description "Workouts of Current Athlete"
    resolve ->(obj, args, ctx) {
      raise "Unauthorized" unless ctx[:current_user]

      return ctx[:current_user].workouts
    }
  end

  field :workout, Types::WorkoutType do
    argument :id, !types.ID
    description "Workouts of Current Athlete"
    resolve ->(obj, args, ctx) {
      raise "Unauthorized" unless ctx[:current_user]

      return ctx[:current_user].requests.find(args[:id])
    }
  end
end
