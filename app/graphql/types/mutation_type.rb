Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :signUp, Mutations::SignUpMutation.field
  field :signIn, Mutations::SignInMutation.field
  field :signOut, Mutations::SignOutMutation.field
end
