Mutations::SignOutMutation = GraphQL::Relay::Mutation.define do
  name "SignOut"

  input_field :email, !types.String
  input_field :password, !types.String

  return_field :result, !types.Boolean

  resolve ->(obj, args, ctx) {
    athlete = Athlete.find_by(email: args[:email])

    raise 'Bad credentials' unless athlete.authenticate(args[:password])

    athlete.sign_out

    {
      result: true
    }
  }
end
