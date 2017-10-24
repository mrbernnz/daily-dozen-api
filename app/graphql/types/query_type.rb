Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :athlete, Types::AthleteType do
    argument :id, !types.ID
    description "Find a Athleter by ID"
    resolve ->(obj, args, ctx) { Athlete.find(args[:id]) }
  end

  field :workout, types[Types::WorkoutType] do
    description "Workouts of Current Athlete"
    resolve ->(obj, args, ctx) { Workout.all }
  end
end
