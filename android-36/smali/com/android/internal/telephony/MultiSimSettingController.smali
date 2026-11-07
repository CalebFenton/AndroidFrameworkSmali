.class public Lcom/android/internal/telephony/MultiSimSettingController;
.super Landroid/os/Handler;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;,
        Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;,
        Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x8

.field public static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x9

.field protected static blacklist sInstance:Lcom/android/internal/telephony/MultiSimSettingController;


# instance fields
.field private blacklist mActiveModemCount:I

.field private blacklist mCallbacksCount:I

.field private blacklist mCarrierConfigLoadedSubIds:[I

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mConvertedPsimSubId:I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mInitialHandling:Z

.field private final blacklist mIsAskEverytimeSupportedForSms:Z

.field private blacklist mNeedSetDefaultData:Z

.field private blacklist mNeedSetDefaultSms:Z

.field private blacklist mNeedSetDefaultVoice:Z

.field private blacklist mPrimarySubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubInfoInitialized:Z

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$4UrN2ZMe4T1KPCzRacrWAwrB38Q(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    .line 731
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DWXUSY8r1Bqs6I96sCQH_cbkjvc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .registers 1

    .line 733
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gUeMTUTT2xFmVg77KR2BF49poco(Lcom/android/internal/telephony/MultiSimSettingController;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p0_pBQTGu-AkxSR0bHlJP69Q5l4(Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    .line 732
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 232
    iput-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 235
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 237
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    .line 238
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    const/4 v1, -0x1

    .line 239
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 241
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    const/16 p2, 0x8

    const/4 v0, 0x0

    .line 243
    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x111024d

    .line 247
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAskEverytimeSupportedForSms:Z

    .line 249
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_5e

    .line 252
    new-instance p2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    invoke-virtual {p1, p2, v0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 257
    :cond_5e
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getConvertedPsimSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    return-void
.end method

.method private blacklist areSubscriptionsInSameGroup(II)Z
    .registers 6

    .line 1053
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 1054
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3b

    :cond_e
    const/4 v0, 0x1

    if-ne p1, p2, :cond_12

    return v0

    .line 1057
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1058
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    .line 1059
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1060
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p1, :cond_3b

    if-eqz p0, :cond_3b

    .line 1062
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 1063
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method private blacklist deactivateGroupedOpportunisticSubscriptionIfNeeded()V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1169
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1169
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;-><init>()V

    .line 1170
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1171
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1173
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_68

    .line 1175
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1176
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isGroupDisabled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivateGroupedOpportunisticSubscriptionIfNeeded: Deactivating grouped opportunistic subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_34

    :cond_68
    :goto_68
    return-void
.end method

.method private blacklist deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V
    .registers 6

    .line 1187
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[deactivateSubscription] eSIM profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    .line 1190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 1192
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, -0x1

    .line 1191
    invoke-virtual {v0, v1, p1, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    :cond_3e
    return-void
.end method

.method private blacklist getConvertedPsimSubscriptionId()I
    .registers 6

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 945
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 946
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 947
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getTransferStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    .line 948
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_17

    .line 952
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConvertedPsimSubscriptionId: convertedSubId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 3

    .line 204
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 205
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_11

    .line 206
    const-string v1, "MultiSimSettingController"

    const-string v2, "getInstance null"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 209
    :cond_11
    :goto_11
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object v1

    .line 210
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private blacklist getSimCombinationWarningParams(I)Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
    .registers 10

    .line 989
    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;Lcom/android/internal/telephony/MultiSimSettingController-IA;)V

    .line 991
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_10

    goto :goto_6d

    .line 994
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->isUserVisibleChange(I)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_6d

    .line 996
    :cond_17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 998
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 999
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 1001
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->isCdmaSubscriptionAppPresent()Z

    move-result v7

    if-eqz v7, :cond_23

    add-int/lit8 v4, v4, 0x1

    .line 1004
    iget-object v7, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1005
    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 1007
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    :cond_52
    move-object v5, v1

    .line 1009
    :goto_53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1011
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    .line 1013
    :cond_5d
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_61
    if-le v4, v3, :cond_6d

    .line 1018
    iput v3, v0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    .line 1019
    const-string p0, " & "

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mSimNames:Ljava/lang/String;

    :cond_6d
    :goto_6d
    return-object v0
.end method

.method private blacklist getSimSelectDialogType(IZZZ)I
    .registers 8

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    .line 970
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    if-eqz p2, :cond_22

    if-eqz p4, :cond_22

    if-nez p3, :cond_24

    :cond_22
    const/4 p0, 0x4

    return p0

    .line 973
    :cond_24
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v1, :cond_38

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->isUserVisibleChange(I)Z

    move-result p0

    if-nez p0, :cond_37

    const/4 p0, 0x6

    if-ne p1, p0, :cond_38

    if-nez p2, :cond_38

    :cond_37
    return v1

    :cond_38
    :goto_38
    return v2
.end method

.method private blacklist getUserPrefDataSubIdFromDB()I
    .registers 3

    .line 1261
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_preferred_data_sub"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist hasCalling()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 262
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasData()Z
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 268
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.data"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasMessaging()Z
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 274
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.messaging"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 4

    .line 218
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 219
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_11

    .line 220
    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    goto :goto_29

    :catchall_f
    move-exception p0

    goto :goto_2d

    .line 222
    :cond_11
    const-string p0, "MultiSimSettingController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_29
    sget-object p0, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object p0

    .line 225
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_f

    throw p0
.end method

.method private blacklist isRadioAvailableOnAllSubs()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1266
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    if-ge v1, v2, :cond_1f

    .line 1267
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1268
    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1269
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    .line 1270
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isReadyToReevaluate()Z
    .registers 6

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isCarrierConfigLoadedForAllSub()Z

    move-result v0

    .line 513
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v1

    goto :goto_11

    :cond_10
    move v1, v2

    .line 521
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReadyToReevaluate: subInfoInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", carrierConfigsLoaded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", satelliteEnabledOrBeingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 525
    iget-boolean p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    if-eqz p0, :cond_41

    if-eqz v0, :cond_41

    if-nez v1, :cond_41

    const/4 p0, 0x1

    return p0

    :cond_41
    return v2
.end method

.method private blacklist isUserVisibleChange(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->onCarrierConfigChanged(II)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1289
    const-string p0, "MultiSimSettingController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1293
    const-string p0, "MultiSimSettingController"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onAllSubscriptionsLoaded()V
    .registers 7

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSubscriptionsLoaded: mSubInfoInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getConvertedPsimSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_38

    aget-object v3, v0, v2

    .line 420
    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 422
    :cond_38
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    .line 424
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    return-void
.end method

.method private blacklist onCarrierConfigChanged(II)V
    .registers 5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigChanged phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 455
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Carrier config change with invalid phoneId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_37
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_54

    .line 464
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    return-void

    .line 465
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    aput p2, v0, p1

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist onDefaultDataSettingChanged()V
    .registers 2

    .line 540
    const-string v0, "onDefaultDataSettingChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 7

    .line 494
    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiSimConfigChanged: current ActiveModemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 498
    :goto_18
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v1, v0

    if-ge p1, v1, :cond_23

    const/4 v1, -0x1

    .line 499
    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 501
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_38

    aget-object v2, p1, v1

    .line 502
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 504
    :cond_38
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    return-void
.end method

.method private blacklist onRoamingDataEnabled(IZ)V
    .registers 4

    .line 403
    const-string v0, "onRoamingDataEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setRoamingDataEnabledForGroup(IZ)V

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDataRoaming(II)I

    return-void
.end method

.method private blacklist onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .registers 11

    .line 551
    const-string v0, "data_roaming"

    const-string v1, "mobile_data"

    const-string v2, "onSubscriptionGroupChanged"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_bc

    .line 555
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_bc

    :cond_25
    const/4 v3, 0x0

    .line 559
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 560
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 561
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 562
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-nez v5, :cond_34

    move v4, v6

    .line 568
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refSubId is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 572
    :try_start_66
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1
    :try_end_6c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_73

    .line 576
    :catch_6d
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v1

    .line 580
    :goto_73
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 581
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 582
    invoke-virtual {v7}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 581
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 583
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 584
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8a

    move v8, v3

    .line 591
    :cond_a1
    invoke-direct {p0, v4, v1, v8}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZZ)V

    .line 595
    :try_start_a4
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v4}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 597
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V
    :try_end_ad
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a4 .. :try_end_ad} :catch_ae

    goto :goto_b7

    .line 600
    :catch_ae
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p1

    .line 602
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    .line 605
    :goto_b7
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->syncGroupedSetting(I)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method private blacklist onSubscriptionsChanged()V
    .registers 2

    .line 433
    const-string v0, "onSubscriptionsChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist onUserDataEnabled(IZZ)V
    .registers 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onUserDataEnabled] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setDefaultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, p1, :cond_57

    if-eqz v0, :cond_57

    .line 391
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_57

    if-eqz p2, :cond_57

    .line 392
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result p2

    if-eqz p2, :cond_57

    if-eqz p3, :cond_57

    .line 393
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "user_preferred_data_sub"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    :cond_57
    return-void
.end method

.method private blacklist reEvaluateAll()V
    .registers 2

    .line 530
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 531
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaults()V

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateGroupedOpportunisticSubscriptionIfNeeded()V

    return-void
.end method

.method private blacklist registerDataSettingsControllerCallbackAsNeeded()V
    .registers 7

    .line 1280
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1281
    iget v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 1282
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;

    aget-object v4, v0, v1

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;-><init>(Lcom/android/internal/telephony/Phone;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1285
    :cond_21
    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    return-void
.end method

.method private blacklist sendDefaultSubConfirmedNotification(II)V
    .registers 6

    .line 785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 786
    const-string v1, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.sim.SimSelectNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v1, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    const-string p1, "android.telephony.extra.SUBSCRIPTION_ID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist sendSubChangeNotificationIfNeeded(IZZZ)V
    .registers 6

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEsimBootStrapProvisioningActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 804
    const-string p1, "esim bootstrap activation in progress, skip notification"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return-void

    .line 809
    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSimSelectDialogType(IZZZ)I

    move-result p2

    .line 811
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendSubChangeNotificationIfNeeded: simSelectDialogType="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 812
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSimCombinationWarningParams(I)Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;

    move-result-object p1

    if-nez p2, :cond_32

    .line 814
    iget p3, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    if-eqz p3, :cond_31

    goto :goto_32

    :cond_31
    return-void

    .line 816
    :cond_32
    :goto_32
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[sendSubChangeNotificationIfNeeded] showing dialog type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 818
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[sendSubChangeNotificationIfNeeded] showing sim warning "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 820
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 821
    const-string p4, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string p4, "com.android.settings"

    const-string v0, "com.android.settings.sim.SimSelectNotification"

    invoke-virtual {p3, p4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p4, 0x10000000

    .line 824
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 826
    const-string p4, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p4, 0x4

    if-ne p2, p4, :cond_88

    .line 828
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string p4, "android.telephony.extra.SUBSCRIPTION_ID"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 831
    :cond_88
    const-string p2, "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"

    iget p4, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    iget p2, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    const/4 p4, 0x1

    if-ne p2, p4, :cond_9b

    .line 833
    const-string p2, "android.telephony.extra.SIM_COMBINATION_NAMES"

    iget-object p1, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mSimNames:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    :cond_9b
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist setDefaultForPsimConversionChanged(IZZZ)Z
    .registers 7

    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEsimBootStrapProvisioningActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 859
    const-string p1, "esim bootstrap activation in progress, skip notification"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1

    .line 864
    :cond_f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSimSelectDialogType(IZZZ)I

    move-result p2

    .line 866
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSimCombinationWarningParams(I)Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;

    move-result-object p1

    .line 867
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[setDefaultForPsimConversionChanged]showing dialog type:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-nez p2, :cond_31

    .line 868
    iget p1, p1, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    if-eqz p1, :cond_170

    .line 870
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[setDefaultForPsimConversionChanged]Converted pSIM:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getConvertedPsimSubscriptionId()I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_170

    .line 872
    iget p4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    if-eq p1, p4, :cond_170

    const/4 p4, 0x4

    const/4 v0, 0x1

    if-ne p2, p4, :cond_c2

    .line 877
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result p1

    if-ne p1, p3, :cond_60

    .line 879
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultVoice:Z

    .line 882
    :cond_60
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result p1

    if-ne p1, p3, :cond_6a

    .line 884
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultSms:Z

    .line 887
    :cond_6a
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p1

    if-ne p1, p3, :cond_74

    .line 889
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultData:Z

    .line 891
    :cond_74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "select type all, set preferred SIM :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 892
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 893
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    .line 894
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    return v0

    :cond_c2
    if-ne p2, v0, :cond_170

    .line 899
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 900
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "need to set voice:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultVoice:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", sms:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultSms:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", data:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultData:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 905
    iget-boolean p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultVoice:Z

    if-eqz p3, :cond_119

    .line 906
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "set preferred call, subId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 907
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 908
    iput-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultVoice:Z

    .line 912
    :cond_119
    iget-boolean p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultSms:Z

    if-eqz p3, :cond_138

    .line 913
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "set preferred sms, subId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 914
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    .line 915
    iput-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultSms:Z

    .line 919
    :cond_138
    iget-boolean p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultData:Z

    if-eqz p3, :cond_157

    .line 920
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "set preferred data, subId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 921
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 922
    iput-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mNeedSetDefaultData:Z

    .line 924
    :cond_157
    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    .line 925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set converted pSIM subId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v0

    :cond_170
    return v1
.end method

.method private blacklist setRoamingDataEnabledForGroup(IZ)V
    .registers 6

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1111
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 1112
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4e

    .line 1113
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 1114
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1115
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_4e

    .line 1118
    :cond_32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1120
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "data_roaming"

    .line 1121
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 1120
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_36

    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1132
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            "Z)Z"
        }
    .end annotation

    .line 1139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_4e

    .line 1140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaultValue] Record.id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1147
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v2

    if-nez v2, :cond_39

    if-nez p4, :cond_b

    if-ne p2, v1, :cond_b

    .line 1150
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue] updates to subId="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    move v1, v0

    :cond_4e
    if-eq p2, v1, :cond_6f

    .line 1157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue: subId] from "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1158
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;->update(I)V

    .line 1161
    :cond_6f
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    return p0
.end method

