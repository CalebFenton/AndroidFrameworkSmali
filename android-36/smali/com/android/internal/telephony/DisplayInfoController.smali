.class public Lcom/android/internal/telephony/DisplayInfoController;
.super Landroid/os/Handler;
.source "DisplayInfoController.java"


# static fields
.field private static final blacklist VALID_DISPLAY_INFO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConfigs:Landroid/os/PersistableBundle;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mServiceState:Landroid/telephony/ServiceState;

.field private blacklist mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private final blacklist mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public static synthetic blacklist $r8$lambda$4M_2IKjaWz0X9ZGemIzX5dqFTB8(Lcom/android/internal/telephony/DisplayInfoController;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DisplayInfoController;->lambda$new$0(IIII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    const/16 v0, 0xd

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x3

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 60
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x5

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 62
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/16 v5, 0x14

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 54
    invoke-static {v1, v2, v3, v0, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DisplayInfoController;->VALID_DISPLAY_INFO_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 12

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    .line 89
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mConfigs:Landroid/os/PersistableBundle;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_5d

    .line 93
    :try_start_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "show_roaming_indicator_bool"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mConfigs:Landroid/os/PersistableBundle;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5d} :catch_5d

    .line 100
    :catch_5d
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz v0, :cond_77

    .line 103
    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/DisplayInfoController;)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 110
    :cond_77
    new-instance v3, Landroid/telephony/TelephonyDisplayInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZZZ)V

    iput-object v3, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    .line 121
    const-string p1, "register for satellite network callback"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForSatelliteNetwork()V

    return-void
.end method

.method private blacklist isRoaming()Z
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mConfigs:Landroid/os/PersistableBundle;

    const-string v2, "show_roaming_indicator_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 168
    const-string v0, "Override roaming for display due to carrier configs."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->logl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_19
    return v0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 105
    iget-object p2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_10

    const/4 p1, 0x2

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logel(Ljava/lang/String;)V
    .registers 2

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->loge(Ljava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->log(Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist validateDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5

    .line 181
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_86

    .line 184
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    if-gez v0, :cond_34

    .line 185
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_17

    goto :goto_34

    .line 186
    :cond_17
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_32
    move-exception p1

    goto :goto_8e

    .line 189
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/android/internal/telephony/DisplayInfoController;->VALID_DISPLAY_INFO_SET:Ljava/util/Set;

    .line 191
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_a8

    .line 193
    :cond_57
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type override "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    .line 194
    invoke-static {v2}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    .line 196
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_86
    new-instance p1, Ljavax/sip/InvalidArgumentException;

    const-string v0, "LTE_CA is not a valid network type."

    invoke-direct {p1, v0}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8e
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_8e} :catch_32

    .line 200
    :goto_8e
    invoke-virtual {p1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->logel(Ljava/lang/String;)V

    .line 201
    const-string v0, "3aa92a2c-94ed-46a0-a744-d6b1dfec2a56"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 201
    invoke-static {v0, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    :cond_a8
    :goto_a8
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 281
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 282
    const-string p2, "DisplayInfoController:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTelephonyDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 286
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 288
    iget-object p2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 290
    const-string p2, " ***************************************"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/NetworkTypeController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 227
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_43

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-void

    .line 234
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "show_roaming_indicator_bool"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mConfigs:Landroid/os/PersistableBundle;

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Carrier configs updated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mConfigs:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void

    .line 229
    :cond_43
    iget-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceState updated, isRoaming="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->log(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void
.end method

.method public blacklist registerForTelephonyDisplayInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 213
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist unregisterForTelephonyDisplayInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateTelephonyDisplayInfo()V
    .registers 8

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_61

    .line 138
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 140
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v3

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/DisplayInfoController;->isRoaming()Z

    move-result v4

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mServiceState:Landroid/telephony/ServiceState;

    .line 142
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getSatelliteConstrainedData()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZZZ)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyDisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyDisplayInfo changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->logl(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DisplayInfoController;->validateDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 148
    iput-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    :cond_60
    return-void

    .line 153
    :cond_61
    const-string v0, "Found null object"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->loge(Ljava/lang/String;)V

    return-void
.end method
