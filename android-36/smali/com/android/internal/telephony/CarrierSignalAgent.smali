.class public Lcom/android/internal/telephony/CarrierSignalAgent;
.super Landroid/os/Handler;
.source "CarrierSignalAgent.java"


# static fields
.field private static final blacklist COMPAT_ACTION_TO_NEW_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CarrierSignalAgent"

.field private static final blacklist NEW_ACTION_TO_COMPAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist VALID_CARRIER_SIGNAL_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mCachedNoWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCachedWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDefaultNetworkAvail:Z

.field private final blacklist mErrorLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public static synthetic blacklist $r8$lambda$z8_hdekA7Ud9Dpzix1USDwlWKhs(Lcom/android/internal/telephony/CarrierSignalAgent;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierSignalAgent;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultNetworkAvail(Lcom/android/internal/telephony/CarrierSignalAgent;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDefaultNetworkAvail(Lcom/android/internal/telephony/CarrierSignalAgent;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 62
    const-class v0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 64
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    .line 101
    const-string v0, "android.telephony.action.CARRIER_SIGNAL_RESET"

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    const-string v2, "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    const-string v4, "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->VALID_CARRIER_SIGNAL_ACTIONS:Ljava/util/Set;

    .line 108
    const-string v9, "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    const-string v10, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    const-string v4, "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

    const-string v5, "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    const-string v6, "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    const-string v7, "android.telephony.action.CARRIER_SIGNAL_RESET"

    const-string v8, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    invoke-static/range {v1 .. v10}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->NEW_ACTION_TO_COMPAT_MAP:Ljava/util/Map;

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->COMPAT_ACTION_TO_NEW_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 11

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    if-eqz v0, :cond_3d

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 142
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    return-void
.end method

.method private blacklist broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 323
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 324
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p3, :cond_25

    .line 326
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2c

    .line 330
    :cond_25
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2c
    const/high16 v3, 0x10000

    if-eqz p3, :cond_53

    .line 333
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 334
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carrier signal receivers are configured but unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_e

    :cond_53
    if-nez p3, :cond_78

    .line 339
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 340
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_78

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runtime signals shouldn\'t be configured in Manifest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 346
    :cond_78
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    const/high16 v3, 0x10000000

    .line 347
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p3, :cond_8d

    const/16 v3, 0x10

    .line 348
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_8d
    const/4 v3, 0x0

    .line 352
    :try_start_8e
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 353
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1e

    if-gt v1, v4, :cond_ab

    .line 355
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->createCompatIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_ab} :catch_ab

    :catch_ab
    :cond_ab
    if-nez v3, :cond_ae

    goto :goto_af

    :cond_ae
    move-object v2, v3

    .line 362
    :goto_af
    :try_start_af
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending signal "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the carrier signal receiver: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V
    :try_end_de
    .catch Landroid/content/ActivityNotFoundException; {:try_start_af .. :try_end_de} :catch_e0

    goto/16 :goto_e

    :catch_e0
    move-exception v1

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send broadcast failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_f7
    return-void
.end method

.method private static blacklist createCompatIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 14

    .line 398
    const-string v0, "android.telephony.extra.PCO_VALUE"

    const-string v1, "android.telephony.extra.REDIRECTION_URL"

    const-string v2, "android.telephony.extra.DATA_FAIL_CAUSE"

    const-string v3, "android.telephony.extra.PCO_ID"

    const-string v4, "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

    const-string v5, "android.telephony.extra.APN_TYPE"

    const/4 v6, 0x0

    const-string v7, "android.telephony.extra.APN_PROTOCOL"

    const/4 v8, -0x1

    sget-object v9, Lcom/android/internal/telephony/CarrierSignalAgent;->NEW_ACTION_TO_COMPAT_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_46

    .line 400
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a compat alternative for component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 404
    :cond_46
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 405
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_112

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 407
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_114

    :goto_70
    move v11, v8

    goto :goto_b0

    :sswitch_72
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_79

    goto :goto_70

    :cond_79
    const/4 v11, 0x6

    goto :goto_b0

    :sswitch_7b
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_82

    goto :goto_70

    :cond_82
    const/4 v11, 0x5

    goto :goto_b0

    :sswitch_84
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8b

    goto :goto_70

    :cond_8b
    const/4 v11, 0x4

    goto :goto_b0

    :sswitch_8d
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_94

    goto :goto_70

    :cond_94
    const/4 v11, 0x3

    goto :goto_b0

    :sswitch_96
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9d

    goto :goto_70

    :cond_9d
    const/4 v11, 0x2

    goto :goto_b0

    :sswitch_9f
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a6

    goto :goto_70

    :cond_a6
    const/4 v11, 0x1

    goto :goto_b0

    :sswitch_a8
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_af

    goto :goto_70

    :cond_af
    move v11, v6

    :goto_b0
    packed-switch v11, :pswitch_data_132

    goto :goto_5a

    .line 422
    :pswitch_b4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 421
    const-string v12, "pcoValue"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_5a

    .line 410
    :pswitch_be
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 409
    const-string v12, "redirectionUrl"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5a

    .line 414
    :pswitch_c8
    invoke-virtual {p0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 413
    const-string v12, "errorCode"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5a

    .line 418
    :pswitch_d2
    invoke-virtual {p0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 417
    const-string v12, "pcoId"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5a

    .line 426
    :pswitch_dd
    invoke-virtual {p0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 425
    const-string v12, "defaultNetworkAvailable"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5a

    :pswitch_e8
    const/16 v11, 0x11

    .line 430
    invoke-virtual {p0, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 432
    const-string v12, "apnTypeInt"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v12, "apnType"

    .line 434
    invoke-static {v11}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v11

    .line 433
    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5a

    .line 437
    :pswitch_fe
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 438
    const-string v12, "apnProtoInt"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v12, "apnProto"

    .line 440
    invoke-static {v11}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v11

    .line 439
    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5a

    :cond_112
    return-object v10

    nop

    :sswitch_data_114
    .sparse-switch
        -0x608ad555 -> :sswitch_a8
        -0x448ccb33 -> :sswitch_9f
        -0x31ce33d9 -> :sswitch_96
        -0xfae0c6f -> :sswitch_8d
        0x996e0ea -> :sswitch_84
        0x32624a69 -> :sswitch_7b
        0x517e131b -> :sswitch_72
    .end sparse-switch

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_fe
        :pswitch_e8
        :pswitch_dd
        :pswitch_d2
        :pswitch_c8
        :pswitch_be
        :pswitch_b4
    .end packed-switch
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 137
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_b

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    :cond_b
    return-void
.end method

.method private blacklist loadCarrierConfig()V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 205
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 206
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "carrier_app_wake_signal_config"

    const-string v3, "carrier_app_no_wake_signal_config"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    .line 213
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v1

    .line 214
    :try_start_22
    const-string v2, "Loading carrier config: carrier_app_wake_signal_config"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 215
    const-string v2, "carrier_app_wake_signal_config"

    .line 216
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_57

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 224
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 225
    sget-boolean v3, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v3, :cond_4e

    const-string v3, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_97

    .line 226
    :cond_4e
    :goto_4e
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    :cond_57
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 230
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_22 .. :try_end_5a} :catchall_4c

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v2

    .line 233
    :try_start_5d
    const-string v1, "Loading carrier config: carrier_app_no_wake_signal_config"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 235
    const-string v1, "carrier_app_no_wake_signal_config"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 239
    sget-boolean v1, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v1, :cond_88

    const-string v1, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    goto :goto_88

    :catchall_86
    move-exception p0

    goto :goto_95

    .line 240
    :cond_88
    :goto_88
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    :cond_91
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 244
    monitor-exit v2

    return-void

    :goto_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_5d .. :try_end_96} :catchall_86

    throw p0

    .line 230
    :goto_97
    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_4c

    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 448
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 5

    .line 457
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist parseAndCache([Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 257
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_d4

    aget-object v4, p1, v3

    .line 258
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d0

    .line 259
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s*:\\s*"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 260
    array-length v6, v5

    if-ne v6, v7, :cond_bc

    .line 261
    aget-object v4, v5, v2

    .line 262
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_46

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid component name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_d0

    :cond_46
    const/4 v6, 0x1

    .line 267
    aget-object v5, v5, v6

    const-string v6, "\\s*,\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 268
    array-length v6, v5

    move v7, v2

    :goto_51
    if-ge v7, v6, :cond_d0

    aget-object v8, v5, v7

    .line 269
    sget-object v9, Lcom/android/internal/telephony/CarrierSignalAgent;->VALID_CARRIER_SIGNAL_ACTIONS:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 272
    sget-object v9, Lcom/android/internal/telephony/CarrierSignalAgent;->COMPAT_ACTION_TO_NEW_MAP:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 273
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_81

    .line 275
    :cond_6c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid signal name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_b9

    .line 279
    :cond_81
    :goto_81
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    if-nez v9, :cond_91

    .line 281
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 282
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_91
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    sget-boolean v9, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v9, :cond_b9

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add config {signal: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " componentName: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CarrierSignalAgent;->logv(Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 291
    :cond_bc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid config format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    :cond_d0
    :goto_d0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_d4
    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 461
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 462
    const-string v1, "mCachedWakeSignalConfigs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " componentName list: "

    const-string v4, "signal: "

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    .line 467
    :cond_4c
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 469
    const-string v1, "mCachedNoWakeSignalConfigs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 474
    :cond_90
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultNetworkAvail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const-string v1, "error log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_62

    .line 151
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 152
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_26

    .line 153
    sget-object p0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register default network exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 159
    new-instance p1, Lcom/android/internal/telephony/CarrierSignalAgent$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$1;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 185
    const-string p1, "Register default network"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_50
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_62

    .line 188
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    .line 191
    const-string p1, "unregister default network"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public blacklist hasRegisteredReceivers(Ljava/lang/String;)Z
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 304
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist notifyCarrierSignalReceivers(Landroid/content/Intent;)V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v0

    .line 383
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 384
    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    .line 385
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_3d

    .line 387
    :cond_1c
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1a

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v1

    .line 390
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 391
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 394
    :cond_39
    :goto_39
    monitor-exit v1

    return-void

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_37

    throw p0

    .line 387
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_1a

    throw p0
.end method
