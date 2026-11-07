.class public Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.super Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;
.source "IkeSessionStateMachine.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
.implements Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;
.implements Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeEapOutboundMsgWrapper;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeDeleteBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeHandlerBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteResponderBase;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;,
        Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;
    }
.end annotation


# static fields
.field static final blacklist BUNDLE_KEY_CHILD_REMOTE_SPI:Ljava/lang/String; = "BUNDLE_KEY_CHILD_REMOTE_SPI"

.field static final blacklist BUNDLE_KEY_IKE_REMOTE_SPI:Ljava/lang/String; = "BUNDLE_KEY_IKE_REMOTE_SPI"

.field static final blacklist BUSY_WAKE_LOCK_TAG:Ljava/lang/String; = "mBusyWakeLock"

.field static final blacklist CMD_ALARM_FIRED:I = 0x13b

.field static final blacklist CMD_CHILD_PROCEDURE_FINISHED:I = 0x131

.field static final blacklist CMD_EAP_ERRORED:I = 0x137

.field static final blacklist CMD_EAP_FAILED:I = 0x138

.field static final blacklist CMD_EAP_FINISH_EAP_AUTH:I = 0x13a

.field static final blacklist CMD_EAP_OUTBOUND_MSG_READY:I = 0x136

.field static final blacklist CMD_EAP_START_EAP_AUTH:I = 0x135

.field static final blacklist CMD_EXECUTE_LOCAL_REQ:I = 0x133

.field static final blacklist CMD_FORCE_TRANSITION:I = 0x18f

.field private static final blacklist CMD_GENERAL_BASE:I = 0x12c

.field static final blacklist CMD_HANDLE_FIRST_CHILD_NEGOTIATION:I = 0x132

.field static final blacklist CMD_IKE_FATAL_ERROR_FROM_CHILD:I = 0x13e

.field static final blacklist CMD_IKE_LOCAL_REQUEST_BASE:I = 0x190

.field static final blacklist CMD_LOCAL_REQUEST_CREATE_IKE:I = 0x191

.field static final blacklist CMD_LOCAL_REQUEST_DELETE_IKE:I = 0x192

.field static final blacklist CMD_LOCAL_REQUEST_DPD:I = 0x195

.field static final blacklist CMD_LOCAL_REQUEST_INFO:I = 0x194

.field static final blacklist CMD_LOCAL_REQUEST_MOBIKE:I = 0x196

.field static final blacklist CMD_LOCAL_REQUEST_ON_DEMAND_DPD:I = 0x197

.field static final blacklist CMD_LOCAL_REQUEST_REKEY_IKE:I = 0x193

.field static final blacklist CMD_OUTBOUND_CHILD_PAYLOADS_READY:I = 0x130

.field static final blacklist CMD_RECEIVE_IKE_PACKET:I = 0x12d

.field static final blacklist CMD_RECEIVE_PACKET_INVALID_IKE_SPI:I = 0x12e

.field static final blacklist CMD_RECEIVE_REQUEST_FOR_CHILD:I = 0x12f

.field static final blacklist CMD_REQUEST_LIVENESS_CHECK:I = 0x140

.field public static final blacklist CMD_RETRANSMIT:I = 0x134

.field static final blacklist CMD_SEND_KEEPALIVE:I = 0x13c

.field static final blacklist CMD_SET_NETWORK:I = 0x13d

.field static final blacklist CMD_SET_UNDERPINNED_NETWORK:I = 0x13f

.field private static final blacklist CMD_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist CMD_UNDERLYING_NETWORK_DIED_WITH_MOBILITY:I = 0x141

.field static final blacklist CMD_UNDERLYING_NETWORK_UPDATED_WITH_MOBILITY:I = 0x142

.field static final blacklist DEFAULT_FRAGMENT_SIZE:I = 0x500

.field private static final blacklist FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV4:Ljava/net/InetAddress;

.field private static final blacklist FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV6:Ljava/net/InetAddress;

.field static final blacklist TAG:Ljava/lang/String; = "IkeSessionStateMachine"

.field static final blacklist TEMP_FAILURE_RETRY_TIMEOUT_MS:J

.field private static final blacklist sContextToIkeSmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

.field private static final blacklist sIkeSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final blacklist sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

.field final blacklist mChildCbToSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ipsec/ike/ChildSessionCallback;",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

.field final blacklist mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

.field final blacklist mCreateIkeLocalIkeAuthInEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

.field final blacklist mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

.field final blacklist mCreateIkeLocalIkeInit:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

.field blacklist mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field final blacklist mDeleteIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

.field private final blacklist mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

