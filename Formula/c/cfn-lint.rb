class CfnLint < Formula
  include Language::Python::Virtualenv

  desc "Validate CloudFormation templates against the CloudFormation spec"
  homepage "https://github.com/aws-cloudformation/cfn-lint/"
  url "https://files.pythonhosted.org/packages/57/5e/26b5d2f520b2dcc3127dad5e529abdf6202e5840464bf450af0316d4ab98/cfn-lint-0.83.5.tar.gz"
  sha256 "97ed0b36f77defba9fe843d2401160c7bb2a81dd4478dd17859bac9f027da311"
  license "MIT-0"

  bottle do
    sha256 cellar: :any,                 arm64_sonoma:   "e645364fc8b760785a945ef374cb6f5c5ca98117b79231971f47c528cf0974e7"
    sha256 cellar: :any,                 arm64_ventura:  "e603959a28163035b647fa5b0b90500b60302614b036aacc6d831fa082ef402e"
    sha256 cellar: :any,                 arm64_monterey: "e4236450fd4c1e5eec7499251914e6bd59175b7cf827e61512cfcea67d580f8c"
    sha256 cellar: :any,                 sonoma:         "590eace7dc99a3f92d14f32e776bcacba41409b13bfe97e91980f5d7abdfa2e3"
    sha256 cellar: :any,                 ventura:        "08ea442f2cf02e565c639d65ab02aef526f08201d9b573e3041af50bda590cfd"
    sha256 cellar: :any,                 monterey:       "c61a92db2bc751c1720d297723c049e19044ad4d5bbbc4c3d8299628b245684c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "147be383fa5a29139862cbe0d1e1a93d21c8bac2aa2cc845483a4d1dc47016c0"
  end

  depends_on "rust" => :build
  depends_on "python-attrs"
  depends_on "python-dateutil"
  depends_on "python-networkx"
  depends_on "python-pbr"
  depends_on "python-sympy"
  depends_on "python-typing-extensions"
  depends_on "python-urllib3"
  depends_on "python@3.12"
  depends_on "pyyaml"
  depends_on "six"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/67/fe/8c7b275824c6d2cd17c93ee85d0ee81c090285b6d52f4876ccc47cf9c3c4/annotated_types-0.6.0.tar.gz"
    sha256 "563339e807e53ffd9c267e99fc6d9ea23eb8443c08f112651963e24e22f84a5d"
  end

  resource "aws-sam-translator" do
    url "https://files.pythonhosted.org/packages/d2/9d/25709acfd440ba2e8b7518a67745fbeb7df8a8ed0d30c538bead9d371d98/aws-sam-translator-1.82.0.tar.gz"
    sha256 "f78e58194461635aef6255d04e82a9b690e331ca9fd669d1401bf7f9a93ae49f"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/4d/88/c2a6c14e64b2930b6f7ccf73c383f97db04efb9fd46b930666272e5b062e/boto3-1.33.11.tar.gz"
    sha256 "620f1eb3e18e780be58383b4a4e10db003d2314131190514153996032c8d932d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/b2/66/2d7c91767ece67a67f719178aa6ddc94c9f8496de2345109ccfee5e262fb/botocore-1.33.11.tar.gz"
    sha256 "b14b328f902d120de0a09eaa657a9a701c0ceeb711197c2f01ef0523f855086c"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "jschema-to-python" do
    url "https://files.pythonhosted.org/packages/1d/7f/5ae3d97ddd86ec33323231d68453afd504041efcfd4f4dde993196606849/jschema_to_python-1.2.3.tar.gz"
    sha256 "76ff14fe5d304708ccad1284e4b11f96a658949a31ee7faed9e0995279549b91"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpickle" do
    url "https://files.pythonhosted.org/packages/6e/92/62fdc2f6b468b870dd171ad21748ef0ec2bff1b258c25ce6db3545cccc90/jsonpickle-3.0.2.tar.gz"
    sha256 "e37abba4bfb3ca4a4647d28bb9f4706436f7b46c8a8333b4a718abafa8e46b37"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/8f/5e/67d3ab449818b629a0ffe554bb7eb5c030a71f7af5d80fbf670d7ebe62bc/jsonpointer-2.4.tar.gz"
    sha256 "585cee82b70211fa9e6043b7bb89db6e1aa49524340dde8ad6b63206ea689d88"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/a8/74/77bf12d3dd32b764692a71d4200f03429c41eee2e8a9225d344d91c03aff/jsonschema-4.20.0.tar.gz"
    sha256 "4f614fd46d8d61258610998997743ec5492a648b33cf478c1ddc23ed4598a5fa"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/8c/ce/1eb873a0ba153cf327464c752412b42d11b9c889d208beca7ef75540d128/jsonschema_specifications-2023.11.2.tar.gz"
    sha256 "9472fc4fea474cd74bea4a2b190daeccb5a9e4db2ea80efcf7a1b582fc9a81b8"
  end

  resource "junit-xml" do
    url "https://files.pythonhosted.org/packages/98/af/bc988c914dd1ea2bc7540ecc6a0265c2b6faccc6d9cdb82f20e2094a8229/junit-xml-1.9.tar.gz"
    sha256 "de16a051990d4e25a3982b2dd9e89d671067548718866416faec14d9de56db9f"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b7/41/3c8108f79fb7da2d2b17f35744232af4ffcd9e764ebe1e3fd4b26669b325/pydantic-2.5.2.tar.gz"
    sha256 "ff177ba64c6faf73d7afa2e8cad38fd456c0dbe01c9954e71038001cd15a6edd"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/64/26/cffb93fe9c6b5a91c497f37fae14a4b073ecbc47fc36a9979c7aa888b245/pydantic_core-2.14.5.tar.gz"
    sha256 "6d30226dfc816dd0fdf120cae611dd2215117e4f9b124af8c60ab9093b6e8e71"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/96/71/0aabc36753b7f4ad18cbc3c97dea9d6a4f204cbba7b8e9804313366e1c8f/referencing-0.32.0.tar.gz"
    sha256 "689e64fe121843dcfd57b71933318ef1f91188ffb45367332700a86ac8fd6161"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/6b/38/49d968981b5ec35dbc0f742f8219acab179fc1567d9c22444152f950cf0d/regex-2023.10.3.tar.gz"
    sha256 "3fef4f844d2290ee0ba57addcec17eec9e3df73f10a2748485dfd6a3a188cc0f"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/48/0b/f42f99419c5150c2741fe28bf97674d928d46ee17f46f2bc5be031cce0bc/rpds_py-0.13.2.tar.gz"
    sha256 "f8eae66a1304de7368932b42d801c67969fd090ddb1a7a24f27b435ed4bed68f"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/5f/cc/7e3b8305e22d7dcb383d4e1a30126cfac3d54aea2bbd2dfd147e2eff4988/s3transfer-0.8.2.tar.gz"
    sha256 "368ac6876a9e9ed91f6bc86581e319be08188dc60d50e0d56308ed5765446283"
  end

  resource "sarif-om" do
    url "https://files.pythonhosted.org/packages/ba/de/bbdd93fe456d4011500784657c5e4a31e3f4fcbb276255d4db1213aed78c/sarif_om-1.0.4.tar.gz"
    sha256 "cd5f416b3083e00d402a92e449a7ff67af46f11241073eea0461802a3b5aef98"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"test.yml").write <<~EOS
      ---
      AWSTemplateFormatVersion: '2010-09-09'
      Resources:
        # Helps tests map resource types
        IamPipeline:
          Type: "AWS::CloudFormation::Stack"
          Properties:
            TemplateURL: !Sub 'https://s3.${AWS::Region}.amazonaws.com/bucket-dne-${AWS::Region}/${AWS::AccountId}/pipeline.yaml'
            Parameters:
              DeploymentName: iam-pipeline
              Deploy: 'auto'
    EOS
    system bin/"cfn-lint", "test.yml"
  end
end
