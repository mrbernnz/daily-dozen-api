Types::ExerciseType = GraphQL::ObjectType.define do
  name "Exercise"
  description "A Exercise"

  field :id, !types.ID
  field :exerciseName, !types.String, property: :exercise_name
  field :sets, types[Types::ExerciseSetType], property: :exercise_sets
end