.method private blacklist updatePrimarySubListAndGetChangeType(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 730
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda6;-><init>()V

    .line 731
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda7;-><init>()V

    .line 732
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda8;-><init>()V

    .line 733
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 734
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 736
    iget-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 737
    iput-boolean v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    const/4 p0, 0x6

    return p0

    .line 740
    :cond_36
    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v2

    .line 741
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_4b

    const/4 p0, 0x1

    return p0

    .line 743
    :cond_4b
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_8c

    .line 746
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 749
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_5d

    :cond_88
    const/4 p0, 0x3

    return p0

    :cond_8a
    const/4 p0, 0x4

    return p0

    .line 761
    :cond_8c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_90
    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 762
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    goto :goto_90

    .line 763
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 765
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v2

    if-nez v2, :cond_b8

    goto :goto_d3

    .line 773
    :cond_b8
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_90

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePrimarySubListAndGetChangeType]: missing active primary subId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    goto :goto_90

    .line 766
    :cond_d3
    :goto_d3
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 767
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v0

    if-eqz v0, :cond_d9

    const/4 p0, 0x7

    return p0

    :cond_f1
    const/4 p0, 0x2

    return p0

    :cond_f3
    const/4 p0, 0x5

    return p0
.end method

.method private blacklist updateUserPreferences(Ljava/util/List;ZZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_103

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1210
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubInfoCountMax()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto/16 :goto_103

    .line 1214
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isRadioAvailableOnAllSubs()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1215
    const-string p1, "Radio is in Invalid state, Ignore Updating User Preference!!!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return-void

    .line 1218
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUserPreferences:  dds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1222
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sms = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1223
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1226
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1228
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasMessaging()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_71

    if-nez p4, :cond_71

    .line 1229
    iget-object p4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p4, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    .line 1232
    :cond_71
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result p4

    if-eqz p4, :cond_84

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v1, :cond_84

    if-nez p3, :cond_84

    .line 1233
    iget-object p3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 1236
    :cond_84
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getUserPrefDataSubIdFromDB()I

    move-result p3

    .line 1238
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User pref subId = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current dds "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " next active subId "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasData()Z

    move-result p4

    if-eqz p4, :cond_d1

    .line 1243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1244
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_ca

    if-eq v0, p3, :cond_ca

    .line 1246
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    goto :goto_d1

    :cond_ca
    if-nez p2, :cond_d1

    .line 1248
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 1253
    :cond_d1
    :goto_d1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateUserPreferences: after dds = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1254
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1255
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1256
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_103
    :goto_103
    return-void
.end method


# virtual methods
.method protected blacklist disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .registers 9

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_78

    .line 1033
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 1035
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_78

    aget-object v5, v1, v4

    .line 1036
    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1037
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v6

    if-eqz v6, :cond_2d

    .line 1038
    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_2d
    move v6, v3

    .line 1039
    :goto_2e
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    if-eq v7, v0, :cond_75

    .line 1040
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_75

    if-nez v6, :cond_75

    .line 1042
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1043
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v6

    if-nez v6, :cond_75

    .line 1044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting data to false on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1047
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1045
    invoke-virtual {v5, v3, v3, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_78
    :goto_78
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 328
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_78

    :pswitch_7
    goto :goto_3b

    :pswitch_8
    move p1, v2

    .line 359
    :goto_9
    iget v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    if-ge p1, v0, :cond_3b

    .line 360
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 361
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio unavailable on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clearing sub info initialized flag"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 367
    iput-boolean v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    return-void

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_3b
    :goto_3b
    return-void

    .line 355
    :pswitch_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 356
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onMultiSimConfigChanged(I)V

    return-void

    .line 352
    :pswitch_4c
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onDefaultDataSettingChanged()V

    return-void

    .line 348
    :pswitch_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelUuid;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V

    return-void

    .line 345
    :pswitch_58
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionsChanged()V

    return-void

    .line 342
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onAllSubscriptionsLoaded()V

    return-void

    .line 336
    :pswitch_60
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 337
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    move v1, v2

    .line 338
    :goto_68
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    return-void

    .line 330
    :pswitch_6c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 331
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_73

    move v2, v1

    .line 332
    :cond_73
    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZZ)V

    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_50
        :pswitch_4c
        :pswitch_7
        :pswitch_3c
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist isCarrierConfigLoadedForAllSub()Z
    .registers 10

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 476
    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_37

    aget v4, v0, v3

    .line 478
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v6, v5

    move v7, v1

    :goto_11
    if-ge v7, v6, :cond_1d

    aget v8, v5, v7

    if-ne v8, v4, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 485
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier config subId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist notifyAllSubscriptionLoaded()V
    .registers 2

    const/4 v0, 0x3

    .line 301
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyDefaultDataSubChanged()V
    .registers 2

    const/4 v0, 0x6

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyRoamingDataEnabled(IZ)V
    .registers 4

    .line 291
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    .line 292
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public blacklist notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .registers 3

    const/4 v0, 0x5

    .line 316
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .registers 2

    .line 308
    const-string v0, "notifySubscriptionInfoChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 309
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyUserDataEnabled(IZ)V
    .registers 4

    .line 282
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public blacklist onPhoneRemoved()V
    .registers 3

    .line 445
    const-string v0, "onPhoneRemoved"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void

    .line 447
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method must be called from the same looper as MultiSimSettingController."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist setUserDataEnabledForGroup(IZ)V
    .registers 6

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserDataEnabledForGroup subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1074
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 1075
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1078
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    if-nez p1, :cond_4d

    goto :goto_8a

    .line 1083
    :cond_4d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1084
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1086
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1089
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 1088
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1093
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1095
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1093
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    goto :goto_51

    .line 1099
    :cond_82
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_51

    :cond_8a
    :goto_8a
    return-void
.end method

.method protected blacklist updateDefaults()V
    .registers 8

    .line 623
    const-string v0, "updateDefaults"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_155

    .line 626
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 627
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 627
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 630
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 632
    const-string v0, "updateDefaults: No active sub. Setting default to INVALID sub."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    return-void

    .line 642
    :cond_41
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultValues: change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-nez v0, :cond_5d

    goto/16 :goto_155

    .line 651
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_be

    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultValues: to only primary sub "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasData()Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 656
    :cond_91
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 657
    :cond_9c
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasMessaging()Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    .line 658
    :cond_a7
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEsimBootStrapProvisioningActivated()Z

    move-result v2

    if-nez v2, :cond_155

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b9

    .line 668
    iget v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    if-ne v0, v3, :cond_b7

    goto :goto_b9

    :cond_b7
    const/4 v0, 0x4

    goto :goto_ba

    :cond_b9
    :goto_b9
    const/4 v0, 0x5

    .line 671
    :goto_ba
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->sendDefaultSubConfirmedNotification(II)V

    return-void

    .line 676
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultValues: records: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasData()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 684
    const-string v1, "updateDefaultValues: Update default data subscription"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 686
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 687
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 685
    invoke-direct {p0, v1, v3, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v1

    goto :goto_f7

    :cond_f6
    move v1, v2

    .line 690
    :goto_f7
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 692
    const-string v3, "updateDefaultValues: Update default voice subscription"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 693
    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 694
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 695
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 693
    invoke-direct {p0, v3, v4, v6}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v3

    goto :goto_11a

    :cond_119
    move v3, v2

    .line 698
    :goto_11a
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasMessaging()Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 700
    const-string v2, "updateDefaultValues: Update default sms subscription"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 702
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 703
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    iget-boolean v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAskEverytimeSupportedForSms:Z

    .line 701
    invoke-direct {p0, v2, v4, v6, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z

    move-result v2

    .line 707
    :cond_13d
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11102a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_156

    .line 716
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->setDefaultForPsimConversionChanged(IZZZ)Z

    move-result v4

    if-nez v4, :cond_155

    .line 718
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->sendSubChangeNotificationIfNeeded(IZZZ)V

    :cond_155
    :goto_155
    return-void

    .line 721
    :cond_156
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->updateUserPreferences(Ljava/util/List;ZZZ)V

    return-void
.end method
