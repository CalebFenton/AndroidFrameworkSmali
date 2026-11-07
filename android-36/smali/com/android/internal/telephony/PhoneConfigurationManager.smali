.class public Lcom/android/internal/telephony/PhoneConfigurationManager;
.super Ljava/lang/Object;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;,
        Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;,
        Lcom/android/internal/telephony/PhoneConfigurationManager$ListenerBase;,
        Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DSDA:Ljava/lang/String; = "dsda"

.field public static final blacklist DSDS:Ljava/lang/String; = "dsds"

.field public static final blacklist SSSS:Ljava/lang/String; = ""

.field public static final blacklist TSTS:Ljava/lang/String; = "tsts"

.field private static blacklist sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

.field private static final blacklist sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field public blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

.field private final blacklist mNotifier:Lcom/android/internal/telephony/DefaultPhoneNotifier;

.field private final blacklist mPhoneStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhones:[Lcom/android/internal/telephony/Phone;

.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private final blacklist mSimultaneousCellularCallingListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStaticCapability:Landroid/telephony/PhoneCapability;

.field private final blacklist mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mVirtualDsdaEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$YAa4SxNiWnG5CDTb5cCOU_-FfyY(Ljava/lang/Integer;)Z
    .registers 2

    .line 208
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$joxyJvdTj6Vf1A37-AT7m6GT0PY(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wGQKrO-kheUAJRCWgFnyGjbiKlQ(Lcom/android/internal/telephony/PhoneConfigurationManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->lambda$updateSimultaneousSubIdsFromPhoneIdMappingAndNotify$1(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/PhoneConfigurationManager;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVirtualDsdaEnabled(Lcom/android/internal/telephony/PhoneConfigurationManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mVirtualDsdaEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVirtualDsdaEnabled(Lcom/android/internal/telephony/PhoneConfigurationManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mVirtualDsdaEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeEnableCellularDSDASupport(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->maybeEnableCellularDSDASupport()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCapabilityChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySimultaneousCellularCallingSlotsChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifySimultaneousCellularCallingSlotsChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->onMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhoneStatus(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSimultaneousSubIdsFromPhoneIdMappingAndNotify(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updateSimultaneousSubIdsFromPhoneIdMappingAndNotify()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 129
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 132
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    .line 105
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    .line 107
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSimultaneousCellularCallingListeners:Ljava/util/HashSet;

    .line 115
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    .line 122
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mListeners:Ljava/util/Set;

    .line 234
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$1;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 157
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 159
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    .line 161
    const-string v0, "telephony"

    const-string v1, "enable_virtual_dsda"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mVirtualDsdaEnabled:Z

    .line 163
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mNotifier:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    .line 164
    new-instance p1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p2, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    invoke-static {v0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyCapabilityChanged()V

    .line 175
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 177
    array-length p2, p1

    :goto_7d
    if-ge v2, p2, :cond_87

    aget-object v0, p1, v2

    .line 178
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForRadioState(Lcom/android/internal/telephony/Phone;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_87
    return-void
.end method

.method private blacklist broadcastMultiSimConfigChange(I)V
    .registers 4

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSimSlotNumChange numOfActiveModems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 781
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifyMultiSimConfigChange(I)V

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    const-string v1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private declared-synchronized blacklist getCellularStaticPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 3

    monitor-enter p0

    .line 565
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellularStaticPhoneCapability: mStaticCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private blacklist getDefaultCapability()Landroid/telephony/PhoneCapability;
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    .line 225
    sget-object p0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object p0

    .line 227
    :cond_a
    sget-object p0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;
    .registers 2

    .line 304
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v0, :cond_b

    .line 305
    const-string v0, "PhoneCfgMgr"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/PhoneConfigurationManager;
    .registers 4

    .line 139
    const-class v0, Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    if-nez v1, :cond_11

    .line 141
    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    goto :goto_29

    :catchall_f
    move-exception p0

    goto :goto_2d

    .line 143
    :cond_11
    const-string p0, "PhoneCfgMgr"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_29
    sget-object p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sInstance:Lcom/android/internal/telephony/PhoneConfigurationManager;

    monitor-exit v0

    return-object p0

    .line 146
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_f

    throw p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 167
    const-string v0, "telephony"

    .line 168
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$updateSimultaneousSubIdsFromPhoneIdMappingAndNotify$1(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 908
    const-string v0, "PhoneCfgMgr"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 912
    const-string v0, "PhoneCfgMgr"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist maybeEnableCellularDSDASupport()V
    .registers 8

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->getMultiSimProperty()Ljava/util/Optional;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "dsda"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    .line 269
    :goto_21
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 270
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v3

    if-le v3, v2, :cond_47

    .line 273
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getCellularStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/PhoneCapability;->getMaxActiveVoiceSubscriptions()I

    move-result v3

    if-le v3, v2, :cond_47

    goto :goto_48

    :cond_47
    move v2, v1

    :goto_48
    if-eqz v2, :cond_57

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updateSimultaneousCallingSupport()V

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6a

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/internal/telephony/RadioConfig;->registerForSimultaneousCallingSupportStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_7b

    :cond_57
    if-eqz v0, :cond_7b

    .line 282
    const-string v3, "DSDA modem config detected - setting DSDA enabled"

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v3

    :goto_61
    if-ge v1, v4, :cond_75

    aget-object v5, v3, v1

    .line 284
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 286
    :cond_75
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updateSimultaneousSubIdsFromPhoneIdMappingAndNotify()V

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifySimultaneousCellularCallingSlotsChanged()V

    :cond_7b
    :goto_7b
    if-nez v0, :cond_81

    if-eqz v2, :cond_80

    goto :goto_81

    :cond_80
    return-void

    .line 292
    :cond_81
    :goto_81
    const-string v0, "PhoneCfgMgr"

    const-string v1, "maybeEnableCellularDSDASupport: registering mSubscriptionsChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private blacklist maybeOverrideMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability;)Landroid/telephony/PhoneCapability;
    .registers 4

    .line 247
    invoke-virtual {p1}, Landroid/telephony/PhoneCapability;->getLogicalModemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mVirtualDsdaEnabled:Z

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 249
    :goto_11
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->getMultiSimProperty()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "dsda"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez v1, :cond_2b

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return-object p1

    .line 256
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/telephony/PhoneCapability;->getMaxActiveVoiceSubscriptions()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 257
    new-instance v0, Landroid/telephony/PhoneCapability$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/PhoneCapability$Builder;-><init>(Landroid/telephony/PhoneCapability;)V

    .line 258
    invoke-virtual {v0, p0}, Landroid/telephony/PhoneCapability$Builder;->setMaxActiveVoiceSubscriptions(I)Landroid/telephony/PhoneCapability$Builder;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/telephony/PhoneCapability$Builder;->build()Landroid/telephony/PhoneCapability;

    move-result-object p0

    return-object p0
.end method

.method private blacklist notifyCapabilityChanged()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mNotifier:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static blacklist notifyMultiSimConfigChange(I)V
    .registers 2

    .line 751
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist notifySimultaneousCellularCallingSlotsChanged()V
    .registers 5

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifying listeners of changes to simultaneous cellular calling - new state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSimultaneousCellularCallingListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 621
    :try_start_28
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_33

    goto :goto_1c

    :catch_33
    move-exception v1

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Exception encountered when notifying listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    goto :goto_1c

    :cond_49
    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 7

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    .line 664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->setMultiSimProperties(I)V

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->isRebootRequiredForModemConfigChange()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 667
    const-string p1, "onMultiSimConfigChanged: Rebooting."

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 668
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 669
    const-string p1, "Multi-SIM config changed."

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    .line 671
    :cond_22
    const-string v1, "onMultiSimConfigChanged: Rebooting is not required."

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->notifyPhoneFactoryOnMultiSimConfigChanged(Landroid/content/Context;I)V

    .line 673
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->broadcastMultiSimConfigChange(I)V

    const/4 v1, 0x0

    move v2, p1

    :goto_33
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4e

    .line 679
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 682
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    .line 681
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->onSlotActiveStatusChange(Z)V

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_33

    :cond_4e
    if-eqz v1, :cond_57

    .line 692
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onPhoneRemoved()V

    .line 695
    :cond_57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    move v1, v0

    :goto_5e
    if-ge v1, p1, :cond_73

    .line 700
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    .line 701
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForRadioState(Lcom/android/internal/telephony/Phone;)V

    .line 702
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->onSlotActiveStatusChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_73
    if-le p1, v3, :cond_79

    .line 709
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->maybeEnableCellularDSDASupport()V

    goto :goto_84

    .line 712
    :cond_79
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updateSimultaneousSubIdsFromPhoneIdMappingAndNotify()V

    .line 715
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->notifySimultaneousCellularCallingSlotsChanged()V

    .line 722
    :goto_84
    const-string p0, "PhoneCfgMgr"

    if-le p1, v0, :cond_99

    const/4 v0, 0x2

    if-ne p1, v0, :cond_99

    .line 723
    const-string p1, " onMultiSimConfigChanged: DSDS mode enabled; setting VOICE & SMS subId to -1 (No Preference)"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    return-void

    .line 732
    :cond_99
    const-string p1, "onMultiSimConfigChanged: DSDS mode NOT detected.  NOT setting the default VOICE and SMS subId to -1 (No Preference)"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 761
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioState(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 220
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setMultiSimProperties(I)V
    .registers 2

    .line 746
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->setMultiSimProperties(I)V

    return-void
.end method

.method public static blacklist unregisterAllMultiSimConfigChangeRegistrants()V
    .registers 1

    .line 775
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->removeAll()V

    return-void
.end method

.method public static blacklist unregisterForMultiSimConfigChange(Landroid/os/Handler;)V
    .registers 2

    .line 768
    sget-object v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->sMultiSimConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x66

    .line 505
    invoke-static {p0, v2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 507
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist updateSimultaneousSubIdsFromPhoneIdMappingAndNotify()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    .line 207
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda2;-><init>()V

    .line 208
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 209
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return-void

    .line 211
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimultaneousSubIdsFromPhoneIdMapping update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mNotifier:Lcom/android/internal/telephony/DefaultPhoneNotifier;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSubIdsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifySimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;)V
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addToPhoneStatusCache(IZ)V
    .registers 3

    .line 516
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist enablePhone(Lcom/android/internal/telephony/Phone;ZLandroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_8

    .line 436
    const-string p0, "enablePhone failed phone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_8
    iget-object p0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->enableModem(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist getCurrentPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 1

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 2

    .line 843
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_a

    .line 844
    const-string p0, ""

    return-object p0

    .line 847
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 1

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->getMaxActiveDataSubscriptions()I

    move-result p0

    return p0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousVoiceConnections()I
    .registers 1

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->getMaxActiveVoiceSubscriptions()I

    move-result p0

    return p0
.end method

.method public blacklist getPhoneCount()I
    .registers 1

    .line 523
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public blacklist getPhoneStatus(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    if-nez p1, :cond_9

    .line 451
    const-string p0, "getPhoneStatus failed phone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 455
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 459
    :try_start_d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneStatusFromCache(I)Z

    move-result v0
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_11} :catch_1a
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    return v0

    :catchall_15
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    .line 469
    throw v0

    .line 468
    :catch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updatePhoneStatus(Lcom/android/internal/telephony/Phone;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPhoneStatusFromCache(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 495
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhoneStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 497
    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getPhoneStatusFromModem(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .registers 3

    if-nez p1, :cond_7

    .line 484
    const-string p0, "getPhoneStatus failed phone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 486
    :cond_7
    iget-object p0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getSlotsSupportingSimultaneousCellularCalls()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    return-object p0
.end method

.method public declared-synchronized blacklist getStaticPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 5

    monitor-enter p0

    .line 554
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;

    if-nez v0, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_11

    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getDefaultCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_33

    .line 556
    :cond_11
    :goto_11
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->maybeOverrideMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability;)Landroid/telephony/PhoneCapability;

    move-result-object v0

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticPhoneCapability: isDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caps="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_f

    .line 558
    monitor-exit p0

    return-object v0

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_f

    throw v0
.end method

.method public blacklist isRebootRequiredForModemConfigChange()Z
    .registers 1

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mMi:Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;->isRebootRequiredForModemConfigChange()Z

    move-result p0

    return p0
.end method

.method public blacklist isVirtualDsdaEnabled()Z
    .registers 1

    .line 603
    iget-boolean p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mVirtualDsdaEnabled:Z

    return p0
.end method

.method public blacklist registerForSimultaneousCellularCallingSlotsChanged(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 613
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSimultaneousCellularCallingListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist removeListener(Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;)V
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 6

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setModemService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 799
    const-string v0, "persist.radio.allow_mock_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 800
    const-string v2, "ro.boot.radio.allow_mock_modem"

    .line 801
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_30

    if-nez v2, :cond_30

    .line 804
    sget-boolean v0, Lcom/android/internal/telephony/PhoneConfigurationManager;->DEBUG:Z

    if-eqz v0, :cond_2a

    goto :goto_30

    .line 831
    :cond_2a
    const-string p0, "setModemService is not allowed"

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->loge(Ljava/lang/String;)V

    return v1

    .line 805
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-eqz v0, :cond_39

    .line 806
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->setModemService(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    if-nez v0, :cond_42

    .line 810
    const-string p0, "setModemService: switching modem service for radioconfig fail"

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_42
    move v0, v1

    move v2, v0

    .line 814
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_8a

    .line 815
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    if-eqz v3, :cond_56

    .line 816
    iget-object v2, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->setModemService(Ljava/lang/String;)Z

    move-result v2

    :cond_56
    if-nez v2, :cond_87

    .line 820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModemService: switch modem for radio "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fail"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->loge(Ljava/lang/String;)V

    .line 823
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/RadioConfig;->setModemService(Ljava/lang/String;)Z

    move p1, v1

    :goto_78
    if-ge p1, v0, :cond_86

    .line 825
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setModemService(Ljava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_78

    :cond_86
    return v1

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_8a
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized blacklist setStaticPhoneCapability(Landroid/telephony/PhoneCapability;)V
    .registers 4

    monitor-enter p0

    .line 573
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStaticPhoneCapability: mStaticCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 574
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mStaticCapability:Landroid/telephony/PhoneCapability;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 575
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist switchMultiSimConfig(I)V
    .registers 5

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMultiSimConfig: with numOfSims = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PhoneCapability;->getLogicalModemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_3c

    .line 639
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchMultiSimConfig: Phone is not capable of enabling "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sims, exiting!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void

    .line 643
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    if-eq v0, p1, :cond_56

    .line 644
    const-string v0, "switchMultiSimConfig: sending the request for switching"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 647
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/RadioConfig;->setNumOfLiveModems(ILandroid/os/Message;)V

    return-void

    .line 649
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchMultiSimConfig: No need to switch. getNumOfActiveSims is already "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateRadioCapability()V
    .registers 3

    .line 582
    const-string v0, "updateRadioCapability: sending the request for getting PhoneCapability"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getPhoneCapability(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateSimultaneousCallingSupport()V
    .registers 3

    .line 540
    const-string v0, "updateSimultaneousCallingSupport: sending the request for getting the list of logical slots supporting simultaneous cellular calling"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RadioConfig;->updateSimultaneousCallingSupport(Landroid/os/Message;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimultaneousCallingSupport: mSlotsSupportingSimultaneousCellularCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mSlotsSupportingSimultaneousCellularCalls:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->log(Ljava/lang/String;)V

    return-void
.end method