.field final blacklist mDpdIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;

.field final blacklist mDpdOnDemandIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;

.field blacklist mEnabledExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

.field private final blacklist mIke3gppExtensionExchange:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

.field blacklist mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

.field private final blacklist mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

.field blacklist mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

.field blacklist mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

.field blacklist mIkeSaRecordAwaitingLocalDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field blacklist mIkeSaRecordAwaitingRemoteDel:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field blacklist mIkeSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field private final blacklist mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

.field private final blacklist mIkeSessionId:I

.field final blacklist mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

.field private final blacklist mIkeSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

.field final blacklist mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private final blacklist mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

.field blacklist mIsRetransmitSuspended:Z

.field final blacklist mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

.field blacklist mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

.field blacklist mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field private final blacklist mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

.field private final blacklist mLocalSpiToIkeSaRecordMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mMobikeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

.field final blacklist mReceiving:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;

.field final blacklist mRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

.field final blacklist mRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;

.field final blacklist mRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

.field blacklist mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

.field private final blacklist mRemoteSpiToChildSessionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteVendorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field blacklist mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

.field private final blacklist mScheduler:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

.field final blacklist mSimulRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;

.field final blacklist mSimulRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;

.field final blacklist mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

.field final blacklist mSimulRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;

.field private final blacklist mTempFailHandler:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;


