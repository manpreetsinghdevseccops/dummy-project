@Library('devseccops-shared-library@main') _

deploymentPipeline(
    // ── Core (required) ───────────────────────────────────────────────
    codeRepoUrl  : 'https://github.com/manpreetsinghdevseccops/dummy-project',
    branchName   : 'main',
    imageName    : 'dummy-project',
    ecrName      : 'dummy-project',
    serviceName  : 'dummy-project',
    awsAccount   : '130705418859',
    awsRegion    : 'ap-south-1',
    credentialsId: 'github-token',

    // ── Deploy / GitOps (required when enableUpdateValuesYaml=true) ───
    organization         : 'devseccops',
    organizationManifests: '',
    valuesFile           : 'dummy-project/values.yaml',
    configBranch         : 'dev',
    gitUsername          : '',
    gitEmail             : '',
    enableUpdateValuesYaml: false,

    // ── Build type ────────────────────────────────────────────────────
    buildType   : 'js',
    buildVersion: '18.17.0',

    // ── Feature flags ─────────────────────────────────────────────────
    enableBuild    : true,
    enableDeploy   : false,
    enableUnitTests: true,
    enableOwasp    : true,
    enableSonarQube: true,
)