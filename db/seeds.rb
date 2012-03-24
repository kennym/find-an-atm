
nodetype_atm = NodeType.create(:name => "ATM")

Node.create(
  :name => "Test ATM",
  :address => "Pacheco c/ Legion Civil Extranjera",
  :latitude => -25.296822,
  :longitude => -57.5840,
  :node_type_id => nodetype_atm)

Node.create(
  :name => "Banco Continental",
  :address => "Bla bla bla",
  :latitude => -25.287738,
  :longitude => -57.627816,
  :node_type_id => nodetype_atm)

Node.create(
  :name => "Banco Itau",
  :address => "Bla bla bla",
  :latitude => -25.287738,
  :longitude => -57.127816,
  :node_type_id => nodetype_atm)

Node.create(
  :name => "HSBC",
  :address => "Bla bla bla",
  :latitude => "-25.287738",
  :longitude => "-57.127816",
  :node_type_id => nodetype_atm)
