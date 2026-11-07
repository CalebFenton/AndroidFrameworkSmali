.class public Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;,
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final blacklist FEATURE_DISABLED:I = 0x0

.field public static final blacklist FEATURE_ENABLED:I = 0x1

.field public static final blacklist FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist FEATURE_TYPE_UT_OVER_LTE:I = 0x4

.field public static final blacklist FEATURE_TYPE_UT_OVER_WIFI:I = 0x5

.field public static final blacklist FEATURE_TYPE_VIDEO_OVER_LTE:I = 0x1

.field public static final blacklist FEATURE_TYPE_VIDEO_OVER_WIFI:I = 0x3

.field public static final blacklist FEATURE_TYPE_VOICE_OVER_LTE:I = 0x0

.field public static final blacklist FEATURE_TYPE_VOICE_OVER_WIFI:I = 0x2

.field public static final blacklist FEATURE_UNKNOWN:I = -0x1

.field private static final blacklist REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

.field private final blacklist mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

.field private blacklist mSessionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompatFeature(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertCapabilities(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v2, 0x3

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 64
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 66
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 68
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V
    .registers 5

    .line 289
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 139
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 269
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->initialize(Landroid/content/Context;I)V

    .line 291
    iput-object p3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    return-void
.end method

.method private blacklist convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 7

    .line 489
    array-length p0, p1

    new-array p0, p0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-gt v1, v2, :cond_1b

    .line 491
    array-length v4, p1

    if-ge v1, v4, :cond_1b

    .line 492
    aget v2, p1, v1

    if-ne v2, v1, :cond_13

    .line 493
    aput-boolean v3, p0, v1

    goto :goto_18

    :cond_13
    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 496
    aput-boolean v0, p0, v1

    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 499
    :cond_1b
    new-instance p1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 500
    aget-boolean v0, p0, v0

    const/4 v1, 0x2

    if-nez v0, :cond_29

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_2c

    .line 503
    :cond_29
    invoke-virtual {p1, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 505
    :cond_2c
    aget-boolean v0, p0, v3

    if-nez v0, :cond_35

    const/4 v0, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_38

    .line 508
    :cond_35
    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    :cond_38
    const/4 v0, 0x4

    .line 510
    aget-boolean v1, p0, v0

    if-nez v1, :cond_41

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_44

    .line 513
    :cond_41
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 515
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertCapabilities - capabilities: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MmTelFeatureCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private blacklist convertCapability(II)I
    .registers 5

    .line 0
    const/4 p0, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_10

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_d

    if-eq p1, p0, :cond_c

    goto :goto_1e

    :cond_c
    return p0

    :cond_d
    return v1

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    if-ne p2, v1, :cond_1e

    if-eq p1, v1, :cond_1d

    if-eq p1, v0, :cond_1b

    if-eq p1, p0, :cond_19

    goto :goto_1e

    :cond_19
    const/4 p0, 0x5

    return p0

    :cond_1b
    const/4 p0, 0x3

    return p0

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object p0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xa000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    return-void
.end method

.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 19

    move-object/from16 v1, p0

    .line 325
    const-string v7, "MmTelFeatureCompat"

    if-nez p1, :cond_8

    goto/16 :goto_109

    .line 329
    :cond_8
    :try_start_8
    iget-object v0, v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v8

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_82
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1a} :catch_82

    const-wide/16 v10, 0x7d0

    const-string v12, " radioTech: "

    const-string v13, "changeEnabledCapabilities - cap: "

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-eqz v0, :cond_84

    :try_start_24
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 332
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 333
    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v2

    .line 334
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 335
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 334
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " disabled"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    const/4 v5, 0x0

    invoke-interface {v8, v2, v3, v5, v0}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 353
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_16

    :catch_82
    move-exception v0

    goto :goto_f1

    .line 356
    :cond_84
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 357
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 358
    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v2

    .line 359
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 360
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 359
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enabled"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    invoke-interface {v8, v2, v3, v15, v0}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 378
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_ee} :catch_82
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_ee} :catch_82

    move-object/from16 v1, p0

    goto :goto_8c

    .line 381
    :goto_f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities: Error processing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    :goto_109
    return-void
.end method

.method public whitelist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 390
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOffIms()V

    return-void
.end method

.method public blacklist enableIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOnIms()V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getFeatureState()I
    .registers 2

    .line 418
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getFeatureState()I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 420
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOldConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 3

    .line 476
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOldConfigInterface(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MmTelFeatureCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onFeatureReady()V
    .registers 6

    .line 451
    const-string v0, "onFeatureReady called!"

    const-string v1, "MmTelFeatureCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter-IA;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t start compat feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .registers 3

    .line 436
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 438
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->endSession(I)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    if-eqz v0, :cond_3e

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFeatureRemoved: Couldn\'t end session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MmTelFeatureCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .registers 11

    .line 296
    const-string v1, "MmTelFeatureCompat"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v4

    .line 298
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {v6, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, -0x1

    .line 300
    filled-new-array {v0}, [I

    move-result-object v7

    .line 301
    sget-object v2, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 301
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 304
    :try_start_25
    iget-object p2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;[I)V

    invoke-interface {p2, v4, v5, v2}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_3a

    .line 312
    :catch_35
    const-string p0, "queryCapabilityConfiguration"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_3a
    :try_start_3a
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v6, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_5c

    :catch_42
    move-exception v0

    move-object p0, v0

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryCapabilityConfiguration - error waiting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    const/4 p0, 0x0

    .line 319
    aget p2, v7, p0

    if-ne p2, p1, :cond_62

    goto :goto_63

    :cond_62
    move p1, p0

    :goto_63
    return p1
.end method

.method public whitelist setUiTtyMode(ILandroid/os/Message;)V
    .registers 3

    .line 427
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 429
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
