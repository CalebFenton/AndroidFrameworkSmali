.class public Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.super Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IdleWithDeferredRequest;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildRemoteDelete;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateStatus;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildDeleteBase;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteBase;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;,
        Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
    }
.end annotation


# static fields
.field private static final blacklist CMD_GENERAL_BASE:I = 0x12c

.field private static final blacklist CMD_HANDLE_FIRST_CHILD_EXCHANGE:I = 0x12d

.field private static final blacklist CMD_HANDLE_RECEIVED_REQUEST:I = 0x12e

.field private static final blacklist CMD_HANDLE_RECEIVED_RESPONSE:I = 0x12f

.field private static final blacklist CMD_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CREATE_STATUS_CHILD_ERROR_INVALID_MSG:I = 0x1

.field private static final blacklist CREATE_STATUS_CHILD_ERROR_RCV_NOTIFY:I = 0x2

.field private static final blacklist CREATE_STATUS_OK:I = 0x0

.field private static final blacklist SPI_NOT_REGISTERED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ChildSessionStateMachine"


# instance fields
.field blacklist mChildCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

.field blacklist mChildIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

.field blacklist mChildSaRecordSurviving:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

.field final blacklist mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

.field private final blacklist mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

.field final blacklist mClosedAndAwaitResponse:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mCreateChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

.field blacklist mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

.field final blacklist mDeleteChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mDeleteChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mIdleWithDeferredRequest:Lcom/android/internal/net/ipsec/ike/utils/State;

.field blacklist mIkeDhGroup:I

.field private final blacklist mIkeHandler:Landroid/os/Handler;

.field blacklist mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

.field private final blacklist mIkeSessionId:I

.field final blacklist mInitial:Lcom/android/internal/net/ipsec/ike/utils/State;

.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private final blacklist mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

.field blacklist mIsFirstChild:Z

.field final blacklist mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

.field blacklist mLocalAddress:Ljava/net/InetAddress;

.field blacklist mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

.field private final blacklist mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

.field blacklist mLocalTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field final blacklist mMobikeRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mRekeyChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mRekeyChildRemoteCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

.field final blacklist mRekeyChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

.field blacklist mRemoteAddress:Ljava/net/InetAddress;

.field blacklist mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

.field blacklist mRemoteTs:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field blacklist mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

