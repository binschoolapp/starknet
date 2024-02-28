# Starknet

### Starknet
StarkNet是由StarkWare公司开发的一个项目。StarkWare是一家专注于区块链可扩展性和隐私解决方案的技术公司，致力于开发零知识证明（Zero-Knowledge Proofs）技术来增强区块链网络的性能和安全性。StarkNet是一个去中心化的ZK-Rollup网络，运用了StarkWare的STARK技术，旨在为以太坊提供无限扩展性。

StarkNet旨在允许开发者构建可扩展的去中心化应用（dApps），而不会受限于以太坊主链的吞吐量和高费用问题。通过使用零知识证明，StarkNet能够在不牺牲安全性和去中心化的前提下，大幅提高交易处理速度和效率。

StarkWare成立于2018年，由几位在密码学、区块链和软件工程方面有深厚背景的专家联合创立，包括Eli Ben-Sasson教授，他也是zk-STARKs技术的共同发明者之一。公司的目标是通过其先进的技术解决方案，推动加密货币和区块链行业的前进，使得这些技术能够更广泛地应用于各种场景中。

### Cairo

Cairo 是 ZK Rollup 的领域专用语言，目前仅用于 StarkNet 项目。随着 Rollup 叙事的发展，我们认为 cairo 在未来一定会成为智能合约开发的核心语言。

### 安装 Cairo
在开始进行 Cairo 编程前，我们需要安装准备相关环境。笔者使用的是 WSL Ubuntu 22.04 系统。但事实上，使用 macOS 也可达到相同的开发体验。

本文使用了 Cairo 1 语言，相比于大量依赖于 Python 的 Cairo 0 语言，Cairo 1 语言相关的开发工具基本都使用了 Rust 。这意味着我们可以通过直接下载编译后的二进制安装包进行安装。

在开发环境部署上，我们主要依赖于 Cairo 包管理器 scarb

Scarb的安装方法与 cairo 基本一致，读者可以参考 文档。使用以下命令测试安装是否成功: