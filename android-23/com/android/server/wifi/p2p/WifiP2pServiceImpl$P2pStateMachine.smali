.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p1, "started"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p1, "reload"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "devName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "p2pSupported"    # Z

    #@0
    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    .line 535
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@5
    .line 479
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@c
    .line 480
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    #@13
    .line 481
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@1a
    .line 482
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@21
    .line 483
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@26
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    #@28
    .line 484
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@2f
    .line 486
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@36
    .line 487
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@3d
    .line 489
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@42
    .line 488
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@44
    .line 491
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@46
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@49
    .line 490
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@4b
    .line 492
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@50
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@52
    .line 493
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@54
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@57
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@59
    .line 494
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    #@5b
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@5e
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    #@60
    .line 496
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@62
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@65
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@67
    .line 497
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@69
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@6c
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@6e
    .line 498
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@70
    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@73
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@75
    .line 500
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    #@77
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@79
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    #@80
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@82
    .line 501
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    #@84
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@86
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    #@89
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@8b
    .line 503
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@8d
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    #@90
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@92
    .line 512
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@94
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    #@97
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@99
    .line 513
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@9b
    .line 514
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;

    #@9d
    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@a0
    .line 513
    const/4 v2, 0x0

    #@a1
    invoke-direct {v0, v2, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    #@a4
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@a6
    .line 523
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    #@a8
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    #@ab
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@ad
    .line 529
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@af
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@b2
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@b4
    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@b6
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@b9
    .line 538
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    #@bb
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@bd
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c0
    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@c2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@c4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c7
    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@c9
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@cb
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ce
    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    #@d0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@d2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@d5
    .line 542
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@d7
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    #@d9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@dc
    .line 543
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@de
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@e0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@e3
    .line 544
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@e5
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@e7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ea
    .line 545
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@ec
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@ee
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@f1
    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@f3
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@f5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@f8
    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@fa
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@fc
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ff
    .line 548
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@101
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@103
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@106
    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    #@108
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@10a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@10d
    .line 550
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@10f
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    #@111
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@114
    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@116
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@118
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@11b
    .line 552
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@11d
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    #@11f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@122
    .line 554
    if-eqz p4, :cond_0

    #@124
    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@126
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@129
    .line 559
    :goto_0
    const/16 v0, 0x32

    #@12b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogRecSize(I)V

    #@12e
    .line 560
    const/4 v0, 0x1

    #@12f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogOnlyTransitions(Z)V

    #@132
    .line 534
    return-void

    #@133
    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    #@135
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@138
    goto :goto_0
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2983
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    #@5
    .line 2984
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@8
    move-result-object v0

    #@9
    .line 2985
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@b
    .line 2986
    return v2

    #@c
    .line 2989
    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 2990
    return v2

    #@17
    .line 2993
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@19
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 2994
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@26
    .line 2995
    return v2

    #@27
    .line 2998
    :cond_2
    return v3
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2272
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 2273
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@6
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@d
    move-result-object v2

    #@e
    const v3, 0x1090100

    #@11
    .line 2274
    const/4 v4, 0x0

    #@12
    .line 2273
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 2275
    .local v1, "row":Landroid/view/View;
    const v2, 0x102040a

    #@19
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/widget/TextView;

    #@1f
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 2276
    const v2, 0x102034e

    #@29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/widget/TextView;

    #@2f
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@32
    .line 2277
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@35
    .line 2271
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2907
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    #@5
    .line 2908
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@8
    move-result-object v0

    #@9
    .line 2909
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@b
    .line 2910
    return v1

    #@c
    .line 2913
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    #@11
    move-result v2

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    int-to-byte v2, v2

    #@15
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    #@18
    .line 2915
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1a
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@22
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    #@25
    move-result v2

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    int-to-byte v2, v2

    #@29
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    #@2c
    .line 2916
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2e
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    #@31
    move-result v1

    #@32
    invoke-virtual {p2, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    #@35
    .line 2917
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3b
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    #@3e
    move-result v2

    #@3f
    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@42
    .line 2919
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@44
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    if-nez v1, :cond_2

    #@4a
    .line 2920
    return v3

    #@4b
    .line 2923
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    #@4e
    move-result v1

    #@4f
    return v1
.end method

.method private clearClientDeadChannels()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3071
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 3073
    .local v2, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@8
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@f
    move-result-object v7

    #@10
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@20
    .line 3074
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@23
    move-result-object v6

    #@24
    .line 3075
    .local v6, "msg":Landroid/os/Message;
    const v7, 0x22031

    #@27
    iput v7, v6, Landroid/os/Message;->what:I

    #@29
    .line 3076
    iput v8, v6, Landroid/os/Message;->arg1:I

    #@2b
    .line 3077
    iput v8, v6, Landroid/os/Message;->arg2:I

    #@2d
    .line 3078
    const/4 v7, 0x0

    #@2e
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30
    .line 3080
    :try_start_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_0

    #@38
    .line 3081
    :catch_0
    move-exception v3

    #@39
    .line 3083
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 3087
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v5

    #@45
    .local v5, "m$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_1

    #@4b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    check-cast v4, Landroid/os/Messenger;

    #@51
    .line 3088
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    #@54
    goto :goto_1

    #@55
    .line 3070
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 3034
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    #@3
    .line 3035
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    #@6
    .line 3033
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3017
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@4
    move-result-object v0

    #@5
    .line 3018
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@7
    .line 3019
    return-void

    #@8
    .line 3022
    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "servInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@1c
    .line 3023
    .local v1, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1e
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@21
    goto :goto_0

    #@22
    .line 3026
    .end local v1    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@29
    .line 3027
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_2

    #@33
    .line 3029
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@35
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@38
    move-result-object v3

    #@39
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 3016
    :cond_2
    return-void
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2959
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@4
    move-result-object v0

    #@5
    .line 2960
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@7
    .line 2961
    return-void

    #@8
    .line 2964
    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 2965
    return-void

    #@13
    .line 2968
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@1a
    .line 2970
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 2972
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@26
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 2975
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@33
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    if-nez v1, :cond_3

    #@39
    .line 2976
    return-void

    #@3a
    .line 2979
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    #@3d
    .line 2957
    return-void
.end method

.method private clearSupplicantServiceRequest()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2897
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 2899
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    #@15
    .line 2900
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@17
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    .line 2896
    return-void
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    .line 2475
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 2476
    .local v0, "gc":I
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@a
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    #@f
    .line 2477
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@11
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3100
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@d
    .line 3102
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@f
    if-eqz p2, :cond_0

    #@11
    .line 3104
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@13
    .end local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@15
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)V

    #@18
    .line 3105
    .restart local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1a
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 3108
    :cond_0
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 4
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2593
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    const-string/jumbo v2, "p2p_client_list"

    #@6
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2594
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    #@c
    .line 2595
    return-object v3

    #@d
    .line 2597
    :cond_0
    const-string/jumbo v1, " "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2656
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@2
    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    .line 2657
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@8
    .line 2658
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@a
    return-object v1

    #@b
    .line 2661
    :cond_0
    return-object p1
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 10
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 2571
    if-nez p1, :cond_0

    #@3
    return v9

    #@4
    .line 2573
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@6
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    .line 2574
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "group$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_3

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1a
    .line 2575
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@1d
    move-result v4

    #@1e
    .line 2576
    .local v4, "netId":I
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 2577
    .local v5, "p2pClientList":[Ljava/lang/String;
    if-eqz v5, :cond_1

    #@24
    .line 2578
    const/4 v6, 0x0

    #@25
    array-length v7, v5

    #@26
    :goto_0
    if-ge v6, v7, :cond_1

    #@28
    aget-object v0, v5, v6

    #@2a
    .line 2579
    .local v0, "client":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_2

    #@30
    .line 2580
    return v4

    #@31
    .line 2578
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2584
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v4    # "netId":I
    .end local v5    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    return v9
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 2665
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v2

    #@a
    .line 2666
    const-string/jumbo v3, "wifi_p2p_device_name"

    #@d
    .line 2665
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 2667
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@13
    .line 2670
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@15
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v2

    #@1d
    .line 2671
    const-string/jumbo v3, "android_id"

    #@20
    .line 2670
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 2672
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Android_"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const/4 v3, 0x0

    #@31
    const/4 v4, 0x4

    #@32
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    return-object v2

    #@3f
    .line 2674
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleGroupCreationFailure()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2753
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    #@4
    .line 2754
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@6
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@c
    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 2755
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    #@12
    .line 2759
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@14
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@16
    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    #@19
    move-result v0

    #@1a
    .line 2760
    .local v0, "peersChanged":Z
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@1c
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 2761
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@28
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 2762
    const/4 v0, 0x1

    #@31
    .line 2764
    .end local v0    # "peersChanged":Z
    :cond_0
    if-eqz v0, :cond_1

    #@33
    .line 2765
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    #@36
    .line 2768
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@38
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    #@3b
    .line 2769
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3d
    invoke-static {v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@40
    .line 2770
    const v1, 0x22001

    #@43
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@46
    .line 2752
    return-void
.end method

.method private handleGroupRemoved()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 2774
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 2775
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@c
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    #@13
    .line 2789
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@15
    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@17
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@19
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 2793
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@22
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    const/4 v6, 0x3

    #@27
    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    #@2a
    .line 2797
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2c
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2e
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    #@35
    .line 2799
    const/4 v4, 0x0

    #@36
    .line 2802
    .local v4, "peersChanged":Z
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@38
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    #@3b
    move-result-object v5

    #@3c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v1

    #@40
    .local v1, "d$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_2

    #@46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4c
    .line 2803
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@4e
    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_0

    #@54
    const/4 v4, 0x1

    #@55
    goto :goto_2

    #@56
    .line 2778
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "d$iterator":Ljava/util/Iterator;
    .end local v4    # "peersChanged":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@58
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    #@5b
    move-result-object v5

    #@5c
    const v6, 0x30002

    #@5f
    invoke-virtual {v5, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    #@62
    .line 2779
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@64
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->doQuit()V

    #@6b
    .line 2780
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@6d
    invoke-static {v5, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    #@70
    .line 2782
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@72
    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@74
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@76
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    goto :goto_0

    #@7e
    .line 2783
    :catch_0
    move-exception v2

    #@7f
    .line 2784
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "Failed to remove iface from local network "

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@96
    goto/16 :goto_0

    #@98
    .line 2790
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@99
    .line 2791
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v6, "Failed to clear addresses "

    #@a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@b0
    goto/16 :goto_1

    #@b2
    .line 2805
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "d$iterator":Ljava/util/Iterator;
    .restart local v4    # "peersChanged":Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@b4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@b6
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@bd
    move-result v5

    #@be
    if-eqz v5, :cond_3

    #@c0
    const/4 v4, 0x1

    #@c1
    .line 2806
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@c3
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@c5
    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    #@c8
    move-result v5

    #@c9
    if-eqz v5, :cond_4

    #@cb
    const/4 v4, 0x1

    #@cc
    .line 2807
    :cond_4
    if-eqz v4, :cond_5

    #@ce
    .line 2808
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    #@d1
    .line 2811
    :cond_5
    iput-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@d3
    .line 2812
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@d5
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    #@d8
    .line 2813
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@da
    invoke-static {v5, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@dd
    .line 2815
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@df
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@e2
    move-result v5

    #@e3
    if-eqz v5, :cond_6

    #@e5
    .line 2816
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e7
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@ea
    move-result-object v5

    #@eb
    const v6, 0x2300c

    #@ee
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@f1
    .line 2817
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f3
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@f6
    .line 2773
    :cond_6
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2716
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setPersistentReconnect(Z)Z

    #@7
    .line 2717
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@9
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@13
    .line 2718
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@15
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1a
    move-result-object v2

    #@1b
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    #@20
    .line 2720
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "-"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@30
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@33
    move-result-object v3

    #@34
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    #@41
    .line 2721
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@43
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@45
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@48
    move-result-object v2

    #@49
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    #@4b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    #@4e
    .line 2724
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@50
    const-string/jumbo v2, "virtual_push_button physical_display keypad"

    #@53
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    #@56
    .line 2726
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@58
    const-string/jumbo v2, "sta"

    #@5b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    #@5e
    .line 2728
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@60
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@63
    move-result-object v1

    #@64
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@66
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@6c
    .line 2729
    const/4 v1, 0x3

    #@6d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    #@70
    .line 2732
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@72
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    #@79
    .line 2733
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7b
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@7e
    .line 2734
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@80
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pServiceFlush()Z

    #@83
    .line 2735
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@85
    const/4 v2, 0x0

    #@86
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    #@89
    .line 2736
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@8b
    invoke-static {v1, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    .line 2738
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@90
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@97
    move-result-object v1

    #@98
    .line 2739
    const-string/jumbo v2, "wifi_country_code"

    #@9b
    .line 2738
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    .line 2740
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_1

    #@a7
    .line 2744
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get1()Ljava/lang/Boolean;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@ae
    move-result v1

    #@af
    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    #@b2
    .line 2715
    return-void

    #@b3
    .line 2741
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@b5
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b8
    move-result-object v1

    #@b9
    const v2, 0x23010

    #@bc
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@bf
    goto :goto_0
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2463
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 2464
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    return v2

    #@d
    .line 2465
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@f
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_2

    #@17
    return v2

    #@18
    .line 2466
    :cond_2
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method private notifyInvitationReceived()V
    .locals 10

    #@0
    .prologue
    .line 2303
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v4

    #@4
    .line 2304
    .local v4, "r":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@6
    iget-object v6, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@8
    .line 2305
    .local v6, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@d
    move-result-object v7

    #@e
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@11
    move-result-object v7

    #@12
    .line 2306
    const v8, 0x10900ff

    #@15
    const/4 v9, 0x0

    #@16
    .line 2305
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@19
    move-result-object v5

    #@1a
    .line 2308
    .local v5, "textEntryView":Landroid/view/View;
    const v7, 0x102037f

    #@1d
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/view/ViewGroup;

    #@23
    .line 2310
    .local v2, "group":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@25
    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@27
    .line 2309
    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    const v8, 0x10403a6

    #@2e
    invoke-direct {p0, v2, v8, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    #@31
    .line 2312
    const v7, 0x1020409

    #@34
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/widget/EditText;

    #@3a
    .line 2314
    .local v3, "pin":Landroid/widget/EditText;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    #@3c
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3e
    invoke-static {v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@41
    move-result-object v8

    #@42
    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@45
    .line 2315
    const v8, 0x10403a5

    #@48
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    .line 2314
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@53
    move-result-object v7

    #@54
    .line 2317
    const v8, 0x10403a2

    #@57
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    new-instance v9, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;

    #@5d
    invoke-direct {v9, p0, v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    #@60
    .line 2314
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@63
    move-result-object v7

    #@64
    .line 2326
    const v8, 0x10403a3

    #@67
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    new-instance v9, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;

    #@6d
    invoke-direct {v9, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@70
    .line 2314
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@73
    move-result-object v7

    #@74
    .line 2333
    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;

    #@76
    invoke-direct {v8, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@79
    .line 2314
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@80
    move-result-object v1

    #@81
    .line 2343
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    #@83
    packed-switch v7, :pswitch_data_0

    #@86
    .line 2356
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@89
    move-result-object v7

    #@8a
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    #@8c
    and-int/lit8 v7, v7, 0x5

    #@8e
    .line 2357
    const/4 v8, 0x5

    #@8f
    .line 2356
    if-ne v7, v8, :cond_0

    #@91
    .line 2359
    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;

    #@93
    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@96
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    #@99
    .line 2376
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@9c
    move-result-object v7

    #@9d
    const/16 v8, 0x7d3

    #@9f
    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    #@a2
    .line 2377
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@a9
    move-result-object v0

    #@aa
    .line 2378
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x10

    #@ac
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@ae
    .line 2379
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@b1
    move-result-object v7

    #@b2
    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@b5
    .line 2380
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    #@b8
    .line 2302
    return-void

    #@b9
    .line 2346
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    const v7, 0x1020408

    #@bc
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@bf
    move-result-object v7

    #@c0
    const/4 v8, 0x0

    #@c1
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #@c4
    goto :goto_0

    #@c5
    .line 2350
    :pswitch_1
    iget-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@c7
    const v8, 0x10403a9

    #@ca
    invoke-direct {p0, v2, v8, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    #@cd
    goto :goto_0

    #@ce
    .line 2343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2281
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v3

    #@5
    .line 2283
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@7
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@a
    move-result-object v5

    #@b
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@e
    move-result-object v5

    #@f
    .line 2284
    const v6, 0x10900ff

    #@12
    .line 2283
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    .line 2286
    .local v4, "textEntryView":Landroid/view/View;
    const v5, 0x102037f

    #@19
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/view/ViewGroup;

    #@1f
    .line 2287
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    const v6, 0x10403a7

    #@26
    invoke-direct {p0, v2, v6, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    #@29
    .line 2288
    const v5, 0x10403a9

    #@2c
    invoke-direct {p0, v2, v5, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    #@2f
    .line 2290
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #@31
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@33
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@36
    move-result-object v6

    #@37
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@3a
    .line 2291
    const v6, 0x10403a4

    #@3d
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    .line 2290
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@48
    move-result-object v5

    #@49
    .line 2293
    const v6, 0x104000a

    #@4c
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 2290
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@57
    move-result-object v1

    #@58
    .line 2295
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@5b
    move-result-object v5

    #@5c
    const/16 v6, 0x7d3

    #@5e
    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    #@61
    .line 2296
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@68
    move-result-object v0

    #@69
    .line 2297
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x10

    #@6b
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@6d
    .line 2298
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@74
    .line 2299
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    #@77
    .line 2280
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 6

    #@0
    .prologue
    .line 2258
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    .line 2259
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    #@6
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@8
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@f
    .line 2260
    const v4, 0x104039d

    #@12
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 2259
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@19
    move-result-object v3

    #@1a
    .line 2261
    const v4, 0x104039f

    #@1d
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 2259
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@24
    move-result-object v3

    #@25
    .line 2262
    const v4, 0x104000a

    #@28
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    const/4 v5, 0x0

    #@2d
    .line 2259
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@34
    move-result-object v1

    #@35
    .line 2264
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@38
    move-result-object v3

    #@39
    const/16 v4, 0x7d3

    #@3b
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    #@3e
    .line 2265
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@45
    move-result-object v0

    #@46
    .line 2266
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x10

    #@48
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4a
    .line 2267
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@51
    .line 2268
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    #@54
    .line 2257
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2849
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 2850
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@6
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 2851
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    .line 2485
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3
    move-result-object v0

    #@4
    .line 2487
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    #@9
    move-result v4

    #@a
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 2489
    .local v2, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11
    .line 2490
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@13
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 2484
    :goto_0
    return-void

    #@17
    .line 2491
    :catch_0
    move-exception v1

    #@18
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2503
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    .line 2505
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    #@9
    move-result v1

    #@a
    .line 2506
    .local v1, "join":Z
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@c
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@e
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 2509
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@14
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 2514
    const/4 v1, 0x0

    #@1b
    .line 2526
    .end local v1    # "join":Z
    :cond_0
    if-nez v1, :cond_3

    #@1d
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_3

    #@23
    .line 2527
    const-string/jumbo v4, "target device reaches the device limit."

    #@26
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@29
    .line 2528
    return v7

    #@2a
    .line 2515
    .restart local v1    # "join":Z
    :cond_1
    if-eqz v1, :cond_0

    #@2c
    .line 2516
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2e
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@30
    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    move-result v2

    #@34
    .line 2517
    .local v2, "netId":I
    if-ltz v2, :cond_0

    #@36
    .line 2519
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@38
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_2

    #@3e
    .line 2520
    return v7

    #@3f
    .line 2522
    :cond_2
    return v8

    #@40
    .line 2531
    .end local v1    # "join":Z
    .end local v2    # "netId":I
    :cond_3
    if-nez v1, :cond_8

    #@42
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_8

    #@48
    .line 2532
    const/4 v2, -0x2

    #@49
    .line 2533
    .restart local v2    # "netId":I
    iget v4, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@4b
    if-ltz v4, :cond_6

    #@4d
    .line 2534
    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@4f
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@51
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@53
    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_4

    #@5d
    .line 2535
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@5f
    .line 2540
    :cond_4
    :goto_0
    if-gez v2, :cond_5

    #@61
    .line 2541
    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@63
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    #@66
    move-result v2

    #@67
    .line 2544
    :cond_5
    if-ltz v2, :cond_8

    #@69
    .line 2546
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6b
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@6d
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_7

    #@73
    .line 2548
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@75
    .line 2549
    return v8

    #@76
    .line 2538
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@78
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@7a
    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    #@7d
    move-result v2

    #@7e
    goto :goto_0

    #@7f
    .line 2551
    :cond_7
    const-string/jumbo v4, "p2pReinvoke() failed, update networks"

    #@82
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@85
    .line 2552
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get1()Ljava/lang/Boolean;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@8c
    move-result v4

    #@8d
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    #@90
    .line 2553
    return v7

    #@91
    .line 2558
    .end local v2    # "netId":I
    :cond_8
    return v7
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 9
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2608
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 2609
    .local v3, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 2610
    .local v1, "currentClientList":[Ljava/lang/String;
    const/4 v2, 0x0

    #@c
    .line 2611
    .local v2, "isClientRemoved":Z
    if-eqz v1, :cond_1

    #@e
    .line 2612
    array-length v6, v1

    #@f
    move v4, v5

    #@10
    :goto_0
    if-ge v4, v6, :cond_1

    #@12
    aget-object v0, v1, v4

    #@14
    .line 2613
    .local v0, "client":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v7

    #@18
    if-nez v7, :cond_0

    #@1a
    .line 2614
    const-string/jumbo v7, " "

    #@1d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 2615
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 2612
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2617
    :cond_0
    const/4 v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 2621
    .end local v0    # "client":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_2

    #@2e
    if-eqz p3, :cond_2

    #@30
    .line 2624
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@32
    invoke-virtual {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    #@35
    .line 2625
    return v8

    #@36
    .line 2628
    :cond_2
    if-nez v2, :cond_3

    #@38
    .line 2630
    return v5

    #@39
    .line 2634
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_4

    #@3f
    .line 2635
    const-string/jumbo v4, "\"\""

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 2637
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@47
    .line 2638
    const-string/jumbo v5, "p2p_client_list"

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    .line 2637
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@51
    .line 2639
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@53
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@56
    .line 2640
    return v8
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3002
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@4
    move-result-object v0

    #@5
    .line 3003
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@7
    .line 3004
    return-void

    #@8
    .line 3007
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@d
    .line 3009
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@14
    .line 3010
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 3012
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2a
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 3001
    :cond_1
    return-void
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2927
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@4
    move-result-object v0

    #@5
    .line 2928
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    #@7
    .line 2929
    return-void

    #@8
    .line 2934
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 2935
    .local v2, "removed":Z
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v3

    #@12
    if-ge v1, v3, :cond_1

    #@14
    .line 2936
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 2937
    const/4 v2, 0x1

    #@23
    .line 2938
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@2a
    .line 2943
    :cond_1
    if-nez v2, :cond_3

    #@2c
    return-void

    #@2d
    .line 2935
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2945
    :cond_3
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_4

    #@3a
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_4

    #@44
    .line 2947
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@46
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 2950
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@53
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    if-nez v3, :cond_5

    #@59
    .line 2951
    return-void

    #@5a
    .line 2954
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    #@5d
    .line 2926
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 2824
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 2825
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 2826
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 2827
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@d
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@14
    .line 2823
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 2831
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 2832
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 2833
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 2834
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 2835
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@16
    .line 2830
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2839
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 2840
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 2841
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 2842
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    .line 2843
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@16
    .line 2838
    return-void
.end method

.method private resetWifiP2pInfo()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2650
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@3
    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@5
    .line 2651
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@7
    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@9
    .line 2652
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@b
    const/4 v1, 0x0

    #@c
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@e
    .line 2649
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 2194
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2195
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2197
    const-string/jumbo v1, "wifiP2pInfo"

    #@10
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    #@12
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@14
    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 2198
    const-string/jumbo v1, "networkInfo"

    #@1d
    new-instance v2, Landroid/net/NetworkInfo;

    #@1f
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@21
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2b
    .line 2199
    const-string/jumbo v1, "p2pGroupInfo"

    #@2e
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@30
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@32
    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@38
    .line 2200
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3a
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@3d
    move-result-object v1

    #@3e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@40
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@43
    .line 2201
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@45
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@48
    move-result-object v1

    #@49
    .line 2202
    new-instance v2, Landroid/net/NetworkInfo;

    #@4b
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@4d
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@50
    move-result-object v3

    #@51
    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@54
    .line 2201
    const v3, 0x2300b

    #@57
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@5a
    .line 2192
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    #@0
    .prologue
    .line 2165
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@5
    move-result v1

    #@6
    if-ne v1, p1, :cond_0

    #@8
    return-void

    #@9
    .line 2166
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@b
    invoke-static {v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@e
    .line 2170
    new-instance v0, Landroid/content/Intent;

    #@10
    const-string/jumbo v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    #@13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 2171
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 2172
    const-string/jumbo v2, "discoveryState"

    #@1e
    if-eqz p1, :cond_1

    #@20
    .line 2173
    const/4 v1, 0x2

    #@21
    .line 2172
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@24
    .line 2175
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@26
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@29
    move-result-object v1

    #@2a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2c
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2f
    .line 2164
    return-void

    #@30
    .line 2174
    :cond_1
    const/4 v1, 0x1

    #@31
    goto :goto_0
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    #@0
    .prologue
    .line 2207
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2208
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2209
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 2205
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2152
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2153
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2154
    if-eqz p1, :cond_0

    #@f
    .line 2155
    const-string/jumbo v1, "wifi_p2p_state"

    #@12
    .line 2156
    const/4 v2, 0x2

    #@13
    .line 2155
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 2161
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@18
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@21
    .line 2151
    return-void

    #@22
    .line 2158
    :cond_0
    const-string/jumbo v1, "wifi_p2p_state"

    #@25
    .line 2159
    const/4 v2, 0x1

    #@26
    .line 2158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    goto :goto_0
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 2186
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2187
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiP2pDeviceList"

    #@b
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@d
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@f
    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@15
    .line 2188
    const/high16 v1, 0x4000000

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1a
    .line 2189
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1c
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@25
    .line 2185
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3044
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v5

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@1b
    .line 3045
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    #@22
    move-result v6

    #@23
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@29
    .line 3046
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    #@2b
    .line 3047
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@2e
    move-result-object v3

    #@2f
    .line 3048
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    #@32
    iput v5, v3, Landroid/os/Message;->what:I

    #@34
    .line 3049
    iput v7, v3, Landroid/os/Message;->arg1:I

    #@36
    .line 3050
    iput v7, v3, Landroid/os/Message;->arg2:I

    #@38
    .line 3051
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    .line 3053
    :try_start_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 3054
    :catch_0
    move-exception v2

    #@43
    .line 3056
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    #@46
    move-result-object v5

    #@47
    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    #@4a
    .line 3057
    return-void

    #@4b
    .line 3043
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 2179
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2180
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2181
    const-string/jumbo v1, "wifiP2pDevice"

    #@10
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@14
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 2182
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@20
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@23
    move-result-object v1

    #@24
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@26
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@29
    .line 2178
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2678
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "Failed to set device name "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@23
    .line 2682
    return v2

    #@24
    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@26
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@29
    move-result-object v0

    #@2a
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@2c
    .line 2686
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "-"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3c
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3f
    move-result-object v2

    #@40
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    #@4d
    .line 2688
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@4f
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@56
    move-result-object v0

    #@57
    .line 2689
    const-string/jumbo v1, "wifi_p2p_device_name"

    #@5a
    .line 2688
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@5d
    .line 2690
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    #@60
    .line 2691
    const/4 v0, 0x1

    #@61
    return v0
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2697
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2698
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    #@d
    move-result v0

    #@e
    .line 2705
    :goto_0
    if-nez v0, :cond_2

    #@10
    .line 2706
    const-string/jumbo v1, "Failed to set wfd properties"

    #@13
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@16
    .line 2707
    return v3

    #@17
    .line 2701
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@19
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 2702
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@21
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    .local v0, "success":Z
    goto :goto_0

    #@2a
    .line 2701
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    #@2b
    .local v0, "success":Z
    goto :goto_0

    #@2c
    .line 2710
    .end local v0    # "success":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2e
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@31
    move-result-object v1

    #@32
    iput-object p1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@34
    .line 2711
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    #@37
    .line 2712
    return v4
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@5
    .line 2645
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@9
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    #@c
    move-result v1

    #@d
    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@f
    .line 2646
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@11
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@13
    .line 2643
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2213
    const/4 v2, 0x0

    #@1
    .line 2215
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@8
    move-result-object v2

    #@9
    .line 2216
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v4, Landroid/net/LinkAddress;

    #@b
    .line 2217
    const-string/jumbo v5, "192.168.49.1"

    #@e
    .line 2216
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@11
    move-result-object v5

    #@12
    .line 2217
    const/16 v6, 0x18

    #@14
    .line 2216
    invoke-direct {v4, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@17
    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@1a
    .line 2218
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@1d
    .line 2219
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1f
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@21
    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@24
    .line 2221
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@26
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@29
    move-result-object v4

    #@2a
    .line 2222
    const-string/jumbo v5, "connectivity"

    #@2d
    .line 2221
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/net/ConnectivityManager;

    #@33
    .line 2223
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 2224
    .local v3, "tetheringDhcpRanges":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@39
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@3b
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isTetheringStarted()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_0

    #@41
    .line 2226
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@43
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@45
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    #@48
    .line 2228
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@4a
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@4c
    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V

    #@4f
    .line 2229
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@51
    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@53
    invoke-interface {v4, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 2235
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Started Dhcp server on "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@6d
    .line 2212
    return-void

    #@6e
    .line 2230
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v3    # "tetheringDhcpRanges":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@6f
    .line 2231
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v5, "Error configuring interface "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    const-string/jumbo v5, ", :"

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@91
    .line 2232
    return-void
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2240
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    #@8
    .line 2241
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@c
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    array-length v4, v3

    #@11
    :goto_0
    if-ge v2, v4, :cond_1

    #@13
    aget-object v1, v3, v2

    #@15
    .line 2242
    .local v1, "temp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "List all interfaces "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@2c
    .line 2243
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 2244
    const-string/jumbo v2, "Found other tethering interfaces, so keep tethering alive"

    #@35
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 2253
    const-string/jumbo v2, "Stopped Dhcp server"

    #@3b
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@3e
    .line 2245
    return-void

    #@3f
    .line 2241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 2248
    .end local v1    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@44
    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@46
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 2253
    const-string/jumbo v2, "Stopped Dhcp server"

    #@4c
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@4f
    .line 2238
    return-void

    #@50
    .line 2249
    :catch_0
    move-exception v0

    #@51
    .line 2250
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Error stopping Dhcp server"

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    .line 2253
    const-string/jumbo v2, "Stopped Dhcp server"

    #@6b
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@6e
    .line 2251
    return-void

    #@6f
    .line 2252
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@70
    .line 2253
    const-string/jumbo v3, "Stopped Dhcp server"

    #@73
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@76
    .line 2252
    throw v2
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    #@0
    .prologue
    .line 2388
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    #@5
    move-result-object v8

    #@6
    .line 2389
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_0

    #@8
    return-void

    #@9
    .line 2391
    :cond_0
    const/4 v6, 0x0

    #@a
    .line 2392
    .local v6, "isSaveRequired":Z
    const-string/jumbo v13, "\n"

    #@d
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    .line 2393
    .local v7, "lines":[Ljava/lang/String;
    if-nez v7, :cond_1

    #@13
    return-void

    #@14
    .line 2395
    :cond_1
    if-eqz p1, :cond_2

    #@16
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@18
    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    #@1b
    .line 2398
    :cond_2
    const/4 v5, 0x1

    #@1c
    .local v5, "i":I
    :goto_0
    array-length v13, v7

    #@1d
    if-ge v5, v13, :cond_8

    #@1f
    .line 2399
    aget-object v13, v7, v5

    #@21
    const-string/jumbo v14, "\t"

    #@24
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@27
    move-result-object v11

    #@28
    .line 2400
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    #@2a
    array-length v13, v11

    #@2b
    const/4 v14, 0x4

    #@2c
    if-ge v13, v14, :cond_4

    #@2e
    .line 2398
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2404
    :cond_4
    const/4 v10, -0x1

    #@32
    .line 2405
    .local v10, "netId":I
    const/4 v13, 0x1

    #@33
    aget-object v12, v11, v13

    #@35
    .line 2406
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    #@36
    aget-object v0, v11, v13

    #@38
    .line 2407
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    #@39
    aget-object v3, v11, v13

    #@3b
    .line 2409
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    #@3c
    :try_start_0
    aget-object v13, v11, v13

    #@3e
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result v10

    #@42
    .line 2415
    const-string/jumbo v13, "[CURRENT]"

    #@45
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@48
    move-result v13

    #@49
    const/4 v14, -0x1

    #@4a
    if-ne v13, v14, :cond_3

    #@4c
    .line 2418
    const-string/jumbo v13, "[P2P-PERSISTENT]"

    #@4f
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@52
    move-result v13

    #@53
    const/4 v14, -0x1

    #@54
    if-ne v13, v14, :cond_5

    #@56
    .line 2424
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@58
    invoke-virtual {v13, v10}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@5b
    .line 2425
    const/4 v6, 0x1

    #@5c
    .line 2426
    goto :goto_1

    #@5d
    .line 2410
    :catch_0
    move-exception v2

    #@5e
    .line 2411
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    #@61
    goto :goto_1

    #@62
    .line 2429
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@64
    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    #@67
    move-result v13

    #@68
    if-nez v13, :cond_3

    #@6a
    .line 2433
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@6c
    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    #@6f
    .line 2434
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    #@72
    .line 2435
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    #@75
    .line 2436
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@77
    const-string/jumbo v14, "mode"

    #@7a
    invoke-virtual {v13, v10, v14}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    .line 2437
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_6

    #@80
    const-string/jumbo v13, "3"

    #@83
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v13

    #@87
    if-eqz v13, :cond_6

    #@89
    .line 2438
    const/4 v13, 0x1

    #@8a
    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    #@8d
    .line 2440
    :cond_6
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@8f
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@92
    move-result-object v13

    #@93
    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@95
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@98
    move-result v13

    #@99
    if-eqz v13, :cond_7

    #@9b
    .line 2441
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@9d
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a0
    move-result-object v13

    #@a1
    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@a4
    .line 2447
    :goto_2
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@a6
    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@a9
    .line 2448
    const/4 v6, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 2443
    :cond_7
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@ad
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@b0
    .line 2444
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@b2
    .line 2445
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@b5
    goto :goto_2

    #@b6
    .line 2451
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    #@b8
    if-eqz v6, :cond_a

    #@ba
    .line 2452
    :cond_9
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@bc
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@bf
    .line 2453
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    #@c2
    .line 2387
    :cond_a
    return-void
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2868
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    #@4
    .line 2870
    new-instance v4, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 2871
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@b
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    #@23
    .line 2874
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@2b
    move-result v5

    #@2c
    if-ge v2, v5, :cond_0

    #@2e
    .line 2875
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@38
    .line 2876
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    #@3a
    .line 2877
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 2874
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2882
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v2    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@47
    move-result v5

    #@48
    if-nez v5, :cond_3

    #@4a
    .line 2883
    return v9

    #@4b
    .line 2886
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@4d
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@4f
    const-string/jumbo v7, "00:00:00:00:00:00"

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    .line 2887
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@5f
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    if-nez v5, :cond_4

    #@65
    .line 2888
    return v9

    #@66
    .line 2890
    :cond_4
    const/4 v5, 0x1

    #@67
    return v5
.end method

.method private updateThisDevice(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    move-result-object v0

    #@6
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    #@8
    .line 2749
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    #@b
    .line 2747
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2143
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mWifiP2pInfo "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mGroup "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "mSavedPeerConfig "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v1, "mSavedP2pGroup "

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 2148
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@6a
    .line 2142
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2856
    const-string/jumbo v0, "WifiP2pService"

    #@3
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2855
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2861
    const-string/jumbo v0, "WifiP2pService"

    #@3
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2860
    return-void
.end method
