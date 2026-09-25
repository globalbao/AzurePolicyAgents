using './agentsSetup.bicep'

// Basic resource parameters for specialized policy agents
param rgName = 'SpecializedPolicyAgents' // Name of the resource group for all resources
param resourceName = 'PolicyAgents' // Resource name prefix for all resources

// AI agent parameters
param agentModelCapacity = 500 // Model capacity (TPM). Higher capacity improves throughput for parallel policy testing
param agentModelName = 'gpt-5.4' // Model name
param agentModelVersion = '2026-03-05' // Model version
param agentModelDeploymentName = 'gpt-5.4' // Model deployment
param agentModelSkuName = 'GlobalStandard' // Model SKU name

// Additional param for agent tooling
param addKnowledge = 'aiSearch' // Add knowledge to the AI Agents - 'none', 'groundingWithBing', or 'aiSearch'

// Set to 'ServicePrincipal' when deploying via CI/CD pipeline, 'User' for interactive deployments
param deployerPrincipalType = 'ServicePrincipal'

// GitHub OIDC federated credential parameters
param githubOrg = 'replace-with-org-name'
param githubRepo = 'replace-with-repo-name'
param githubEnvironment = 'dev'

// Single foundry configuration - all four specialized agents deployed in one project
