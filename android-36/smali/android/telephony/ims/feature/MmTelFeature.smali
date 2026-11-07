.class public Landroid/telephony/ims/feature/MmTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficDirection;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficType;,
        Landroid/telephony/ims/feature/MmTelFeature$EpsFallbackReason;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsAudioHandler;,
        Landroid/telephony/ims/feature/MmTelFeature$ProcessCallResult;,
        Landroid/telephony/ims/feature/MmTelFeature$Listener;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_HANDLER_ANDROID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_HANDLER_BASEBAND:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EPS_FALLBACK_REASON_INVALID:I = -0x1

.field public static final whitelist EPS_FALLBACK_REASON_NO_NETWORK_RESPONSE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EPS_FALLBACK_REASON_NO_NETWORK_TRIGGER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_USSD:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_USSD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_DIRECTION_INCOMING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_DIRECTION_OUTGOING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_EMERGENCY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_EMERGENCY_SMS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IMS_TRAFFIC_TYPE_NONE:I = -0x1

.field public static final whitelist IMS_TRAFFIC_TYPE_REGISTRATION:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_SMS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_UT_XCAP:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_VIDEO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IMS_TRAFFIC_TYPE_VOICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MmTelFeature"

.field public static final whitelist PROCESS_CALL_CSFB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CALL_IMS:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

.field private blacklist mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

.field private blacklist mTrafficCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telephony/ims/feature/ImsTrafficSessionCallback;",
            "Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsReport(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monMemoryAvailable(Landroid/telephony/ims/feature/MmTelFeature;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->onMemoryAvailable(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onSmsReady()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telephony/ims/feature/MmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    .line 118
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 103
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 114
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    .line 118
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 115
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 116
    return-void
.end method

