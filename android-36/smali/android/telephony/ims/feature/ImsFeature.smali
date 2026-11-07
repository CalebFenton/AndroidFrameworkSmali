.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$Capabilities;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;,
        Landroid/telephony/ims/feature/ImsFeature$ImsCapabilityError;,
        Landroid/telephony/ims/feature/ImsFeature$ImsState;,
        Landroid/telephony/ims/feature/ImsFeature$FeatureType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_ERROR_GENERIC:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_EMERGENCY_MMTEL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_INVALID:I = -0x1

.field public static final blacklist FEATURE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_MAX:I = 0x3

.field public static final whitelist FEATURE_MMTEL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_RCS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final whitelist STATE_INITIALIZING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_UNAVAILABLE:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field protected greylist-max-o mContext:Landroid/content/Context;

.field protected final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mSlotId:I

.field private greylist-max-o mState:I

.field private final blacklist mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 87
    nop

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 87
    const-string v2, "EMERGENCY_MMTEL"

    const-string v4, "MMTEL"

    const-string v6, "RCS"

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 146
    const-string v2, "UNAVAILABLE"

    const-string v4, "INITIALIZING"

    const-string v6, "READY"

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    .line 326
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 329
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 330
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 332
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method

.method static synthetic blacklist lambda$notifyCapabilitiesStatusChanged$1(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p0, "caps"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 505
    const-string v0, "ImsFeature"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsFeature notifyCapabilitiesStatusChanged Capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    .line 511
    goto :goto_37

    .line 508
    :catch_20
    move-exception v1

    .line 509
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyCapabilitiesStatusChanged() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method static synthetic blacklist lambda$notifyFeatureState$0(ILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5
    .param p0, "state"    # I
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 423
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 427
    goto :goto_1d

    .line 424
    :catch_4
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyFeatureState() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private greylist-max-o notifyFeatureState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 420
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 429
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public final greylist-max-o addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 436
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 439
    :try_start_5
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 442
    goto :goto_2c

    .line 440
    :catch_f
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCapabilityCallback: error accessing callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public greylist-max-o addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_14

    .line 396
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 398
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 399
    monitor-exit v0

    .line 402
    goto :goto_31

    .line 399
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    .end local p0    # "this":Landroid/telephony/ims/feature/ImsFeature;
    .end local p1    # "c":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_start_13
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_14

    .line 400
    .restart local p0    # "this":Landroid/telephony/ims/feature/ImsFeature;
    .restart local p1    # "c":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :catch_14
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public abstract whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end method

.method protected abstract greylist-max-o getBinder()Landroid/os/IInterface;
.end method

.method public whitelist getFeatureState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    monitor-exit v0

    return v1

    .line 363
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist getSlotIndex()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 351
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return v0
.end method

.method public greylist-max-o initialize(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 338
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 339
    iput p2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 340
    return-void
.end method

.method protected final greylist-max-o notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 5
    .param p1, "caps"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 498
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 500
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 502
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v1

    .line 503
    :try_start_d
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v0

    .line 500
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public abstract whitelist onFeatureReady()V
.end method

.method public abstract whitelist onFeatureRemoved()V
.end method

.method public abstract blacklist queryCapabilityConfiguration(II)Z
.end method

.method final blacklist queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 455
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityConfiguration(II)Z

    move-result v0

    .line 457
    .local v0, "enabled":Z
    if-eqz p3, :cond_14

    .line 458
    :try_start_6
    invoke-interface {p3, p1, p2, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onQueryCapabilityConfiguration(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_14

    .line 460
    :catch_a
    move-exception v1

    .line 461
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsFeature"

    const-string/jumbo v3, "queryCapabilityConfigurationInternal called on dead binder!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 462
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    nop

    .line 463
    :goto_15
    return-void
.end method

.method public greylist-max-o queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 3

    .line 471
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 473
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final greylist-max-o removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 449
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 450
    return-void
.end method

.method public greylist-max-o removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 411
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 412
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 413
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final greylist-max-o requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 483
    if-eqz p1, :cond_b

    .line 487
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-direct {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;-><init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/feature/ImsFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    .line 488
    return-void

    .line 484
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsFeature#requestChangeEnabledCapabilities called with invalid params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setFeatureState(I)V
    .registers 5
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "isNotify":Z
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_4
    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v2, p1, :cond_b

    .line 378
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 382
    if-eqz v0, :cond_11

    .line 383
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    .line 385
    :cond_11
    return-void

    .line 381
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v2
.end method
