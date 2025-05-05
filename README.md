
# Provisionamento de Infraestrutura na Azure com Terraform e GitHub Actions

Este projeto automatiza a criação de **redes** e **máquinas virtuais (VMs)** na Azure utilizando **Terraform** e **GitHub Actions**.

Ele foi estruturado para ajudar analistas, mesmo com pouca experiência, a realizarem a automação de forma guiada e segura.

---

## 📁 Estrutura do Projeto

O projeto é dividido em dois diretórios principais:

```
backstage/
├── azure/
│   ├── vnet/   → Provisiona recursos de rede (Resource Group, VNet, Subnet, NSG)
│   └── vm/     → Cria uma máquina virtual (VM Linux Ubuntu)
```

---

## ⚙️ Pré-requisitos

Antes de tudo, certifique-se de que os seguintes itens foram configurados:

- Repositório GitHub com as secrets:
  - `ARM_CLIENT_ID`
  - `ARM_CLIENT_SECRET`
  - `ARM_SUBSCRIPTION_ID`
  - `ARM_TENANT_ID`
  - `AWS_ACCESS_KEY_ID` (caso use backend em S3)
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_REGION`
- Bucket S3 (caso deseje usar armazenamento remoto para o Terraform State)
- GitHub Actions habilitado no repositório

---

## 🚀 Etapa 1: Executar a pipeline de redes

1. Vá até o diretório `azure/vnet`.
2. Acesse o GitHub Actions e acione a pipeline com a opção `apply`.
3. Aguarde a criação dos seguintes recursos:
   - Resource Group
   - Virtual Network
   - Subnet
   - Network Security Group (NSG)
4. Ao final, copie os valores do output da pipeline (serão mostrados no GitHub Actions).

Os principais valores que você vai precisar são:

```txt
resource_group_name = "resourcegroup-pequistore"
vnet_name           = "virtualnet-pequistore"
subnet_name         = "subnet-priv-pequistore"
subnet_id           = "/subscriptions/xxx/.../subnets/subnet-priv-pequistore"
nsg_name            = "networksg-projeto-vm"
nsg_id              = "/subscriptions/xxx/.../networkSecurityGroups/networksg-projeto-vm"
```

---

## 🖥️ Etapa 2: Preencher o arquivo `variables.tf` da VM

No diretório `azure/vm`, edite o arquivo `variables.tf` e preencha os campos de rede com os dados coletados na etapa anterior.

Exemplo:

```hcl
variable "resource_group_name" {
  default = "resourcegroup-pequistore"
}

variable "subnet_id" {
  default = "/subscriptions/..."
}

variable "nsg_id" {
  default = "/subscriptions/..."
}
```

---

## ⚙️ Etapa 3: Executar a pipeline da VM

1. Vá até o diretório `azure/vm`.
2. Acione a pipeline do GitHub Actions com a opção `apply`.
3. A pipeline criará:
   - IP público
   - Interface de rede (NIC)
   - Máquina virtual Ubuntu com acesso SSH

---

## 📥 Conectando na VM

Ao final da pipeline, o IP público será mostrado no output.  
Se você estiver usando autenticação por chave, certifique-se de ter configurado corretamente o SSH localmente.

Exemplo:

```bash
ssh -i /caminho/chave.pem ubuntu@<IP_PUBLICO>
```

---

## 🧼 Etapa Final: Destruir os recursos (opcional)

Caso deseje remover os recursos provisionados:

1. Vá até a pipeline de redes ou VM.
2. Execute com a opção `destroy`.

---

## 🤝 Suporte e Contribuição

Este projeto é voltado para fins educacionais e uso interno.  
Para dúvidas, sugestões ou melhorias, abra uma *issue* ou entre em contato com o time de DevOps responsável.

---

🛠️ Desenvolvido com Terraform, GitHub Actions e muita dedicação!
