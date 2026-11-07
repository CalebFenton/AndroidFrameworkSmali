.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsDeregistrationReason;,
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field public static final blacklist REASON_ALLOWED_NETWORK_TYPES_CHANGED:I = 0x3

.field public static final blacklist REASON_HANDOVER_FAILED:I = 0x6

.field public static final blacklist REASON_NON_IMS_CAPABLE_NETWORK:I = 0x4

.field public static final blacklist REASON_RADIO_POWER_OFF:I = 0x5

.field public static final blacklist REASON_SIM_REFRESH:I = 0x2

.field public static final blacklist REASON_SIM_REMOVED:I = 0x1

.field public static final blacklist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VOPS_NOT_SUPPORTED:I = 0x7

.field private static final greylist-max-o REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final whitelist REGISTRATION_TECH_3G:I = 0x4

.field public static final whitelist REGISTRATION_TECH_CROSS_SIM:I = 0x2

.field public static final whitelist REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final whitelist REGISTRATION_TECH_LTE:I = 0x0

.field public static final blacklist REGISTRATION_TECH_MAX:I = 0x5

.field public static final whitelist REGISTRATION_TECH_NONE:I = -0x1

.field public static final whitelist REGISTRATION_TECH_NR:I = 0x3


# instance fields
.field private final greylist-max-o mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mEmergencyLastDisconnectRadioTech:I

.field private blacklist mEmergencyLastDisconnectSuggestedAction:I

.field private blacklist mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private blacklist mEmergencyRegistrationState:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mLastDisconnectRadioTech:I

.field private blacklist mLastDisconnectSuggestedAction:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private greylist-max-o mRegistrationState:I

