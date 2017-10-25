Types::WorkoutType = GraphQL::ObjectType.define do
  name "Workout"
  description "A workout"

  field :id, !types.ID
  field :workoutName, !types.String, property: :workout_name
  field :athlete, Types::AthleteType, 'Owner'
  field :exercises, types[Types::ExerciseType]
end
