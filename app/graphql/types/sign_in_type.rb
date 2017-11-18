Types::SignInType = GraphQL::ObjectType.define do
  name "SignIn"
  field :token, !types.String do
    resolve -> (obj, args, ctx) { obj[:token] }
  end

  field :athlete, Types::AthleteType do
    resolve -> (obj, args, ctx) { obj[:athlete] }
  end
end