.field private blacklist mUris:[Landroid/net/Uri;

.field private blacklist mUrisSet:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BV9oU03g3HLb6DKB2_LJ-u6UnBM(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onSubscriberAssociatedUriChanged$5([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 329
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 331
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 339
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 341
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 342
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 345
    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 346
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 347
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 351
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 352
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 196
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 329
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 331
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 339
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 341
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 342
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 345
    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 346
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 347
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 351
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 352
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 208
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 209
    return-void
.end method

.method private blacklist addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 381
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    .line 382
    return-void
.end method

.method private greylist-max-o addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    .line 368
    return-void
.end method

.method private blacklist broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V
    .registers 5
    .param p2, "isEmergency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;Z)V"
        }
    .end annotation

    .line 766
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/telephony/ims/aidl/IImsRegistrationCallback;>;"
    if-eqz p2, :cond_f

    .line 767
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 768
    :try_start_5
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 769
    monitor-exit v0

    goto :goto_18

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 771
    :cond_f
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 772
    :try_start_12
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 773
    monitor-exit v0

    .line 775
    :goto_18
    return-void

    .line 773
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private blacklist isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .registers 4
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 749
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 750
    return v0

    .line 752
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method static synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 7
    .param p0, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "suggestedAction"    # I
    .param p2, "imsRadioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 615
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 618
    goto :goto_1d

    .line 616
    :catch_4
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDeregistered() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method static synthetic blacklist lambda$onDeregistered$3(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 8
    .param p0, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "suggestedAction"    # I
    .param p2, "imsRadioTech"    # I
    .param p3, "details"    # Landroid/telephony/ims/SipDetails;
    .param p4, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 678
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 681
    goto :goto_1d

    .line 679
    :catch_4
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDeregistered() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method static synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p0, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 482
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 485
    goto :goto_1d

    .line 483
    :catch_4
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onRegistered(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method static synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p0, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 516
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 519
    goto :goto_1d

    .line 517
    :catch_4
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onRegistering(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private synthetic blacklist lambda$onSubscriberAssociatedUriChanged$5([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 745
    invoke-direct {p0, p2, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTechnologyChangeFailed$4(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .param p0, "imsRadioTech"    # I
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 724
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 727
    goto :goto_1d

    .line 725
    :catch_4
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onTechnologyChangeFailed() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private blacklist onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 779
    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 782
    goto :goto_1d

    .line 780
    :catch_4
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private blacklist removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 385
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 386
    return-void
.end method

.method private greylist-max-o removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 375
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 376
    return-void
.end method

.method private blacklist updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V
    .registers 11
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "isEmergencyCallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    if-eqz p2, :cond_8

    :try_start_5
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    goto :goto_a

    :cond_8
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 863
    .local v1, "state":I
    :goto_a
    if-eqz p2, :cond_f

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    goto :goto_11

    .line 864
    :cond_f
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    :goto_11
    nop

    .line 865
    .local v2, "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    if-eqz p2, :cond_17

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_19

    .line 866
    :cond_17
    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    :goto_19
    nop

    .line 867
    .local v3, "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz p2, :cond_1f

    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    goto :goto_21

    .line 868
    :cond_1f
    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    :goto_21
    nop

    .line 869
    .local v4, "suggestedAction":I
    if-eqz p2, :cond_27

    iget v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_29

    .line 870
    :cond_27
    iget v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    :goto_29
    nop

    .line 871
    .local v5, "imsDisconnectRadioTech":I
    iget-boolean v6, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 872
    .local v6, "urisSet":Z
    iget-object v7, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 873
    .local v7, "uris":[Landroid/net/Uri;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_45

    .line 874
    packed-switch v1, :pswitch_data_48

    goto :goto_3f

    .line 884
    :pswitch_33
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 885
    goto :goto_3f

    .line 880
    :pswitch_37
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 881
    goto :goto_3f

    .line 876
    :pswitch_3b
    invoke-interface {p1, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 877
    nop

    .line 892
    :goto_3f
    if-eqz v6, :cond_44

    .line 893
    invoke-direct {p0, p1, v7}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    .line 895
    :cond_44
    return-void

    .line 873
    .end local v1    # "state":I
    .end local v2    # "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    .end local v3    # "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "suggestedAction":I
    .end local v5    # "imsDisconnectRadioTech":I
    .end local v6    # "urisSet":Z
    .end local v7    # "uris":[Landroid/net/Uri;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_37
        :pswitch_33
    .end packed-switch
.end method

.method private blacklist updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 829
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 832
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 834
    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 835
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    .line 834
    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 837
    if-eqz p1, :cond_1f

    .line 838
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 839
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 840
    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_2e

    .line 842
    :cond_1f
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 845
    :goto_2e
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 808
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 811
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 813
    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 815
    if-eqz p1, :cond_1f

    .line 816
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 817
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 818
    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    goto :goto_2e

    .line 820
    :cond_1f
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 823
    :goto_2e
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 5
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p2, "newState"    # I

    .line 796
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 798
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 799
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 800
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 801
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 802
    monitor-exit v0

    .line 803
    return-void

    .line 802
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 5
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p2, "newState"    # I

    .line 786
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 788
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 789
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 790
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 791
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 792
    monitor-exit v0

    .line 793
    return-void

    .line 792
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public final blacklist clearRegistrationCache()V
    .registers 3

    .line 915
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 917
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 918
    monitor-exit v0

    .line 919
    return-void

    .line 918
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 543
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 544
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_1c

    .line 571
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 572
    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 573
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 574
    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p3, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_25

    .line 575
    :cond_1c
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    :goto_25
    nop

    .line 576
    .local v0, "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 577
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 673
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 675
    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 676
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p2, p3, p4}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 683
    return-void
.end method

.method public final blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 603
    invoke-direct {p0, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 604
    .local v0, "isEmergency":Z
    invoke-virtual {p3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v1

    .line 605
    .local v1, "imsRadioTech":I
    if-eqz v0, :cond_e

    .line 606
    invoke-direct {p0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V

    goto :goto_11

    .line 608
    :cond_e
    invoke-direct {p0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 611
    :goto_11
    if-eqz p1, :cond_15

    move-object v2, p1

    goto :goto_1a

    :cond_15
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 613
    .local v2, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1a
    new-instance v3, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-direct {p0, v3, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 620
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 644
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    .line 646
    return-void
.end method

.method public final whitelist onRegistered(I)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 463
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 464
    return-void
.end method

.method public final whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 474
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 475
    .local v0, "isEmergency":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_b

    .line 476
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_e

    .line 478
    :cond_b
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 480
    :goto_e
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 487
    return-void
.end method

.method public final whitelist onRegistering(I)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 497
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 498
    return-void
.end method

.method public final whitelist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 508
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 509
    .local v0, "isEmergency":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 510
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_e

    .line 512
    :cond_b
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 514
    :goto_e
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 521
    return-void
.end method

.method public final whitelist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 4
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 741
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 743
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 744
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 745
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 746
    return-void

    .line 744
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 697
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_1c

    .line 698
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 699
    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 700
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 701
    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_25

    .line 702
    :cond_1c
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    :goto_25
    nop

    .line 703
    .local v0, "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p0, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 704
    return-void
.end method

.method public final blacklist onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 7
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 719
    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 720
    .local v0, "isEmergency":Z
    invoke-virtual {p2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v1

    .line 721
    .local v1, "imsRadioTech":I
    if-eqz p1, :cond_c

    move-object v2, p1

    goto :goto_11

    :cond_c
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 722
    .local v2, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    new-instance v3, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v3, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 729
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 904
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 905
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 907
    :cond_6
    return-void
.end method

.method public blacklist triggerDeregistration(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 453
    return-void
.end method

.method public whitelist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .registers 3
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 439
    return-void
.end method

.method public whitelist triggerSipDelegateDeregistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 418
    return-void
.end method

.method public whitelist updateSipDelegateRegistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 400
    return-void
.end method
