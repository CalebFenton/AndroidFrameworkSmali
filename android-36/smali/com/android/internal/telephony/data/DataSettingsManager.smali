.class public Lcom/android/internal/telephony/data/DataSettingsManager;
.super Landroid/os/Handler;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    }
.end annotation


# instance fields
.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataEnabledSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabledMobileDataPolicy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mInitialized:Z

.field private blacklist mIsDataEnabled:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$7BJP4CCaqIz14lIbBM2Xq8SFxFo(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 4

    .line 725
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Fn79WJcBX667TkouCEAHC07q5Zo(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .registers 2

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataRoamingEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JRahrLntf21lY34T2Bi_Y7ShCIw(ZLjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 4

    .line 475
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jmk3Z7ZPXEVUeDU6K6DWcnoAEjY(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V
    .registers 3

    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledOverrideChanged(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$c4V_xkcFpFpeCSzSDdkutbnnisg(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V
    .registers 3

    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onUserDataEnabledChanged(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kb2w6PJhbRuqdNuYuNhXfcAnOsI(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V
    .registers 4

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledChanged(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ngl0PFSCMfW75YYqA6AqgIC_Ago(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pOMrdJZfGKgOTfsxULrHkxPh-Gg(ZILjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 5

    .line 717
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wdxSCdThUs3U8IecpFkVrVJQtqs(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 3

    .line 561
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/data/DataSettingsManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 7

    .line 191
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 101
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    .line 109
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    .line 113
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 193
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 194
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSMGR-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    .line 195
    const-string p3, "DataSettingsManager created."

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    .line 198
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 199
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->refreshEnabledMobileDataPolicy()V

    .line 201
    new-instance p2, Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const/4 p1, 0x1

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 208
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static blacklist dataEnabledChangedReasonToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    .line 835
    const-string p0, "UNKNOWN"

    return-object p0

    .line 834
    :cond_11
    const-string p0, "OVERRIDE"

    return-object p0

    .line 833
    :cond_14
    const-string p0, "THERMAL"

    return-object p0

    .line 832
    :cond_17
    const-string p0, "CARRIER"

    return-object p0

    .line 831
    :cond_1a
    const-string p0, "POLICY"

    return-object p0

    .line 830
    :cond_1d
    const-string p0, "USER"

    return-object p0
.end method

.method private blacklist hasCalling()Z
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 277
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isDataEnabledOverriddenForApn(I)Z
    .registers 8

    const/4 v0, 0x2

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    if-ne p1, v0, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v3

    .line 786
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    .line 789
    :goto_21
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    .line 790
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v4

    .line 791
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v4

    .line 790
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 789
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 792
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    move v1, v2

    goto :goto_40

    :cond_3f
    move v1, v3

    .line 795
    :goto_40
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_58

    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 797
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 798
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_56

    move v4, v2

    goto :goto_57

    :cond_56
    move v4, v3

    :goto_57
    or-int/2addr p1, v4

    :cond_58
    const/4 v4, 0x3

    .line 802
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_68

    if-eqz v0, :cond_64

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_64
    move v2, v3

    :goto_65
    or-int p0, p1, v2

    return p0

    :cond_68
    return p1
.end method

.method private blacklist isDataRoamingFromUserAction()Z
    .registers 6

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_roaming_is_user_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 608
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 611
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_50

    .line 612
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 613
    const-string v1, "Reusing previous roaming from user action value for backwards compatibility."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 614
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_50

    .line 616
    :cond_3f
    const-string v1, "Clearing roaming from user action value for new or upgrading devices."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 617
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    :cond_50
    :goto_50
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataRoamingFromUserAction: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isUserSetting="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isProvisioningDataEnabled()Z
    .registers 6

    .line 397
    const-string v0, "ro.com.android.prov_mobiledata"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioning_mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 405
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled during provisioning retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist isStandAloneOpportunistic(I)Z
    .registers 2

    .line 454
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isUserDataEnabled()Z
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 488
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 492
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 494
    :cond_1a
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->mobile_data()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile_data"

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 855
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 871
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 872
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist metricsRecordSetMobileDataPolicy(I)V
    .registers 2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_6

    .line 700
    invoke-static {}, Lcom/android/internal/telephony/metrics/DeviceTelephonyPropertiesStats;->recordAutoDataSwitchFeatureToggle()V

    :cond_6
    return-void
.end method

.method private blacklist notifyDataEnabledChanged(ZILjava/lang/String;)V
    .registers 6

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;-><init>(ZILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 719
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->notifyDataEnabled(ZI)V

    return-void
.end method

.method private blacklist notifyDataEnabledOverrideChanged(ZI)V
    .registers 5

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledOverrideChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 725
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onInitialize()V
    .registers 8

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$1;

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager$1;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioning_mobile_data"

    .line 296
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_43

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$2;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    new-instance v2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8c
    if-ge v2, v1, :cond_b0

    aget-object v3, v0, v2

    .line 323
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_ad

    .line 324
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataSettingsManager$3;

    new-instance v6, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v5, p0, v6, v3}, Lcom/android/internal/telephony/data/DataSettingsManager$3;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 338
    :cond_b0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$4;

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager$4;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    const/4 v0, -0x1

    .line 348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method private blacklist onSetMobileDataPolicy(IZ)V
    .registers 6

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v0

    if-ne p2, v0, :cond_7

    return-void

    .line 676
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->metricsRecordSetMobileDataPolicy(I)V

    if-eqz p2, :cond_16

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 681
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 684
    :goto_1f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    .line 685
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setEnabledMobileDataPolicies(ILjava/lang/String;)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->mobileDataPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 690
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 691
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledOverrideChanged(ZI)V

    return-void
.end method

.method private blacklist parsePolicyFrom(Ljava/lang/String;)I
    .registers 4

    .line 764
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 767
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePolicyFrom: invalid mobile data policy format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist refreshEnabledMobileDataPolicy()V
    .registers 3

    .line 641
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 642
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 645
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getEnabledMobileDataPolicies()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getMobileDataPolicyEnabled(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    :cond_16
    return-void
.end method

.method private blacklist setCarrierDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 523
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method private blacklist setDataRoamingEnabledInternal(Z)V
    .registers 5

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataRoamingEnabled set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    if-eqz v0, :cond_40

    .line 561
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_40
    return-void
.end method

.method private blacklist setDataRoamingFromUserAction()V
    .registers 4

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_roaming_is_user_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingFromUserAction: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 634
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x1

    .line 636
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setPolicyDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 509
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method private blacklist setThermalDataEnabled(ZLjava/lang/String;)V
    .registers 7

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThermalDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 537
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method private blacklist setUserDataEnabled(ZLjava/lang/String;)V
    .registers 6

    .line 467
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(I)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    goto :goto_70

    .line 468
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set user data enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    if-eqz v0, :cond_70

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDataEnabled changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    .line 477
    invoke-direct {p0, p1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_70
    :goto_70
    return-void
.end method

.method private blacklist updateDataEnabledAndNotify(I)V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    return-void
.end method

.method private blacklist updateDataEnabledAndNotify(ILjava/lang/String;Z)V
    .registers 7

    .line 381
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    const/16 v1, 0xff

    .line 382
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", prevDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 384
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    if-eqz v1, :cond_34

    if-nez p3, :cond_34

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    if-eq v0, p3, :cond_33

    goto :goto_34

    :cond_33
    return-void

    :cond_34
    :goto_34
    if-nez v1, :cond_39

    const/4 p3, 0x1

    .line 385
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 386
    :cond_39
    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledChanged(ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 883
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(internet)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(mms)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUserDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingFromUserAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_provisioned="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisioningDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_stall_recovery_on_bad_network="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "data_stall_recovery_on_bad_network"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataEnabledSettings="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;-><init>()V

    .line 899
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 901
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 898
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledMobileDataPolicy="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 903
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 902
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 906
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 908
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getMobileDataPolicyEnabled(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 740
    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2c

    aget-object v3, p1, v2

    .line 741
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 742
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->parsePolicyFrom(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 744
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2c
    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_a6

    .line 271
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->loge(Ljava/lang/String;)V

    return-void

    .line 267
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->onInitialize()V

    return-void

    :pswitch_22
    const/4 p1, -0x1

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void

    .line 256
    :pswitch_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 257
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_2e

    move v1, v2

    .line 258
    :cond_2e
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->onSetMobileDataPolicy(IZ)V

    return-void

    .line 250
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingFromUserAction()V

    return-void

    .line 227
    :pswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_4a

    move v1, v2

    .line 229
    :cond_4a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_7d

    if-eq v3, v2, :cond_79

    const/4 v2, 0x2

    if-eq v3, v2, :cond_75

    const/4 v2, 0x3

    if-eq v3, v2, :cond_71

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set data enabled for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 244
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_71
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setThermalDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 234
    :cond_75
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setCarrierDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 237
    :cond_79
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setPolicyDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 231
    :cond_7d
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setUserDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 219
    :pswitch_81
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->refreshEnabledMobileDataPolicy()V

    .line 220
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 222
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 220
    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    return-void

    :pswitch_a1
    const/4 p1, 0x4

    .line 215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_a1
        :pswitch_7
        :pswitch_81
        :pswitch_41
        :pswitch_32
        :pswitch_27
        :pswitch_7
        :pswitch_22
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method

.method public blacklist isDataEnabled()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    return p0
.end method

.method public blacklist isDataEnabled(I)Z
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 441
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledOverriddenForApn(I)Z

    move-result p1

    if-nez v0, :cond_1c

    if-eqz p1, :cond_56

    .line 446
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x1

    .line 447
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x2

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 p1, 0x3

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_56

    return v0

    :cond_56
    return v2
.end method

.method public blacklist isDataEnabledForReason(I)Z
    .registers 2

    if-nez p1, :cond_7

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    return p0

    .line 371
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isDataInitialized()Z
    .registers 1

    .line 429
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    return p0
.end method

.method public blacklist isDataRoamingEnabled()Z
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result p0

    .line 572
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1, p0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist isDefaultDataRoamingEnabled()Z
    .registers 3

    .line 583
    const-string v0, "ro.com.android.dataroaming"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p0

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isDataRoamingEnabledByDefault()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMobileDataPolicyEnabled(I)Z
    .registers 2

    .line 653
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isRecoveryOnBadNetworkEnabled()Z
    .registers 3

    .line 709
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "data_stall_recovery_on_bad_network"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    .line 815
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setDataEnabled(IZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x5

    .line 359
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDataRoamingEnabled(Z)V
    .registers 3

    .line 547
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDefaultDataRoamingEnabled()V
    .registers 2

    .line 594
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_d

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    :cond_d
    return-void
.end method

.method public blacklist setMobileDataPolicy(IZ)V
    .registers 4

    const/4 v0, 0x7

    .line 662
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 663
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDataEnabledSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabledMobileDataPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    .line 845
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 846
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