# direct methods
.method public static synthetic blacklist $r8$lambda$PJ05VwK576_z_d5npUTCEQGvvZ0(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->lambda$onNonFatalError$3(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S9EL1rR-ktBJF0dwYlgP_SOyhR0(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->lambda$handleIkeFatalError$1(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dKGyGlaCtrdjkiQyVVutc85i-tE(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->lambda$new$0(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ym4L9vqYIAZUvdfBGTBPLjkR55k(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->lambda$onUnderlyingNetworkDied$2(Landroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBusyWakeLock(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeps(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIke3gppExtensionExchange:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkeSessionId(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalSpiToIkeSaRecordMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalSpiToIkeSaRecordMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteSpiToChildSessionMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mScheduler:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempFailHandler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mTempFailHandler:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeAllSaRecords(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdidPeerIncludeNattDetectionPayloads(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->didPeerIncludeNattDetectionPayloads(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIntentIkeSmMsg(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;IJ)Landroid/os/Message;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIkeSmMsg(IJ)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->handleIkeFatalError(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->handleIkeFatalError(Ljava/lang/Exception;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misLocalOrRemoteNatDetected(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->isLocalOrRemoteNatDetected(JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mneedEnableForceUdpEncap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->needEnableForceUdpEncap()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleRetry(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->scheduleRetry(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEncryptedIkePackets(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;[[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkePackets([[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCMD_TO_STR()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smaddNatDetectionPayloadsToList(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJZ)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addNatDetectionPayloadsToList(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetIntentIdentifier(IJ)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIdentifier(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetupAlarmReceiver(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->setupAlarmReceiver(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 240
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "192.0.2.0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV4:Ljava/net/InetAddress;

    .line 243
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "2001:DB8::"

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 244
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV6:Ljava/net/InetAddress;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    .line 254
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    .line 261
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_CHILD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_IKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_DPD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_CHILD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_IKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 283
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->TEMP_FAILURE_RETRY_TIMEOUT_MS:J

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    .line 355
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const-string v2, "Rcv packet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12e

    const-string v2, "Rcv invalid IKE SPI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12f

    const-string v2, "Rcv Child request"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x130

    const-string v2, "Out child payloads ready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x131

    const-string v2, "Child procedure finished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x132

    const-string v2, "Negotiate first Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x133

    const-string v2, "Execute local request"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x134

    const-string v2, "Retransmit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x135

    const-string v2, "Start EAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x136

    const-string v2, "EAP outbound msg ready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x137

    const-string v2, "EAP errored"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x138

    const-string v2, "EAP failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13a

    const-string v2, "Finish EAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13b

    const-string v2, "Alarm Fired"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13d

    const-string v2, "Update underlying Network"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13f

    const-string v2, "Set underpinned Network"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x140

    const-string v2, "Request liveness check"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x141

    const-string v2, "UnderlyingNetwork died with mobility"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x142

    const-string v2, "UnderlyingNetwork updated with mobility"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13e

    const-string v2, "IKE fatal error from Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x191

    const-string v2, "Create IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x192

    const-string v2, "Delete IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x193

    const-string v2, "Rekey IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-string v2, "Info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x195

    const-string v2, "DPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x196

    const-string v2, "Mobility event"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x197

    const-string v2, "On-demand DPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ConnectivityManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;)V
    .registers 30
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p4, "connectMgr"    # Landroid/net/ConnectivityManager;
    .param p5, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p6, "firstChildParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p7, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p8, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p9, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p10, "deps"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    .line 521
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 523
    invoke-virtual {v9}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v12, v7, v8, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newIkeContext(Landroid/os/Looper;Landroid/content/Context;Landroid/net/Network;)Lcom/android/internal/net/ipsec/ike/IkeContext;

    move-result-object v0

    .line 521
    const-string v1, "IkeSessionStateMachine"

    move-object/from16 v13, p7

    invoke-direct {v6, v1, v0, v13}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;-><init>(Ljava/lang/String;Lcom/android/internal/net/ipsec/ike/IkeContext;Ljava/util/concurrent/Executor;)V

    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteVendorIds:Ljava/util/List;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    .line 461
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    .line 463
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    .line 465
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    .line 467
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    .line 469
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mReceiving:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;

    .line 471
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeInit:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    .line 474
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    .line 476
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthInEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    .line 478
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    .line 482
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

    .line 484
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;

    .line 486
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    .line 489
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;

    .line 491
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;

    .line 493
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;

    .line 495
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

    .line 498
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeleteIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

    .line 500
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;

    .line 503
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdOnDemandIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;

    .line 506
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    invoke-direct {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mMobikeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    .line 526
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 527
    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 528
    :cond_cc
    instance-of v0, v10, Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    if-nez v0, :cond_260

    .line 531
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_256

    .line 539
    :cond_d6
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/PowerManager;

    .line 540
    .local v14, "pm":Landroid/os/PowerManager;
    const-string v0, "IkeSessionStateMachinemBusyWakeLock"

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 541
    iget-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 543
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    .line 545
    iput-object v9, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 547
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    invoke-direct {v0, v6, v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mTempFailHandler:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    .line 550
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalSpiToIkeSaRecordMap:Landroid/util/LongSparseArray;

    .line 551
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteSpiToChildSessionMap:Landroid/util/SparseArray;

    .line 553
    move-object/from16 v0, p3

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIpSecManager:Landroid/net/IpSecManager;

    .line 554
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 556
    iput-object v12, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    .line 557
    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newLocalRequestFactory()Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v2

    iput-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 558
    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    iget-object v3, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    .line 562
    move v4, v1

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v5, v2

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    move-object/from16 v16, v3

    iget v3, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    move/from16 v17, v4

    const/16 v4, 0x13b

    move-object/from16 v18, v5

    const/16 v5, 0x13c

    move-object/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;-><init>(Landroid/os/Handler;Landroid/net/ipsec/ike/IkeSessionParams;IIILcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V

    .line 559
    invoke-virtual {v15, v7, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newIkeConnectionController(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 568
    iget-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    .line 569
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 570
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;-><init>(Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    .line 572
    move-object/from16 v0, p8

    iput-object v0, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    .line 573
    const/4 v1, 0x1

    invoke-virtual {v6, v10, v11, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->registerChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;Z)V

    .line 575
    new-instance v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 577
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams;->getIke3gppExtension()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    move-result-object v2

    iget-object v3, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;-><init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V

    iput-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIke3gppExtensionExchange:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    .line 579
    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    iget-object v3, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;-><init>(Landroid/net/ipsec/ike/IkeSessionCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;)V

    iput-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    .line 582
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 583
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 584
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeInit:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 585
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuth:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuth;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 586
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthInEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthInEap;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 587
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeAuthPostEap:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthPostEap;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 588
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 589
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 590
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mReceiving:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 591
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 592
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalCreate;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 593
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 594
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 595
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeRemoteDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSimulRekeyIkeLocalDeleteRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$SimulRekeyIkeLocalDeleteRemoteDelete;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 596
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 597
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeRemoteDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeRemoteDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 598
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeleteIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 599
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 600
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdOnDemandIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 601
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mMobikeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mKillIkeSessionParent:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$KillIkeSessionParent;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 605
    iget-object v1, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 606
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v1

    aget-object v1, v1, v8

    iget v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    .line 607
    .local v1, "peerSelectedDhGroup":I
    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    invoke-direct {v3, v10, v11, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V

    .line 610
    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;

    invoke-virtual {v6, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->setInitialState(Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 613
    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda2;

    invoke-direct {v3, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    iget-object v4, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 618
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;-><init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;Landroid/content/Context;)V

    iput-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mScheduler:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    .line 620
    iget-object v2, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 621
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->start()V

    .line 622
    return-void

    .line 532
    .end local v1    # "peerSelectedDhGroup":I
    .end local v14    # "pm":Landroid/os/PowerManager;
    :cond_256
    move-object/from16 v0, p8

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MOBIKE only supported for S+"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_260
    move-object/from16 v0, p8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transport Mode SAs not supported when MOBIKE is enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 21
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p4, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p5, "firstChildParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p6, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p8, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 634
    const-class v0, Landroid/net/ConnectivityManager;

    .line 638
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    new-instance v11, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    invoke-direct {v11}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;-><init>()V

    .line 634
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ConnectivityManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;)V

    .line 645
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p1, "x1"    # I

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeMessages(I)V

    return-void
.end method

.method private static blacklist addNatDetectionPayloadsToList(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJZ)V
    .registers 20
    .param p1, "localAddr"    # Ljava/net/InetAddress;
    .param p2, "remoteAddr"    # Ljava/net/InetAddress;
    .param p3, "localPort"    # I
    .param p4, "remotePort"    # I
    .param p5, "initIkeSpi"    # J
    .param p7, "respIkeSpi"    # J
    .param p9, "isForceUdpEncapEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "IIJJZ)V"
        }
    .end annotation

    .line 6038
    .local p0, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    move-object v0, p1

    .line 6040
    .local v0, "localAddressToUse":Ljava/net/InetAddress;
    if-eqz p9, :cond_1a

    .line 6041
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    const-string v2, "IkeSessionStateMachine"

    const-string v3, " Faking NAT situation to enforce UDP encapsulation"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6043
    instance-of v1, p2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_15

    .line 6044
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV4:Ljava/net/InetAddress;

    goto :goto_17

    .line 6045
    :cond_15
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->FORCE_ENCAP_FAKE_LOCAL_ADDRESS_IPV6:Ljava/net/InetAddress;

    :goto_17
    move-object v0, v1

    move-object v5, v0

    goto :goto_1b

    .line 6040
    :cond_1a
    move-object v5, v0

    .line 6048
    .end local v0    # "localAddressToUse":Ljava/net/InetAddress;
    .local v5, "localAddressToUse":Ljava/net/InetAddress;
    :goto_1b
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 6051
    move v6, p3

    move-wide v1, p5

    move-wide/from16 v3, p7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->generateNatDetectionData(JJLjava/net/InetAddress;I)[B

    move-result-object v7

    move-object v8, v5

    .end local v5    # "localAddressToUse":Ljava/net/InetAddress;
    .local v8, "localAddressToUse":Ljava/net/InetAddress;
    const/16 v1, 0x4004

    invoke-direct {v0, v1, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 6054
    .local v0, "natdSrcIp":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    new-instance v7, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 6057
    move-object v5, p2

    move v6, p4

    move-wide v1, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->generateNatDetectionData(JJLjava/net/InetAddress;I)[B

    move-result-object v9

    const/16 v1, 0x4005

    invoke-direct {v7, v1, v9}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 6060
    .local v7, "natdDstIp":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6061
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6062
    return-void
.end method

.method private blacklist closeAllSaRecords(Z)V
    .registers 3
    .param p1, "expectSaClosed"    # Z

    .line 1249
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Z)V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Z)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Z)V

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1254
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1255
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRemoteInitNewIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1256
    return-void
.end method

.method private blacklist closeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Z)V
    .registers 6
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "expectSaClosed"    # Z

    .line 1259
    if-nez p1, :cond_3

    return-void

    .line 1261
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 1262
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->close()V

    .line 1264
    if-nez p2, :cond_c

    return-void

    .line 1266
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IkeSaRecord with local SPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1268
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not correctly closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method private blacklist didPeerIncludeNattDetectionPayloads(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z
    .registers 5
    .param p2, "natDestPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 3741
    .local p1, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_a

    .line 3742
    const/4 v0, 0x1

    return v0

    .line 3743
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p2, :cond_14

    .line 3744
    const/4 v0, 0x0

    return v0

    .line 3746
    :cond_14
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Missing source or destination NAT detection notification"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getIntentIdentifier(IJ)Ljava/lang/String;
    .registers 5
    .param p0, "ikeSessionId"    # I
    .param p1, "remoteIkeSpi"    # J

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IkeSessionStateMachine_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIntentIkeSmMsg(IJ)Landroid/os/Message;
    .registers 7
    .param p1, "localRequestType"    # I
    .param p2, "remoteIkeSpi"    # J

    .line 1659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1660
    .local v0, "spiBundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_KEY_IKE_REMOTE_SPI"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1662
    const/16 v1, 0x13b

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleIkeFatalError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 1273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->handleIkeFatalError(Ljava/lang/Exception;Z)V

    .line 1274
    return-void
.end method

.method private blacklist handleIkeFatalError(Ljava/lang/Exception;Z)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "isFromChild"    # Z

    .line 1277
    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    .line 1278
    .local v0, "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IKE Session fatal error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/ipsec/ike/utils/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    const/4 v1, 0x0

    :try_start_23
    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeAllSaRecords(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_39
    .catchall {:try_start_23 .. :try_end_26} :catchall_37

    .line 1288
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1294
    if-nez p2, :cond_33

    .line 1295
    :goto_30
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1298
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 1299
    goto :goto_4a

    .line 1288
    :catchall_37
    move-exception v1

    goto :goto_4b

    .line 1283
    :catch_39
    move-exception v1

    .line 1286
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v2, "Unexpected error in #handleIkeFatalError"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    .line 1288
    .end local v1    # "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1294
    if-nez p2, :cond_33

    .line 1295
    goto :goto_30

    .line 1300
    :goto_4a
    return-void

    .line 1288
    :goto_4b
    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1294
    if-nez p2, :cond_58

    .line 1295
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1298
    :cond_58
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->quitSessionNow()V

    .line 1299
    throw v1
.end method

.method private blacklist hasChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 810
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 811
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 812
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist isLocalOrRemoteNatDetected(JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z
    .registers 15
    .param p1, "initIkeSpi"    # J
    .param p3, "respIkeSpi"    # J
    .param p6, "natDestPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")Z"
        }
    .end annotation

    .line 3758
    .local p5, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 3762
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 3763
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalPort()I

    move-result v6

    .line 3759
    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "initIkeSpi":J
    .end local p3    # "respIkeSpi":J
    .local v1, "initIkeSpi":J
    .local v3, "respIkeSpi":J
    invoke-static/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->generateNatDetectionData(JJLjava/net/InetAddress;I)[B

    move-result-object p1

    .line 3764
    move-wide v0, v1

    move-wide v2, v3

    .end local v1    # "initIkeSpi":J
    .end local v3    # "respIkeSpi":J
    .local v0, "initIkeSpi":J
    .local v2, "respIkeSpi":J
    .local p1, "expectedLocalNatData":[B
    iget-object p2, p6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    .line 3767
    .local p2, "localNatDetected":Z
    iget-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 3771
    invoke-virtual {p4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 3772
    invoke-virtual {p4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemotePort()I

    move-result v5

    .line 3768
    invoke-static/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->generateNatDetectionData(JJLjava/net/InetAddress;I)[B

    move-result-object p4

    .line 3773
    .local p4, "expectedRemoteNatData":[B
    const/4 v4, 0x1

    .line 3774
    .local v4, "remoteNatDetected":Z
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3777
    .local v6, "natPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget-object v7, v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-static {p4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 3778
    const/4 v4, 0x0

    .line 3780
    .end local v6    # "natPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_46
    goto :goto_31

    .line 3782
    :cond_47
    if-nez p2, :cond_55

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->needEnableForceUdpEncap()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 3783
    const-string v5, "there is no actual local NAT, but we have faked it"

    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 3784
    const/4 p2, 0x1

    .line 3787
    :cond_55
    if-nez p2, :cond_5b

    if-eqz v4, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 p3, 0x0

    :cond_5b
    :goto_5b
    return p3
.end method

.method private synthetic blacklist lambda$handleIkeFatalError$1(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "ikeException"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 1290
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1291
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 3
    .param p1, "localReq"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 616
    const/16 v0, 0x133

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method private synthetic blacklist lambda$onNonFatalError$3(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 6263
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnderlyingNetworkDied$2(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 6244
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionCallback:Landroid/net/ipsec/ike/IkeSessionCallback;

    new-instance v1, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    invoke-direct {v1, p1}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    invoke-interface {v0, v1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method

.method private blacklist needEnableForceUdpEncap()Z
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method private static blacklist releaseAlarmReceiver(Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ike"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p2, "ikeSessionId"    # I

    .line 1349
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->unregisterIkeSession(I)V

    .line 1351
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1352
    .local v0, "ikeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1353
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1354
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1355
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :cond_20
    return-void
.end method

.method private blacklist scheduleRetry(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 5
    .param p1, "localRequest"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 974
    iget v0, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    sget-wide v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->RETRY_INTERVAL_MS:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 975
    return-void
.end method

.method private blacklist sendEncryptedIkePackets([[B)V
    .registers 6
    .param p1, "packetList"    # [[B

    .line 1723
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1724
    .local v2, "packet":[B
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->sendIkePacket([B)V

    .line 1723
    .end local v2    # "packet":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1726
    :cond_e
    return-void
.end method

.method private static blacklist setupAlarmReceiver(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V
    .registers 11
    .param p0, "ikeHandler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ike"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p3, "ikeSessionId"    # I

    .line 1330
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1331
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v6, v0

    .line 1333
    .local v6, "flags":I
    sget-object v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    sget-object v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIntentFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    move-object v5, p0

    move-object v1, p1

    .end local p0    # "ikeHandler":Landroid/os/Handler;
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    .local v5, "ikeHandler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1339
    sget-object p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1330
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "ikeHandler":Landroid/os/Handler;
    .end local v6    # "flags":I
    .restart local p0    # "ikeHandler":Landroid/os/Handler;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_27
    move-object v5, p0

    move-object v1, p1

    .line 1341
    .end local p0    # "ikeHandler":Landroid/os/Handler;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "ikeHandler":Landroid/os/Handler;
    :goto_29
    sget-object p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sContextToIkeSmMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1343
    sget-object p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sIkeAlarmReceiver:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;

    invoke-virtual {p0, p3, v5}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->registerIkeSession(ILandroid/os/Handler;)V

    .line 1344
    return-void
.end method


# virtual methods
.method blacklist addIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1072
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalSpiToIkeSaRecordMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->registerIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 1078
    return-void
.end method

.method blacklist buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "messageId"    # I
    .param p3, "errorType"    # I

    .line 1732
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-direct {v0, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    .line 1733
    .local v0, "error":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ILcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V

    .line 1734
    return-void
.end method

.method blacklist buildAndSendNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ILcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V
    .registers 11
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "messageId"    # I
    .param p3, "notifyPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 1740
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    const/4 v0, 0x0

    aput-object p3, v3, v0

    .line 1741
    const/16 v4, 0x25

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .end local p1    # "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p2    # "messageId":I
    .local v2, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .local v6, "messageId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedNotificationMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;IZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object p1

    .line 1748
    .local p1, "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 1749
    return-void
.end method

.method blacklist buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 11
    .param p1, "saRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "payloads"    # [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    .param p3, "isResponse"    # Z
    .param p4, "messageId"    # I

    .line 1768
    const/16 v3, 0x25

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p2    # "payloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    .end local p3    # "isResponse":Z
    .end local p4    # "messageId":I
    .local v1, "saRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .local v2, "payloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    .local v4, "isResponse":Z
    .local v5, "messageId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedNotificationMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;IZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object p1

    return-object p1
.end method

.method blacklist buildEncryptedInformationalMessage([Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 5
    .param p1, "payloads"    # [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    .param p2, "isResponse"    # Z
    .param p3, "messageId"    # I

    .line 1756
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    return-object v0
.end method

.method blacklist buildEncryptedNotificationMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;IZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 16
    .param p1, "saRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "payloads"    # [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    .param p3, "exchangeType"    # I
    .param p4, "isResponse"    # Z
    .param p5, "messageId"    # I

    .line 1781
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 1783
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v1

    .line 1784
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v3

    const/16 v5, 0x2e

    iget-boolean v8, p1, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    move v6, p3

    move v7, p4

    move v9, p5

    .end local p3    # "exchangeType":I
    .end local p4    # "isResponse":Z
    .end local p5    # "messageId":I
    .local v6, "exchangeType":I
    .local v7, "isResponse":Z
    .local v9, "messageId":I
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 1791
    .local v0, "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance p3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, v0, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    return-object p3
.end method

.method blacklist buildSaLifetimeAlarmScheduler(J)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .registers 21
    .param p1, "remoteSpi"    # J

    .line 1667
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/16 v3, 0x192

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIkeSmMsg(IJ)Landroid/os/Message;

    move-result-object v10

    .line 1668
    .local v10, "deleteMsg":Landroid/os/Message;
    const/16 v3, 0x193

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIkeSmMsg(IJ)Landroid/os/Message;

    move-result-object v3

    .line 1670
    .local v3, "rekeyMsg":Landroid/os/Message;
    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1672
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    .line 1674
    invoke-static {v5, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIdentifier(IJ)Ljava/lang/String;

    move-result-object v5

    .line 1671
    const-string v6, "IkeAlarmReceiver.ACTION_DELETE_IKE"

    invoke-static {v4, v6, v5, v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1676
    .local v9, "deleteSaIntent":Landroid/app/PendingIntent;
    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1678
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    .line 1680
    invoke-static {v5, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getIntentIdentifier(IJ)Ljava/lang/String;

    move-result-object v5

    .line 1677
    const-string v6, "IkeAlarmReceiver.ACTION_REKEY_IKE"

    invoke-static {v4, v6, v5, v3}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 1683
    .local v16, "rekeySaIntent":Landroid/app/PendingIntent;
    new-instance v11, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1685
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 1687
    invoke-virtual {v6}, Landroid/net/ipsec/ike/IkeSessionParams;->getHardLifetimeMsInternal()J

    move-result-wide v7

    const-string v6, "IkeAlarmReceiver.ACTION_DELETE_IKE"

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    move-object v5, v11

    new-instance v11, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1691
    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 1693
    invoke-virtual {v6}, Landroid/net/ipsec/ike/IkeSessionParams;->getSoftLifetimeMsInternal()J

    move-result-wide v14

    const-string v13, "IkeAlarmReceiver.ACTION_REKEY_IKE"

    move-object/from16 v17, v3

    .end local v3    # "rekeyMsg":Landroid/os/Message;
    .local v17, "rekeyMsg":Landroid/os/Message;
    invoke-direct/range {v11 .. v17}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    invoke-direct {v5, v4, v11}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    .line 1683
    return-object v5
.end method

.method public blacklist closeChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 5
    .param p1, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 889
    if-eqz p1, :cond_1c

    .line 893
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->hasChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionCallback;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 897
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 899
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getChildLocalRequest(ILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    move-result-object v0

    .line 897
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 901
    return-void

    .line 894
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child Session Callback handle not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child Session Callback must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist closeSession()V
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 907
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(I)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    .line 905
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 908
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6070
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-super {p0, v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6075
    const-string v0, "    "

    .line 6078
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    if-eqz v1, :cond_16

    .line 6079
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1, p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6083
    :cond_16
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    if-eqz v1, :cond_1f

    .line 6084
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6086
    :cond_1f
    return-void
.end method

.method protected blacklist getMetricsSessionType()I
    .registers 2

    .line 6273
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist killSession()V
    .registers 1

    .line 231
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->killSession()V

    return-void
.end method

.method public blacklist onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 6252
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->handleIkeFatalError(Ljava/lang/Exception;)V

    .line 6253
    return-void
.end method

.method public blacklist onFatalError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 6268
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->handleIkeFatalError(Ljava/lang/Exception;)V

    .line 6269
    return-void
.end method

.method public blacklist onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 5
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "ikePacketBytes"    # [B

    .line 6257
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    const/16 v1, 0x12d

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6258
    return-void
.end method

.method public blacklist onLivenessCheckCompleted(IIZ)V
    .registers 5
    .param p1, "elapsedTimeInMillis"    # I
    .param p2, "numberOfOnGoing"    # I
    .param p3, "resultSuccess"    # Z

    .line 6279
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->recordMetricsEvent_LivenssCheckCompletion(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;IIZ)V

    .line 6281
    return-void
.end method

.method public blacklist onNonFatalError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 6263
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 6264
    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 4

    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeAllSaRecords(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 1232
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1235
    .local v2, "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->killSession()V

    .line 1236
    .end local v2    # "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    goto :goto_11

    .line 1237
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_42

    .line 1239
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->tearDown()V

    .line 1240
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    invoke-static {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->releaseAlarmReceiver(Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIke3gppExtensionExchange:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->close()V

    .line 1244
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mBusyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mScheduler:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->releaseAllLocalRequestWakeLocks()V

    .line 1246
    return-void

    .line 1237
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist onUnderlyingNetworkDied(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 6234
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isMobilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6235
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->suspendOnNetworkLossEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6237
    const/16 v0, 0x141

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(I)V

    .line 6243
    :cond_17
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Landroid/net/Network;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 6246
    :cond_20
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->onUnderlyingNetworkDiedWithoutMobility(Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;Landroid/net/Network;)V

    .line 6248
    :goto_27
    return-void
.end method

.method public blacklist onUnderlyingNetworkUpdated()V
    .registers 3

    .line 6221
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->suspendOnNetworkLossEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6223
    const/16 v0, 0x142

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(I)V

    .line 6227
    :cond_f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 6229
    const/16 v1, 0x196

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(I)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    .line 6227
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6230
    return-void
.end method

.method public blacklist openChildSession(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 5
    .param p1, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p2, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 865
    if-eqz p2, :cond_35

    .line 869
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->hasChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionCallback;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 873
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of v0, p1, Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    if-nez v0, :cond_16

    goto :goto_1e

    .line 875
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transport Mode SAs not supported when MOBIKE is enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->registerChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;Z)V

    .line 881
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getChildLocalRequest(ILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    move-result-object v0

    .line 881
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 885
    return-void

    .line 870
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child Session Callback handle already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child Session Callback must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist openSession()V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 859
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(I)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    .line 857
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 860
    return-void
.end method

.method blacklist registerChildSessionCallback(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;Z)V
    .registers 15
    .param p1, "childParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p2, "callbacks"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p3, "isFirstChild"    # Z

    .line 830
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 831
    if-nez p3, :cond_17

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_17

    .line 832
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Request rejected because IKE Session is being closed. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .end local p1    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .end local p2    # "callbacks":Landroid/net/ipsec/ike/ChildSessionCallback;
    .end local p3    # "isFirstChild":Z
    throw v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14

    .line 852
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .restart local p1    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .restart local p2    # "callbacks":Landroid/net/ipsec/ike/ChildSessionCallback;
    .restart local p3    # "isFirstChild":Z
    :catchall_14
    move-exception v0

    move-object v7, p1

    goto :goto_4c

    .line 836
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeps:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;

    iget v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionId:I

    .line 842
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 846
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ipsec"

    .line 847
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/net/IpSecManager;

    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    iget-object v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mUserCbExecutor:Ljava/util/concurrent/Executor;
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_4a

    move-object v7, p1

    .end local p1    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .local v7, "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    :try_start_39
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;-><init>(ILandroid/os/Handler;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;

    invoke-direct {p1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    .line 838
    invoke-virtual {v2, v3, v4, p2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newChildSessionStateMachine(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-result-object p1

    .line 836
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    monitor-exit v1

    .line 853
    return-void

    .line 852
    .end local v7    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .restart local p1    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    :catchall_4a
    move-exception v0

    move-object v7, p1

    .end local p1    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .restart local v7    # "childParams":Landroid/net/ipsec/ike/ChildSessionParams;
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_4e

    throw v0

    :catchall_4e
    move-exception v0

    goto :goto_4c
.end method

.method blacklist removeIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1082
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeConnectionCtrl:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLocalSpiToIkeSaRecordMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1084
    return-void
.end method

.method public blacklist requestLivenessCheck()V
    .registers 3

    .line 970
    const/16 v0, 0x140

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(II)V

    .line 971
    return-void
.end method

.method blacklist sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 9
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 1707
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    .line 1712
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1708
    const/16 v5, 0x500

    move-object v3, p1

    move-object v0, p2

    .end local p1    # "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p2    # "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v0, "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v3, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ZI)[[B

    move-result-object p1

    .line 1714
    .local p1, "packetList":[[B
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkePackets([[B)V

    .line 1716
    iget-object p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-boolean p2, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz p2, :cond_2c

    .line 1717
    nop

    .line 1718
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 1717
    invoke-virtual {v3, p2, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateLastSentRespAllPackets(Ljava/util/List;I)V

    .line 1720
    :cond_2c
    return-void
.end method

.method blacklist sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 3
    .param p1, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 1701
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 1702
    return-void
.end method

.method public blacklist setNetwork(Landroid/net/Network;III)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ipVersion"    # I
    .param p3, "encapType"    # I
    .param p4, "keepaliveDelaySeconds"    # I

    .line 916
    if-eqz p1, :cond_90

    .line 920
    if-eqz p2, :cond_24

    const/4 v0, 0x4

    if-eq p2, v0, :cond_24

    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    goto :goto_24

    .line 923
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IP version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_24
    :goto_24
    const/4 v0, -0x1

    if-eqz p3, :cond_47

    if-eq p3, v0, :cond_47

    const/16 v1, 0x11

    if-ne p3, v1, :cond_2e

    goto :goto_47

    .line 929
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encap type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_47
    :goto_47
    if-eq p4, v0, :cond_5a

    const/16 v0, 0xa

    if-lt p4, v0, :cond_52

    const/16 v0, 0xe10

    if-gt p4, v0, :cond_52

    goto :goto_5a

    .line 935
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NATT keepalive delay value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 939
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_75

    .line 940
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This IKE Session is not able to handle network or address changes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 950
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;-><init>(Landroid/net/Network;III)V

    const/16 v1, 0x13d

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 952
    return-void

    .line 945
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setNetwork() requires this IkeSession to be configured to use caller-specified network instead of default network"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "network must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUnderpinnedNetwork(Landroid/net/Network;)V
    .registers 3
    .param p1, "underpinnedNetwork"    # Landroid/net/Network;

    .line 961
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const/16 v0, 0x13f

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 963
    return-void
.end method