.field blacklist mSkD:[B

.field blacklist mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

.field private final blacklist mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$Cq1CWwmVk2JpOp6bpYmJ9Vzni30(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->lambda$handleChildFatalError$1(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aszH6EcsRdURRZRbrT1ToxR3_iQ(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->lambda$performMigration$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddDhGroupsFromChildSessionParamsIfAbsent(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addDhGroupsFromChildSessionParamsIfAbsent()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildSaLifetimeAlarmSched(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->buildSaLifetimeAlarmSched(I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseAllSaRecords(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeAllSaRecords(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->handleChildFatalError(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreplyErrorNotification(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->replyErrorNotification(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendDeleteIkeRequest(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendDeleteIkeRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCMD_TO_STR()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    .line 151
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const-string v2, "Handle First Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12e

    const-string v2, "Rcv request"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->CMD_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12f

    const-string v2, "Rcv response"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;)V
    .registers 7
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "childSmConfig"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;
    .param p3, "userCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p4, "childSmCallback"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    .line 258
    const-string v0, "ChildSessionStateMachine"

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->userCbExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;-><init>(Ljava/lang/String;Lcom/android/internal/net/ipsec/ike/IkeContext;Ljava/util/concurrent/Executor;)V

    .line 166
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalRequestFactory:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    .line 225
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$KillChildSessionParent;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 227
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 228
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCreateChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 229
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 230
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IdleWithDeferredRequest;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IdleWithDeferredRequest;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdleWithDeferredRequest:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 231
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ClosedAndAwaitResponse;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mClosedAndAwaitResponse:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 232
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 233
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildRemoteDelete;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteChildRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 234
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 235
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mMobikeRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 236
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteCreate;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 237
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalDelete;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 238
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildRemoteDelete;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    .line 260
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ikeSessionId:I

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeSessionId:I

    .line 261
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ikeHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeHandler:Landroid/os/Handler;

    .line 262
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ipSecManager:Landroid/net/IpSecManager;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIpSecManager:Landroid/net/IpSecManager;

    .line 263
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ipSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIpSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    .line 265
    iget-object v0, p2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->sessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 266
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 267
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    .line 269
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCreateChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIdleWithDeferredRequest:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mClosedAndAwaitResponse:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mMobikeRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mKillChildSessionParent:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->addState(Lcom/android/internal/net/ipsec/ike/utils/State;Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->setInitialState(Lcom/android/internal/net/ipsec/ike/utils/State;)V

    .line 285
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .param p1, "x1"    # I

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist addDhGroupsFromChildSessionParamsIfAbsent()Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 7

    .line 1781
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    .line 1782
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    return-object v0

    .line 1785
    :cond_f
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1786
    .local v0, "dhGroupSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;>;"
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/SaProposal;

    .line 1787
    .local v2, "saProposal":Landroid/net/ipsec/ike/SaProposal;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v3, v2}, Landroid/net/ipsec/ike/ChildSaProposal;->isNegotiatedFromExceptDhGroup(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_1e

    .line 1788
    :cond_33
    invoke-virtual {v2}, Landroid/net/ipsec/ike/SaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1789
    .end local v2    # "saProposal":Landroid/net/ipsec/ike/SaProposal;
    goto :goto_1e

    .line 1791
    :cond_3f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 1792
    .local v1, "dhGroups":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1794
    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1795
    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1796
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 1798
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSaProposal;->getEsnTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/net/ipsec/ike/ChildSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V

    .line 1794
    return-object v2
.end method

.method private blacklist buildSaLifetimeAlarmSched(I)Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .registers 19
    .param p1, "remoteSpi"    # I

    .line 1013
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getIntentIkeSmMsg(II)Landroid/os/Message;

    move-result-object v9

    .line 1014
    .local v9, "deleteMsg":Landroid/os/Message;
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getIntentIkeSmMsg(II)Landroid/os/Message;

    move-result-object v2

    .line 1016
    .local v2, "rekeyMsg":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1018
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1020
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getIntentIdentifier(I)Ljava/lang/String;

    move-result-object v4

    .line 1017
    const-string v5, "IkeAlarmReceiver.ACTION_DELETE_CHILD"

    invoke-static {v3, v5, v4, v9}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1022
    .local v8, "deleteSaIntent":Landroid/app/PendingIntent;
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1024
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1026
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getIntentIdentifier(I)Ljava/lang/String;

    move-result-object v4

    .line 1023
    const-string v5, "IkeAlarmReceiver.ACTION_REKEY_CHILD"

    invoke-static {v3, v5, v4, v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1029
    .local v15, "rekeySaIntent":Landroid/app/PendingIntent;
    new-instance v10, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1031
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1033
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSessionParams;->getHardLifetimeMsInternal()J

    move-result-wide v6

    const-string v5, "IkeAlarmReceiver.ACTION_DELETE_CHILD"

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    move-object v4, v10

    new-instance v10, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1037
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1039
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSessionParams;->getSoftLifetimeMsInternal()J

    move-result-wide v13

    const-string v12, "IkeAlarmReceiver.ACTION_REKEY_CHILD"

    move-object/from16 v16, v2

    .end local v2    # "rekeyMsg":Landroid/os/Message;
    .local v16, "rekeyMsg":Landroid/os/Message;
    invoke-direct/range {v10 .. v16}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    invoke-direct {v4, v3, v10}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V

    .line 1029
    return-object v4
.end method

.method private blacklist closeAllSaRecords(Z)V
    .registers 3
    .param p1, "expectSaClosed"    # Z

    .line 761
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeChildSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeChildSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeChildSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 766
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 767
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 768
    return-void
.end method

.method private blacklist closeChildSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V
    .registers 6
    .param p1, "childSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .param p2, "expectSaClosed"    # Z

    .line 771
    if-nez p1, :cond_3

    return-void

    .line 773
    :cond_3
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V

    .line 774
    .local v0, "delRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 776
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 777
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->close()V

    .line 779
    if-nez p2, :cond_1a

    return-void

    .line 781
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildSaRecord with local SPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getLocalSpi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not correctly closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method private blacklist getIntentIdentifier(I)Ljava/lang/String;
    .registers 5
    .param p1, "remoteSpi"    # I

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IkeSessionStateMachine_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ChildSessionStateMachine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIntentIkeSmMsg(II)Landroid/os/Message;
    .registers 7
    .param p1, "localRequestType"    # I
    .param p2, "remoteSpi"    # I

    .line 1005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1006
    .local v0, "spiBundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_KEY_CHILD_REMOTE_SPI"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeHandler:Landroid/os/Handler;

    const/16 v2, 0x13b

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeSessionId:I

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleChildFatalError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Exception;

    .line 788
    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    .line 789
    .local v0, "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    const-string v1, "Child Session fatal error"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeAllSaRecords(Z)V

    .line 793
    new-instance v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Landroid/net/ipsec/ike/exceptions/IkeException;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 800
    return-void
.end method

.method private blacklist isAwaitingCreateResp()Z
    .registers 3

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCreateChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    if-eq v0, v1, :cond_1b

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mMobikeRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    if-eq v0, v1, :cond_1b

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->getCurrentState()Lcom/android/internal/net/ipsec/ike/utils/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 574
    :goto_1c
    return v0
.end method

.method private synthetic blacklist lambda$handleChildFatalError$1(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "ikeException"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 795
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosedWithException(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 796
    return-void
.end method

.method private synthetic blacklist lambda$performMigration$0()V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 489
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getInboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 490
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getOutboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v2

    .line 488
    invoke-interface {v0, v1, v2}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    .line 491
    return-void
.end method

.method private blacklist registerProvisionalChildAndGetSpi(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)I"
        }
    .end annotation

    .line 599
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 600
    const/16 v1, 0x21

    invoke-static {v1, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 603
    .local v0, "saPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 607
    :cond_e
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    iget-wide v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->spi:J

    long-to-int v1, v1

    .line 608
    .local v1, "remoteGenSpi":I
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    invoke-interface {v2, v1, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaCreated(ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 609
    return v1
.end method

.method private blacklist replyErrorNotification(I)V
    .registers 3
    .param p1, "notifyType"    # I

    .line 613
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->replyErrorNotification(I[B)V

    .line 614
    return-void
.end method

.method private blacklist replyErrorNotification(I[B)V
    .registers 8
    .param p1, "notifyType"    # I
    .param p2, "notifyData"    # [B

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 618
    .local v0, "outPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 619
    .local v2, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v1, v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 623
    return-void
.end method

.method private blacklist sendDeleteIkeRequest()V
    .registers 5

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .local v0, "outIkePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 634
    return-void
.end method


# virtual methods
.method public blacklist createChildSession(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;I[B)V
    .registers 8
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p4, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p5, "ikeDh"    # I
    .param p6, "skD"    # [B

    .line 423
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 424
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 425
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 426
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 427
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeDhGroup:I

    .line 428
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIsFirstChild:Z

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(I)V

    .line 432
    return-void
.end method

.method public blacklist deleteChildSession()V
    .registers 2

    .line 441
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(I)V

    .line 442
    return-void
.end method

.method protected blacklist getMetricsSessionType()I
    .registers 2

    .line 2226
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist handleFirstChildExchange(Ljava/util/List;Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;I[B)V
    .registers 12
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "remoteAddress"    # Ljava/net/InetAddress;
    .param p5, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p6, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p7, "ikeDh"    # I
    .param p8, "skD"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Landroid/net/IpSecManager$UdpEncapsulationSocket;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;",
            "I[B)V"
        }
    .end annotation

    .line 389
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 390
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 391
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 392
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 393
    iput p7, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeDhGroup:I

    .line 394
    iput-object p8, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIsFirstChild:Z

    .line 397
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->registerProvisionalChildAndGetSpi(Ljava/util/List;)I

    move-result v0

    .line 398
    .local v0, "spi":I
    new-instance v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;-><init>(Ljava/util/List;Ljava/util/List;I)V

    const/16 v2, 0x12d

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 401
    return-void
.end method

.method public bridge synthetic blacklist killSession()V
    .registers 1

    .line 133
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/AbstractSessionStateMachine;->killSession()V

    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 3

    .line 754
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->closeAllSaRecords(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    invoke-interface {v0, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onProcedureFinished(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUserCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSessionClosed(Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 758
    return-void
.end method

.method public blacklist performMigration(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V
    .registers 9
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 470
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 472
    .local v0, "oldEncapSocket":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 473
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 474
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 476
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    if-ne v0, v1, :cond_48

    .line 477
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 478
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->supportsSameSocketKernelMigration(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 479
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 480
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getInboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 479
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/IpSecManager;->startTunnelModeTransformMigration(Landroid/net/IpSecTransform;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 483
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 484
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getOutboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 483
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/IpSecManager;->startTunnelModeTransformMigration(Landroid/net/IpSecTransform;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 487
    new-instance v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSmCallback:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    invoke-interface {v1, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onProcedureFinished(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    goto :goto_4b

    .line 495
    :cond_48
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->performRekeyMigration(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V

    .line 497
    :goto_4b
    return-void
.end method

.method public blacklist performRekeyMigration(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V
    .registers 5
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 522
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 523
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 524
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 526
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(I)V

    .line 527
    return-void
.end method

.method public blacklist receiveRequest(IILjava/util/List;)V
    .registers 6
    .param p1, "exchangeSubtype"    # I
    .param p2, "exchangeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p3, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;-><init>(IILjava/util/List;)V

    const/16 v1, 0x12e

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 547
    return-void
.end method

.method public blacklist receiveResponse(ILjava/util/List;)V
    .registers 6
    .param p1, "exchangeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p2, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->isAwaitingCreateResp()Z

    move-result v0

    const/16 v1, 0x12f

    if-nez v0, :cond_10

    .line 561
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 567
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->registerProvisionalChildAndGetSpi(Ljava/util/List;)I

    move-result v0

    .line 568
    .local v0, "spi":I
    new-instance v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 571
    return-void
.end method

.method public blacklist rekeyChildSession()V
    .registers 2

    .line 451
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->sendMessage(I)V

    .line 452
    return-void
.end method

.method public blacklist setSkD([B)V
    .registers 2
    .param p1, "skD"    # [B

    .line 588
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mSkD:[B

    .line 589
    return-void
.end method
