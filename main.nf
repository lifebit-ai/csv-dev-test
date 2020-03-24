process read_csv {

  publishDir 'boomboomboom'

  input:
  file x from Channel.fromPath(params.csv)

  output:
  file '*.csv' into lala

  """
  tail $x > 'test_result.csv'
  """

}
