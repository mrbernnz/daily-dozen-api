Types::WorkoutType = GraphQL::ObjectType.define do
  name "Workout"
  description "A workout"

  field :id, !types.Int
  field :workoutName, !types.String, property: :workout_name
  field :athlete, Types::AthleteType, 'Owner'
end
