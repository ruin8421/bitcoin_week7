# SimpleStaking 스마트 컨트랙트 배포 및 테스트 보고서

본 보고서는 Ethereum Sepolia 테스트넷 환경에서 진행된 `SimpleStaking` 스마트 컨트랙트의 배포 과정과 기능 테스트 결과를 정리한 것입니다.

## 1. 프로젝트 개요
- **컨트랙트 명**: SimpleStaking
- **주요 기능**: ETH 스테이킹(Stake), 인출(Withdraw), 잔액 조회(getBalance)
- **개발 환경**: Remix IDE, MetaMask
- **네트워크**: Ethereum Sepolia Testnet

## 2. 배포 및 실행 정보
배포된 컨트랙트의 주소와 트랜잭션 해시 값은 다음과 같습니다.

- **Contract Address**: `0xE5779973789f77b623E78727c79f222596C9F5ef`
- **Deployment Transaction Hash**: `0x0e986e572fce2a1e9a75085073408c2b81eb4a75f977181582b8ad4f5b957ad8`
- **Etherscan Link**: [상세 정보 확인](https://sepolia.etherscan.io/address/0xE5779973789f77b623E78727c79f222596C9F5ef)

## 3. 기능 테스트 결과
스마트 컨트랙트 배포 후, 실제 스테이킹 기능을 테스트하였습니다.

### 3.1 Stake (스테이킹 실행)
- **전송 금액**: 10 Wei
- **결과**: 트랜잭션 컨펌 완료 (MetaMask 승인)

### 3.2 getBalance (잔액 조회)
- **입력 주소**: `0x3c2e934e6c98a0f85ac06691b7598b12a86bbf73`
- **출력 결과**: `uint256: 10`
- **증빙**: 10 Wei가 컨트랙트 내 매핑(Mapping) 변수에 정상적으로 기록된 것을 확인하였습니다.

## 4. 증빙 자료
<img width="1910" height="839" alt="스크린샷 2026-04-14 163251" src="https://github.com/user-attachments/assets/5fc10ac9-249a-4368-835a-2a6938375db2" />
<img width="518" height="823" alt="스크린샷 2026-04-14 163132" src="https://github.com/user-attachments/assets/9a300147-d2c7-45cb-80d0-1f39a50e3707" />