.method private greylist-max-o acknowledgeSms(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1868
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 1869
    return-void
.end method

.method private blacklist acknowledgeSms(III[B)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 1873
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III[B)V

    .line 1874
    return-void
.end method

.method private greylist-max-o acknowledgeSmsReport(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1878
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 1879
    return-void
.end method

.method private blacklist getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;
    .registers 3

    .line 1100
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    monitor-exit v0

    return-object v1

    .line 1102
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private greylist-max-o getSmsFormat()Ljava/lang/String;
    .registers 2

    .line 1899
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onMemoryAvailable(I)V
    .registers 3
    .param p1, "token"    # I

    .line 1863
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailable(I)V

    .line 1864
    return-void
.end method

.method private greylist-max-o onSmsReady()V
    .registers 2

    .line 1882
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReady()V

    .line 1883
    return-void
.end method

.method private greylist-max-o sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 1859
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .local v1, "token":I
    .local v2, "messageRef":I
    .local v3, "format":Ljava/lang/String;
    .local v4, "smsc":Ljava/lang/String;
    .local v5, "isRetry":Z
    .local v6, "pdu":[B
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 1860
    return-void
.end method

.method private greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 1087
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 1089
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    if-eqz v1, :cond_c

    .line 1090
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onFeatureReady()V

    .line 1092
    :cond_c
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private greylist-max-o setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 1854
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 1855
    return-void
.end method


# virtual methods
.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 3
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1506
    return-void
.end method

.method public whitelist changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .line 1605
    .local p1, "extensionTypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    return-void
.end method

.method public whitelist clearMediaThreshold(I)V
    .registers 4
    .param p1, "mediaSessionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    return-void
.end method

.method public whitelist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1586
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1632
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1612
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 1613
    .local v0, "s":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    if-eqz v0, :cond_10

    .line 1614
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1615
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    return-object v1

    .line 1617
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    .line 1927
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0
.end method

.method public whitelist getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1725
    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    return-object v0
.end method

.method protected greylist-max-o getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 1672
    .local v0, "ecbmImpl":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_10

    .line 1673
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1674
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    .line 1676
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .registers 4

    .line 1697
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1698
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    if-nez v1, :cond_14

    .line 1699
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    .line 1700
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1702
    :cond_14
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    monitor-exit v0

    return-object v1

    .line 1703
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1736
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 1685
    .local v0, "multiendpointImpl":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_10

    .line 1686
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1687
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 1689
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1895
    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1714
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    return-object v0
.end method

.method protected greylist-max-o getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 1659
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_10

    .line 1660
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1661
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    return-object v1

    .line 1663
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist modifyImsTrafficSession(ILandroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 7
    .param p1, "accessNetworkType"    # I
    .param p2, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1423
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1424
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_28

    .line 1427
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1428
    .local v1, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-eqz v1, :cond_20

    .line 1433
    :try_start_10
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onModifyImsTrafficSession(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_19

    .line 1436
    nop

    .line 1437
    return-void

    .line 1434
    :catch_19
    move-exception v2

    .line 1435
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1430
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1425
    .end local v1    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1133
    if-eqz p1, :cond_6

    .line 1136
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 1137
    return-void

    .line 1134
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmTelCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/ImsCallSessionListener;
    .registers 8
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1209
    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    if-eqz p3, :cond_38

    .line 1213
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1214
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_30

    .line 1218
    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1219
    nop

    .line 1220
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    .line 1221
    .local v1, "isl":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    if-eqz v1, :cond_27

    .line 1222
    new-instance v2, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 1223
    .local v2, "iCSL":Landroid/telephony/ims/ImsCallSessionListener;
    iget-object v3, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_29

    .line 1224
    return-object v2

    .line 1226
    .end local v2    # "iCSL":Landroid/telephony/ims/ImsCallSessionListener;
    :cond_27
    const/4 v2, 0x0

    return-object v2

    .line 1228
    .end local v1    # "isl":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :catch_29
    move-exception v1

    .line 1229
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1215
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase, callId, and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1178
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 1182
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1183
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_20

    .line 1187
    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1188
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_19

    .line 1191
    nop

    .line 1192
    return-void

    .line 1189
    :catch_19
    move-exception v1

    .line 1190
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1264
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1265
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_13

    .line 1269
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v0, p1, v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 1272
    nop

    .line 1273
    return-void

    .line 1270
    :catch_c
    move-exception v1

    .line 1271
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1266
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist notifyMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 5
    .param p1, "status"    # Landroid/telephony/ims/MediaQualityStatus;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1149
    if-eqz p1, :cond_34

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMediaQualityStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1155
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_2c

    .line 1159
    :try_start_20
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 1162
    nop

    .line 1163
    return-void

    .line 1160
    :catch_25
    move-exception v1

    .line 1161
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1156
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaQualityStatus must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1244
    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 1248
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1249
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_16

    .line 1253
    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 1256
    nop

    .line 1257
    return-void

    .line 1254
    :catch_f
    move-exception v1

    .line 1255
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1250
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1245
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallProfile and ImsReasonInfo must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist notifySrvccCanceled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1851
    return-void
.end method

.method public whitelist notifySrvccCompleted()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1813
    return-void
.end method

.method public whitelist notifySrvccFailed()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1831
    return-void
.end method

.method public whitelist notifySrvccStarted(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;>;)V"
        }
    .end annotation

    .line 1798
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/telephony/ims/SrvccCall;>;>;"
    return-void
.end method

.method public final whitelist notifyVoiceMessageCountUpdate(I)V
    .registers 5
    .param p1, "count"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1282
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1283
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1287
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onVoiceMessageCountUpdate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1290
    nop

    .line 1291
    return-void

    .line 1288
    :catch_b
    move-exception v1

    .line 1289
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1284
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist onFeatureReady()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1920
    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1910
    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1485
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1118
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-object v0
.end method

.method public whitelist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 4
    .param p1, "mediaSessionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryMediaQualityStatus is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist setCallAudioHandler(I)V
    .registers 5
    .param p1, "imsAudioHandler"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1304
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1305
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1309
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onAudioModeIsVoipChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1312
    nop

    .line 1313
    return-void

    .line 1310
    :catch_b
    move-exception v1

    .line 1311
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1937
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 1938
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1940
    :cond_6
    return-void
.end method

.method public whitelist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 5
    .param p1, "mediaSessionType"    # I
    .param p2, "mediaThreshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void
.end method

.method public whitelist setTerminalBasedCallWaitingStatus(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1780
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x2

    const-string v2, "Not implemented on device."

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public whitelist setUiTtyMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1764
    return-void
.end method

.method public whitelist shouldProcessCall([Ljava/lang/String;)I
    .registers 3
    .param p1, "numbers"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1650
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist startImsTrafficSession(IIILjava/util/concurrent/Executor;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 14
    .param p1, "trafficType"    # I
    .param p2, "accessNetworkType"    # I
    .param p3, "trafficDirection"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1379
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v1

    .line 1380
    .local v1, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v1, :cond_40

    .line 1384
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1385
    .local v0, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-nez v0, :cond_1e

    .line 1386
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p5, v3}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/MmTelFeature-IA;)V

    move-object v0, v2

    .line 1387
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    goto :goto_1f

    .line 1385
    :cond_1e
    move-object v7, v0

    .line 1390
    .end local v0    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    .local v7, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :goto_1f
    :try_start_1f
    invoke-virtual {v7, p4}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->update(Ljava/util/concurrent/Executor;)V

    .line 1391
    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    .line 1393
    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getCallbackBinder()Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    move-result-object v6
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_35

    .line 1391
    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "trafficType":I
    .end local p2    # "accessNetworkType":I
    .end local p3    # "trafficDirection":I
    .local v3, "trafficType":I
    .local v4, "accessNetworkType":I
    .local v5, "trafficDirection":I
    :try_start_2d
    invoke-interface/range {v1 .. v6}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_32

    .line 1396
    nop

    .line 1397
    return-void

    .line 1394
    :catch_32
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .end local v3    # "trafficType":I
    .end local v4    # "accessNetworkType":I
    .end local v5    # "trafficDirection":I
    .restart local p1    # "trafficType":I
    .restart local p2    # "accessNetworkType":I
    .restart local p3    # "trafficDirection":I
    :catch_35
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .line 1395
    .end local p2    # "accessNetworkType":I
    .end local p3    # "trafficDirection":I
    .restart local v3    # "trafficType":I
    .restart local v4    # "accessNetworkType":I
    .restart local v5    # "trafficDirection":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3a
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1381
    .end local v3    # "trafficType":I
    .end local v4    # "accessNetworkType":I
    .end local v5    # "trafficDirection":I
    .end local v7    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    .local p1, "trafficType":I
    .restart local p2    # "accessNetworkType":I
    .restart local p3    # "trafficDirection":I
    :cond_40
    move v3, p1

    move v4, p2

    .end local p1    # "trafficType":I
    .end local p2    # "accessNetworkType":I
    .restart local v3    # "trafficType":I
    .restart local v4    # "accessNetworkType":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Session is not available."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist stopImsTrafficSession(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1453
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1454
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_30

    .line 1457
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    .line 1458
    .local v1, "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    if-eqz v1, :cond_28

    .line 1463
    :try_start_10
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStopImsTrafficSession(I)V

    .line 1464
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->reset()V

    .line 1465
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    .line 1468
    nop

    .line 1469
    return-void

    .line 1466
    :catch_21
    move-exception v2

    .line 1467
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1460
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1455
    .end local v1    # "callbackWrapper":Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist triggerEpsFallback(I)V
    .registers 5
    .param p1, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1324
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 1325
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_12

    .line 1329
    :try_start_6
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onTriggerEpsFallback(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1332
    nop

    .line 1333
    return-void

    .line 1330
    :catch_b
    move-exception v1

    .line 1331
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1326
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
