.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/FeatureUpdates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$InstanceManager;,
        Lcom/android/ims/ImsManager$ImsStatsCallback;,
        Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;,
        Lcom/android/ims/ImsManager$SubscriptionManagerProxy;,
        Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;,
        Lcom/android/ims/ImsManager$DefaultSettingsProxy;,
        Lcom/android/ims/ImsManager$SettingsProxy;,
        Lcom/android/ims/ImsManager$LazyExecutor;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final blacklist ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final blacklist ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final blacklist EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final blacklist EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final blacklist FALSE:Ljava/lang/String; = "false"

.field private static final blacklist IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/ims/ImsManager$InstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IMS_STATS_CALLBACKS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/ims/ImsManager$ImsStatsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final blacklist LOCAL_IMS_CONFIG_KEYS:[I

.field public static final blacklist PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field public static final blacklist PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final blacklist PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final blacklist PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final blacklist PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final blacklist RESPONSE_WAIT_TIME_MS:I = 0xbb8

.field private static final blacklist SUBINFO_PROPERTY_FALSE:I = 0x0

.field private static final blacklist SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field private static final blacklist SYSTEM_PROPERTY_NOT_SET:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsManager"

.field public static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mConfigUpdated:Z

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsConfigListener:Lcom/android/ims/ImsConfigListener;

.field private blacklist mLogTagPostfix:Ljava/lang/String;

.field private blacklist mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/ims/MmTelFeatureConnection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

.field private blacklist mPhoneId:I

.field private final blacklist mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

.field private final blacklist mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$573FYspCxHwkdwJI7GJeCryZsR0(Lcom/android/ims/ImsManager;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->lambda$setRttConfig$6(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$78RgO2witzbvwAieaFkKWqvlQ4w()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Lcom/android/ims/ImsManager;->getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$7Ha_oiEH6bNb9qXwJso80y9WJBQ(Lcom/android/ims/ImsManager;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$isImsNeeded$4(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$99iTh1MzIkdGE1ChpLR4TfiBA5k(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .registers 3

    new-instance v0, Lcom/android/ims/ImsManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$BrkUe0sFUInWqOl9Et1HgjjpPwI(Lcom/android/ims/ImsManager;IILjava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/ImsManager;->lambda$isSupported$0(IILjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IYjjJ4Kz2uZgZ6EnuuVVFGuL8wQ(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$getRegistrationTech$5(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZtl88_qRPTyxiv1Jng3PgzjSSM(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$getImsServiceState$7(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yl6-_mqV0cPO1QmyfhBhebejOzA(Lcom/android/ims/ImsManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$setWfcRoamingSettingInternal$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mlH5IIQgbvcwDC4PnlHsI-OYVLY(Lcom/android/ims/ImsManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$setWfcModeInternal$2(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/ImsManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/ims/ImsManager;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogTagPostfix(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsThreadExecutor(Lcom/android/ims/ImsManager;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 225
    const/16 v0, 0x44

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsManager;->LOCAL_IMS_CONFIG_KEYS:[I

    .line 456
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    .line 458
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    .line 2115
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2116
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 2117
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2118
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p1}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2119
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSettingsProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager$DefaultSettingsProxy;-><init>(Lcom/android/ims/ImsManager-IA;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    .line 2120
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 2122
    new-instance v0, Lcom/android/ims/ImsManager$LazyExecutor;

    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager$LazyExecutor;-><init>(Lcom/android/ims/ImsManager-IA;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2123
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v2}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 2126
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ims/ImsManager;->associate(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 2127
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;Lcom/android/ims/ImsManager$SubscriptionManagerProxy;Lcom/android/ims/ImsManager$SettingsProxy;Landroid/telephony/BinderCacheManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "factory"    # Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;
    .param p4, "subManagerProxy"    # Lcom/android/ims/ImsManager$SubscriptionManagerProxy;
    .param p5, "settingsProxy"    # Lcom/android/ims/ImsManager$SettingsProxy;
    .param p6, "binderCacheManager"    # Landroid/telephony/BinderCacheManager;

    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    .line 2136
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2137
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 2138
    iput-object p3, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 2139
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2140
    iput-object p4, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2141
    iput-object p5, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    .line 2142
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 2145
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2146
    iput-object p6, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 2148
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/ims/ImsManager;->associate(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 2149
    return-void
.end method

.method private static blacklist booleanToPropertyString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "bool"    # Z

    .line 3514
    if-eqz p0, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    return-object v0
.end method

.method private blacklist changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 9
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2674
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2676
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMmTelCapability: changing capabilities for sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2678
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 2679
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v1}, Lcom/android/ims/ImsManager;->getStatsCallback(I)Lcom/android/ims/ImsManager$ImsStatsCallback;

    move-result-object v1

    .line 2680
    .local v1, "cb":Lcom/android/ims/ImsManager$ImsStatsCallback;
    if-nez v1, :cond_35

    .line 2681
    return-void

    .line 2683
    :cond_35
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2684
    .local v3, "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2685
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    .line 2684
    const/4 v6, 0x1

    invoke-interface {v1, v4, v5, v6}, Lcom/android/ims/ImsManager$ImsStatsCallback;->onEnabledMmTelCapabilitiesChanged(IIZ)V

    .line 2686
    .end local v3    # "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_3d

    .line 2688
    :cond_56
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2689
    .local v3, "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2690
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    .line 2689
    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/android/ims/ImsManager$ImsStatsCallback;->onEnabledMmTelCapabilitiesChanged(IIZ)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_76} :catch_79

    .line 2691
    .end local v3    # "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_5e

    .line 2695
    .end local v1    # "cb":Lcom/android/ims/ImsManager$ImsStatsCallback;
    :cond_77
    nop

    .line 2696
    return-void

    .line 2692
    :catch_79
    move-exception v1

    .line 2693
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "changeMmTelCapability(CCR)"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method private blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .registers 6
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3198
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    .line 3200
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    new-instance v1, Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 3201
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :catch_12
    move-exception v0

    .line 3202
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3203
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "createCallSession()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public static blacklist factoryReset(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 3372
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 3373
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 3374
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 3375
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 3377
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "factoryReset: ImsManager null."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    return-void
.end method

.method private blacklist getBooleanCarrierConfig(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 3036
    const/4 v0, 0x0

    .line 3037
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_f

    .line 3039
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3041
    :cond_f
    if-eqz v0, :cond_16

    .line 3042
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3045
    :cond_16
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "logPrefix"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/ims/FeatureConnector$Listener<",
            "Lcom/android/ims/ImsManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation

    .line 510
    .local p3, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 511
    .local v6, "readyFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Lcom/android/ims/FeatureConnector;

    new-instance v4, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "phoneId":I
    .end local p2    # "logPrefix":Ljava/lang/String;
    .end local p3    # "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .local v2, "context":Landroid/content/Context;
    .local v3, "phoneId":I
    .local v5, "logPrefix":Ljava/lang/String;
    .local v7, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    .local v8, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v8}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$ManagerFactory;Ljava/lang/String;Ljava/util/List;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 3178
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private static blacklist getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 3184
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3185
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3186
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3182
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getImsProvisionedBoolNoException(II)Z
    .registers 9
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1663
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1664
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1665
    const-string v1, "getImsProvisionedBoolNoException subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1666
    return v2

    .line 1669
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1670
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1a

    .line 1671
    const-string v3, "getImsProvisionedBoolNoException ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1672
    return v2

    .line 1676
    :cond_1a
    :try_start_1a
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1e} :catch_1f

    return v2

    .line 1677
    :catch_1f
    move-exception v3

    .line 1678
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsProvisionedBoolNoException: operation failed for capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1679
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Returning false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1678
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1680
    return v2
.end method

.method private blacklist getImsThreadExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 3026
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static greylist getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 480
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    monitor-enter v0

    .line 481
    :try_start_3
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager$InstanceManager;

    .line 482
    .local v1, "instanceManager":Lcom/android/ims/ImsManager$InstanceManager;
    if-nez v1, :cond_1d

    .line 483
    new-instance v2, Lcom/android/ims/ImsManager;

    invoke-direct {v2, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 484
    .local v2, "m":Lcom/android/ims/ImsManager;
    new-instance v3, Lcom/android/ims/ImsManager$InstanceManager;

    invoke-direct {v3, v2}, Lcom/android/ims/ImsManager$InstanceManager;-><init>(Lcom/android/ims/ImsManager;)V

    move-object v1, v3

    .line 485
    sget-object v3, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    .end local v2    # "m":Lcom/android/ims/ImsManager;
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_26

    .line 489
    invoke-virtual {v1}, Lcom/android/ims/ImsManager$InstanceManager;->reconnect()V

    .line 490
    invoke-virtual {v1}, Lcom/android/ims/ImsManager$InstanceManager;->getInstance()Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0

    .line 487
    .end local v1    # "instanceManager":Lcom/android/ims/ImsManager$InstanceManager;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist getIntArrayCarrierConfig(Ljava/lang/String;)[I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 3076
    const/4 v0, 0x0

    .line 3077
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_f

    .line 3079
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3081
    :cond_f
    if-eqz v0, :cond_16

    .line 3082
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 3085
    :cond_16
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist getIntCarrierConfig(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 3056
    const/4 v0, 0x0

    .line 3057
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_f

    .line 3059
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3061
    :cond_f
    if-eqz v0, :cond_16

    .line 3062
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3065
    :cond_16
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private blacklist getLocalImsConfigKeyInt(I)I
    .registers 5
    .param p1, "key"    # I

    .line 3556
    const/4 v0, -0x1

    .line 3558
    .local v0, "result":I
    packed-switch p1, :pswitch_data_2c

    goto :goto_a

    .line 3560
    :pswitch_5
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    move v0, v1

    .line 3563
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalImsConfigKeInt() for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3564
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x44
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getLocalImsConfigKeyString(I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # I

    .line 3574
    const-string v0, ""

    .line 3576
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_30

    goto :goto_e

    .line 3578
    :pswitch_6
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v0

    .line 3582
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalImsConfigKeyString() for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3583
    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x44
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3095
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3099
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    .line 3100
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    const/16 v1, 0x6a

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3104
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSubId()I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 3110
    return-object v0

    .line 3105
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to get MmTelFeature when it is still setting up, curr subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3106
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3105
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 3107
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service is still initializing"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3101
    :cond_55
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service is unavailable"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3096
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :cond_5d
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "IMS not supported on device."

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private blacklist getRcsProvisionedBoolNoException(II)Z
    .registers 9
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1689
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1690
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1691
    const-string v1, "getRcsProvisionedBoolNoException subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1692
    return v2

    .line 1695
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1696
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1a

    .line 1697
    const-string v3, "getRcsProvisionedBoolNoException ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1698
    return v2

    .line 1702
    :cond_1a
    :try_start_1a
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getRcsProvisioningStatusForCapability(III)Z

    move-result v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1e} :catch_1f

    return v2

    .line 1703
    :catch_1f
    move-exception v3

    .line 1704
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsProvisionedBoolNoException: operation failed for capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1705
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Returning false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1704
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1706
    return v2
.end method

.method private blacklist getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "subSetting"    # Ljava/lang/String;
    .param p2, "defaultConfigKey"    # Ljava/lang/String;

    .line 1421
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1425
    .local v0, "result":I
    if-ne v0, v2, :cond_11

    .line 1426
    invoke-direct {p0, p2}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .line 1428
    :cond_11
    return v0
.end method

.method private static blacklist getStatsCallback(I)Lcom/android/ims/ImsManager$ImsStatsCallback;
    .registers 3
    .param p0, "phoneId"    # I

    .line 558
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    monitor-enter v0

    .line 559
    :try_start_3
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager$ImsStatsCallback;

    monitor-exit v0

    return-object v1

    .line 560
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist getSubId()I
    .registers 3

    .line 1484
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getSubscriptionId(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getWfcMode(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1317
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1318
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1319
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1320
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v2

    return v2

    .line 1322
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist getWfcMode(Landroid/content/Context;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z

    .line 1364
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1365
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1366
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1367
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    return v2

    .line 1369
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isActiveSubscriptionPresent()Z
    .registers 2

    .line 3719
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-interface {v0}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getActiveSubscriptionIdList()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist isDataEnabled()Z
    .registers 3

    .line 3436
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_b

    .line 3437
    const-string v0, "isDataEnabled: TelephonyManager not available, returning false..."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3438
    const/4 v0, 0x0

    return v0

    .line 3440
    :cond_b
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3441
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result v1

    return v1
.end method

.method private blacklist isEabProvisioned()Z
    .registers 3

    .line 3449
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getRcsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 571
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 572
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 573
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 574
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    return v2

    .line 576
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isEnhanced4gLteModeSettingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isGbaValid()Z
    .registers 6

    .line 1638
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    .line 1640
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 1641
    const-string v0, "isGbaValid: TelephonyManager is null, returning false."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1642
    return v2

    .line 1644
    :cond_14
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1645
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v3

    .line 1646
    .local v3, "efIst":Ljava/lang/String;
    if-nez v3, :cond_2a

    .line 1647
    const-string v2, "isGbaValid - ISF is NULL"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1648
    return v1

    .line 1650
    :cond_2a
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_3c

    .line 1651
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    .line 1652
    .local v1, "result":Z
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGbaValid - GBA capable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ISF="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1653
    return v1

    .line 1655
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v1    # "result":Z
    .end local v3    # "efIst":Ljava/lang/String;
    :cond_5e
    return v1
.end method

.method private blacklist isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z
    .registers 4
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1779
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/ims/ImsManager;)V

    .line 1780
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1779
    return v0
.end method

.method private blacklist isImsNeededForCapability(I)Z
    .registers 7
    .param p1, "capability"    # I

    .line 1787
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_16

    .line 1789
    if-eq p1, v4, :cond_14

    if-eq p1, v2, :cond_14

    const/16 v0, 0x20

    if-eq p1, v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    return v1

    .line 1798
    :cond_16
    if-eq p1, v4, :cond_1b

    if-eq p1, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    return v1
.end method

.method public static blacklist isImsSupportedOnDevice(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.ims"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isImsTurnOffAllowed()Z
    .registers 2

    .line 3237
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3238
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3239
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 3237
    :goto_15
    return v0
.end method

.method private blacklist isLocalImsConfigKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 3652
    sget-object v0, Lcom/android/ims/ImsManager;->LOCAL_IMS_CONFIG_KEYS:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method private blacklist isMmTelProvisioningRequired(II)Z
    .registers 9
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 3462
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3463
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 3464
    const-string v1, "isMmTelProvisioningRequired subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3465
    return v2

    .line 3468
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3469
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1a

    .line 3470
    const-string v3, "isMmTelProvisioningRequired ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3471
    return v2

    .line 3474
    :cond_1a
    const/4 v2, 0x0

    .line 3476
    .local v2, "required":Z
    :try_start_1b
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isProvisioningRequiredForCapability(III)Z

    move-result v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_21

    move v2, v3

    .line 3481
    goto :goto_50

    .line 3478
    :catch_21
    move-exception v3

    .line 3479
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMmTelProvisioningRequired : operation failed capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3480
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3479
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3483
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmTel Provisioning required "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for capability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3484
    return v2
.end method

.method public static greylist-max-r isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 695
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 696
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 697
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 698
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    return v2

    .line 700
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isRcsProvisioningRequired(II)Z
    .registers 9
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 3488
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3489
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 3490
    const-string v1, "isRcsProvisioningRequired subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3491
    return v2

    .line 3494
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3495
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1a

    .line 3496
    const-string v3, "isRcsProvisioningRequired ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3497
    return v2

    .line 3500
    :cond_1a
    const/4 v2, 0x0

    .line 3502
    .local v2, "required":Z
    :try_start_1b
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_21

    move v2, v3

    .line 3507
    goto :goto_50

    .line 3504
    :catch_21
    move-exception v3

    .line 3505
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsProvisioningRequired : operation failed capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3506
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3505
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3509
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rcs Provisioning required "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for capability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3510
    return v2
.end method

.method private blacklist isSubIdValid(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 3714
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-interface {v0, p1}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static blacklist isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 534
    invoke-static {}, Lcom/android/ims/ImsManager;->minimalTelephonyCdmCheck()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.calling"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private blacklist isTurnOffImsAllowedByPlatform()Z
    .registers 5

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.allow_ims_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1123
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2f

    .line 1124
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_28

    goto :goto_2f

    .line 1129
    :cond_28
    const-string v0, "carrier_allow_turnoff_ims_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1126
    :cond_2f
    :goto_2f
    return v3
.end method

.method private blacklist isVoImsOptInEnabled()Z
    .registers 5

    .line 3656
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3657
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 3656
    const-string v2, "voims_opt_in_status"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 3659
    .local v0, "setting":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static greylist-max-r isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 754
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 755
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 756
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 757
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v2

    return v2

    .line 759
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isVolteEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isVolteProvisioned()Z
    .registers 3

    .line 3445
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 863
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 864
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 865
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 866
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 868
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isVolteProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isVtEnabledByPlatform(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 971
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 972
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 973
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 974
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v2

    return v2

    .line 976
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isVtEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isVtEnabledByUser(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1008
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1010
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1011
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v2

    return v2

    .line 1013
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isVtEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isVtProvisioned()Z
    .registers 3

    .line 3458
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVtProvisionedOnDevice(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 941
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 942
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 943
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 944
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 946
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isVtProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1577
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1578
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1579
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1580
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    return v2

    .line 1582
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isWfcEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isWfcEnabledByUser(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1140
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1142
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1143
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    return v2

    .line 1145
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isWfcEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isWfcProvisioned()Z
    .registers 2

    .line 3454
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isWfcProvisionedOnDevice(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 904
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 905
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 906
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 907
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 909
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isWfcProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1506
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1508
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_14

    .line 1509
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v2

    return v2

    .line 1511
    :cond_14
    const-string v2, "ImsManager"

    const-string v3, "isWfcRoamingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v2, 0x0

    return v2
.end method

.method private synthetic blacklist lambda$getImsServiceState$7(Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "result"    # Ljava/util/function/Consumer;

    .line 3014
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_b} :catch_c

    .line 3018
    goto :goto_15

    .line 3015
    :catch_c
    move-exception v0

    .line 3017
    .local v0, "e":Lcom/android/ims/ImsException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3019
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_15
    return-void
.end method

.method private synthetic blacklist lambda$getRegistrationTech$5(Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 2473
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0

    .line 2474
    .local v0, "tech":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2478
    .end local v0    # "tech":I
    goto :goto_22

    .line 2475
    :catch_14
    move-exception v0

    .line 2476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getRegistrationTech(C): no connection to ImsService."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2477
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private synthetic blacklist lambda$isImsNeeded$4(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 1780
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isImsNeededForCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isImsOverNrEnabledByPlatform$1(I)Z
    .registers 2
    .param p0, "cap"    # I

    .line 851
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic blacklist lambda$isLocalImsConfigKey$9(II)Z
    .registers 3
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 3652
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private synthetic blacklist lambda$isSupported$0(IILjava/util/function/Consumer;)V
    .registers 5
    .param p1, "transportType"    # I
    .param p2, "capability"    # I
    .param p3, "result"    # Ljava/util/function/Consumer;

    .line 769
    const/4 v0, 0x1

    .line 784
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 769
    packed-switch p1, :pswitch_data_6a

    goto :goto_61

    .line 790
    :pswitch_9
    sparse-switch p2, :sswitch_data_72

    goto :goto_61

    .line 804
    :sswitch_d
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 805
    return-void

    .line 800
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 801
    return-void

    .line 796
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 797
    return-void

    .line 792
    :sswitch_29
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 793
    return-void

    .line 772
    :pswitch_35
    sparse-switch p2, :sswitch_data_84

    .line 788
    goto :goto_61

    .line 784
    :sswitch_39
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 785
    return-void

    .line 780
    :sswitch_3d
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 781
    return-void

    .line 777
    :sswitch_49
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 778
    return-void

    .line 774
    :sswitch_55
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 775
    return-void

    .line 812
    :goto_61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 813
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_9
    .end packed-switch

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_1d
        0x4 -> :sswitch_11
        0x8 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_49
        0x4 -> :sswitch_3d
        0x8 -> :sswitch_39
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$registerFeatureCallback$8(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2
    .param p0, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3118
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 3120
    :goto_4
    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_4

    .line 3121
    :goto_7
    return-void
.end method

.method private synthetic blacklist lambda$setRttConfig$6(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 2740
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting RTT enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_1f
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2745
    goto :goto_41

    .line 2743
    :catch_20
    move-exception v0

    .line 2744
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set RTT value enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2746
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_41
    return-void
.end method

.method private synthetic blacklist lambda$setWfcModeInternal$2(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1491
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1495
    goto :goto_b

    .line 1493
    :catch_a
    move-exception v0

    .line 1496
    :goto_b
    return-void
.end method

.method private synthetic blacklist lambda$setWfcRoamingSettingInternal$3(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1560
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1564
    goto :goto_b

    .line 1562
    :catch_a
    move-exception v0

    .line 1565
    :goto_b
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3227
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    return-void
.end method

.method private static blacklist minimalTelephonyCdmCheck()Z
    .registers 2

    .line 525
    const-string v0, "ro.vendor.api_level"

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 527
    .local v0, "vendorApiLevel":I
    const/16 v1, 0x23

    if-lt v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist overrideWfcRoamingModeWhileUsingNTN()Z
    .registers 5

    .line 3747
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3748
    return v1

    .line 3751
    :cond_6
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3752
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 3753
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    if-nez v2, :cond_17

    .line 3754
    return v1

    .line 3757
    :cond_17
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3758
    return v1

    .line 3761
    :cond_1e
    const-string v1, "override_wfc_roaming_mode_while_using_ntn_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist reevaluateCapabilities()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1736
    const-string v0, "reevaluateCapabilities"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 1737
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1738
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    .line 1739
    .local v1, "isNonTty":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVoWifiEnabled()Z

    move-result v2

    .line 1740
    .local v2, "isNonTtyWifi":Z
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1741
    invoke-direct {p0, v0, v2}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1742
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1743
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1744
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1745
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCallComposerFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    goto :goto_2b

    .line 1747
    :cond_28
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCallComposerFeatureValueLegacy(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1752
    :goto_2b
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->updateRttConfigValue()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isActiveSubscriptionPresent()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    .line 1755
    .local v3, "isImsNeededForRtt":Z
    :goto_3a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1758
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1760
    if-nez v3, :cond_58

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_58

    .line 1769
    :cond_4f
    const-string v4, "reevaluateCapabilities: turnOffIms"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1770
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_60

    .line 1765
    :cond_58
    :goto_58
    const-string v4, "reevaluateCapabilities: turnOnIms"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1772
    :goto_60
    return-void
.end method

.method public static blacklist setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 619
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 620
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 621
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 622
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 624
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setEnhanced4gLteModeSetting: ImsManager null, value not set."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method public static blacklist setImsStatsCallback(ILcom/android/ims/ImsManager$ImsStatsCallback;)V
    .registers 4
    .param p0, "phoneId"    # I
    .param p1, "cb"    # Lcom/android/ims/ImsManager$ImsStatsCallback;

    .line 544
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    monitor-enter v0

    .line 545
    if-nez p1, :cond_b

    .line 546
    :try_start_5
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_10

    .line 548
    :cond_b
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    :goto_10
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist setLocalImsConfigKeyInt(II)I
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3594
    const/4 v0, -0x1

    .line 3596
    .local v0, "result":I
    packed-switch p1, :pswitch_data_42

    goto :goto_c

    .line 3598
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/ims/ImsManager;->setVoImsOptInSetting(I)I

    move-result v0

    .line 3599
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 3602
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalImsConfigKeyInt() for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3608
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 3609
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 3610
    .local v2, "config":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyIntImsConfigChanged(II)V

    .line 3612
    return v0

    :pswitch_data_42
    .packed-switch 0x44
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist setLocalImsConfigKeyString(ILjava/lang/String;)I
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3624
    const/4 v0, -0x1

    .line 3626
    .local v0, "result":I
    packed-switch p1, :pswitch_data_46

    goto :goto_10

    .line 3628
    :pswitch_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setVoImsOptInSetting(I)I

    move-result v0

    .line 3629
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 3632
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalImsConfigKeyString() for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3638
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 3639
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 3640
    .local v2, "config":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    .line 3642
    return v0

    :pswitch_data_46
    .packed-switch 0x44
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist setRttConfig(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2736
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 2737
    :cond_4
    const/4 v0, 0x0

    :goto_5
    nop

    .line 2738
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/ims/ImsManager;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2747
    return-void
.end method

.method private blacklist setVoImsOptInSetting(I)I
    .registers 6
    .param p1, "value"    # I

    .line 3663
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3664
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 3666
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3663
    const-string v3, "voims_opt_in_status"

    invoke-interface {v0, v1, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3667
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setVtSetting(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1071
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1072
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1073
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 1074
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    .line 1076
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setVtSetting: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method

.method public static blacklist setWfcMode(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .line 1340
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1341
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1342
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 1343
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1345
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method

.method public static blacklist setWfcMode(Landroid/content/Context;IZ)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1440
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1441
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1442
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 1443
    invoke-virtual {v1, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1445
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-void
.end method

.method private blacklist setWfcModeInternal(I)V
    .registers 5
    .param p1, "wfcMode"    # I

    .line 1488
    move v0, p1

    .line 1489
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1497
    return-void
.end method

.method public static blacklist setWfcRoamingSetting(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1535
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1536
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1537
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 1538
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSetting(Z)V

    .line 1540
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setWfcRoamingSetting: ImsManager null, value not set."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void
.end method

.method private blacklist setWfcRoamingSettingInternal(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1555
    if-eqz p1, :cond_4

    .line 1556
    const/4 v0, 0x1

    goto :goto_5

    .line 1557
    :cond_4
    const/4 v0, 0x0

    :goto_5
    nop

    .line 1558
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1566
    return-void
.end method

.method public static blacklist setWfcSetting(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1173
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1174
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1175
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_12

    .line 1176
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 1178
    :cond_12
    const-string v2, "ImsManager"

    const-string v3, "setWfcSetting: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void
.end method

.method private blacklist turnOffIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3247
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    .line 3248
    return-void
.end method

.method private blacklist turnOnIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3233
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    .line 3234
    return-void
.end method

.method private blacklist updateCallComposerFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 12
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2038
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCallComposerEnabledByUser()Z

    move-result v0

    .line 2039
    .local v0, "isCallComposerEnabledByUser":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isBusinessOnlyCallComposerEnabledByUser()Z

    move-result v1

    .line 2041
    .local v1, "isBusinessComposerEnabledByUser":Z
    const-string v2, "supports_call_composer_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    .line 2043
    .local v2, "isCallComposerEnabledByConfig":Z
    const-string v3, "supports_business_call_composer_bool"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 2046
    .local v3, "isBusinessComposerEnabledByConfig":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1c

    if-eqz v2, :cond_1c

    move v6, v4

    goto :goto_1d

    :cond_1c
    move v6, v5

    .line 2048
    .local v6, "isCallComposerFeatureOn":Z
    :goto_1d
    if-eqz v1, :cond_22

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v4, v5

    .line 2051
    .local v4, "isBusinessOnlyComposerFeatureOn":Z
    :goto_23
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v7

    .line 2053
    .local v7, "nrAvailable":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallComposerFeatureValue:  isCallComposerEnabledByUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCallComposerEnabledByConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCallComposerFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessOnlyComposerFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessComposerEnabledByUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessComposerEnabledByConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nrAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2063
    const/16 v8, 0x20

    const/16 v9, 0x10

    if-eqz v6, :cond_86

    .line 2064
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2067
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_95

    .line 2070
    :cond_86
    if-eqz v4, :cond_8f

    .line 2071
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2074
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    goto :goto_95

    .line 2078
    :cond_8f
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2081
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2087
    :goto_95
    const/4 v5, 0x3

    if-eqz v6, :cond_a1

    if-eqz v7, :cond_a1

    .line 2088
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2091
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_b2

    .line 2094
    :cond_a1
    if-eqz v4, :cond_ac

    if-eqz v7, :cond_ac

    .line 2095
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2098
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    goto :goto_b2

    .line 2102
    :cond_ac
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2105
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2109
    :goto_b2
    return-void
.end method

.method private blacklist updateCallComposerFeatureValueLegacy(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2001
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCallComposerEnabledByUser()Z

    move-result v0

    .line 2002
    .local v0, "isUserSetEnabled":Z
    const-string v1, "supports_call_composer_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 2005
    .local v1, "isCarrierConfigEnabled":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    move v3, v2

    .line 2006
    .local v3, "isFeatureOn":Z
    :goto_12
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v4

    .line 2008
    .local v4, "nrAvailable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallComposerFeatureValue: isUserSetEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCarrierConfigEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isFeatureOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nrAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2013
    const/16 v5, 0x10

    if-eqz v3, :cond_52

    .line 2014
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_55

    .line 2018
    :cond_52
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2022
    :goto_55
    const/4 v2, 0x3

    if-eqz v3, :cond_5e

    if-eqz v4, :cond_5e

    .line 2023
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_61

    .line 2027
    :cond_5e
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2031
    :goto_61
    return-void
.end method

.method private blacklist updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1943
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 1944
    invoke-virtual {p1, v2, v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_f

    .line 1948
    :cond_c
    invoke-virtual {p1, v2, v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1952
    :goto_f
    return-void
.end method

.method private blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "configs"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3723
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3725
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    .line 3726
    .local v1, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v1, :cond_1a

    .line 3731
    :try_start_a
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 3735
    nop

    .line 3736
    return-void

    .line 3732
    :catch_f
    move-exception v2

    .line 3733
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "updateImsCarrierConfigs()"

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v2, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 3727
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private blacklist updateRttConfigValue()Z
    .registers 12

    .line 2702
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isActiveSubscriptionPresent()Z

    move-result v0

    .line 2703
    .local v0, "isActiveSubscriptionPresent":Z
    nop

    .line 2704
    const-string v1, "rtt_supported_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    move v1, v3

    goto :goto_15

    :cond_14
    :goto_14
    move v1, v2

    .line 2707
    .local v1, "isCarrierSupported":Z
    :goto_15
    nop

    .line 2708
    const-string v4, "default_rtt_mode_int"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v4

    .line 2709
    .local v4, "defaultRttMode":I
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "rtt_calling_mode"

    invoke-interface {v5, v6, v7, v4}, Lcom/android/ims/ImsManager$SettingsProxy;->getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2711
    .local v5, "rttMode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultRttMode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " rttMode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2712
    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v6

    .line 2714
    .local v6, "isRttAlwaysOnCarrierConfig":Z
    if-eqz v6, :cond_5f

    if-ne v5, v4, :cond_5f

    .line 2715
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v9, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-interface {v8, v9, v7, v4}, Lcom/android/ims/ImsManager$SettingsProxy;->putSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2719
    :cond_5f
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v9, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2720
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2719
    invoke-interface {v8, v9, v7, v3}, Lcom/android/ims/ImsManager$SettingsProxy;->getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6f

    move v7, v2

    goto :goto_70

    :cond_6f
    move v7, v3

    .line 2722
    .local v7, "isRttUiSettingEnabled":Z
    :goto_70
    if-nez v7, :cond_77

    if-eqz v6, :cond_75

    goto :goto_77

    :cond_75
    move v8, v3

    goto :goto_78

    :cond_77
    :goto_77
    move v8, v2

    .line 2723
    .local v8, "shouldImsRttBeOn":Z
    :goto_78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update RTT: settings value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " always-on carrierconfig: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isActiveSubscriptionPresent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2727
    if-eqz v1, :cond_a8

    .line 2728
    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    goto :goto_ab

    .line 2730
    :cond_a8
    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    .line 2732
    :goto_ab
    if-eqz v1, :cond_b0

    if-eqz v8, :cond_b0

    goto :goto_b1

    :cond_b0
    move v2, v3

    :goto_b1
    return v2
.end method

.method private blacklist updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 11
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1956
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    .line 1961
    .local v0, "isCarrierSupported":Z
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_18

    .line 1962
    const-string v3, "carrier_ut_provisioning_required_bool"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_18

    :cond_16
    move v3, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v3, v4

    .line 1965
    .local v3, "requiresProvisioning":Z
    :goto_19
    const/4 v5, 0x1

    .line 1966
    .local v5, "isProvisioned":Z
    if-eqz v3, :cond_34

    .line 1967
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1971
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_33

    .line 1972
    :try_start_22
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v7

    invoke-interface {v6, v7, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v7
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_2c

    move v5, v7

    .end local v5    # "isProvisioned":Z
    .local v7, "isProvisioned":Z
    goto :goto_33

    .line 1976
    .end local v7    # "isProvisioned":Z
    .restart local v5    # "isProvisioned":Z
    :catch_2c
    move-exception v7

    .line 1977
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "updateUtFeatureValue: couldn\'t reach telephony! returning provisioned"

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    goto :goto_34

    .line 1978
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    nop

    .line 1980
    .end local v6    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_34
    :goto_34
    if-eqz v0, :cond_39

    if-eqz v5, :cond_39

    goto :goto_3a

    :cond_39
    move v4, v2

    .line 1982
    .local v4, "isFeatureOn":Z
    :goto_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUtFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isProvisioned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1986
    if-eqz v4, :cond_6a

    .line 1987
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_6d

    .line 1991
    :cond_6a
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1995
    :goto_6d
    return-void
.end method

.method private blacklist updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .registers 14
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1847
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    .line 1848
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    .line 1849
    .local v1, "vtEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 1850
    .local v2, "advancedEnabled":Z
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v3

    .line 1851
    .local v3, "isDataEnabled":Z
    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    .line 1853
    .local v4, "ignoreDataEnabledChanged":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v5

    .line 1856
    .local v5, "isProvisioned":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    if-eqz p2, :cond_2b

    if-eqz v5, :cond_2b

    if-eqz v2, :cond_2b

    if-nez v4, :cond_29

    if-eqz v3, :cond_2b

    :cond_29
    const/4 v7, 0x1

    goto :goto_2c

    :cond_2b
    move v7, v6

    .line 1858
    .local v7, "isLteFeatureOn":Z
    :goto_2c
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v8

    .line 1860
    .local v8, "nrAvailable":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateVideoCallFeatureValue: available = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vtenabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", advancedCallEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nonTTY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", data enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", provisioned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isLteFeatureOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nrAvailable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1869
    const/4 v9, 0x2

    if-eqz v7, :cond_93

    .line 1870
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_96

    .line 1875
    :cond_93
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1881
    :goto_96
    const/4 v6, 0x3

    if-eqz v7, :cond_9f

    if-eqz v8, :cond_9f

    .line 1882
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_a2

    .line 1886
    :cond_9f
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1890
    :goto_a2
    return-void
.end method

.method private blacklist updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .registers 12
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1810
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    .line 1811
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 1812
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v2

    .line 1813
    .local v2, "isProvisioned":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    if-eqz p2, :cond_18

    if-eqz v2, :cond_18

    move v5, v4

    goto :goto_19

    :cond_18
    move v5, v3

    .line 1814
    .local v5, "voLteFeatureOn":Z
    :goto_19
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v6

    .line 1816
    .local v6, "voNrAvailable":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVoiceCellFeatureValue: available = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nonTTY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", provisioned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", voLteFeatureOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", voNrAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1823
    if-eqz v5, :cond_6b

    .line 1824
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_6e

    .line 1828
    :cond_6b
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1832
    :goto_6e
    const/4 v3, 0x3

    if-eqz v5, :cond_77

    if-eqz v6, :cond_77

    .line 1833
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_7a

    .line 1837
    :cond_77
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1841
    :goto_7a
    return-void
.end method

.method private blacklist updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .registers 13
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1897
    const/4 v0, 0x0

    .line 1898
    .local v0, "isNetworkRoaming":Z
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_b

    .line 1899
    const-string v1, "updateVoiceWifiFeatureAndProvisionedValues: TelephonyManager is null, assuming not roaming."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    goto :goto_19

    .line 1902
    :cond_b
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1903
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1906
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_19
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    .line 1907
    .local v1, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    .line 1908
    .local v2, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v3

    .line 1909
    .local v3, "isProvisioned":Z
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 1910
    .local v4, "mode":I
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v5

    .line 1911
    .local v5, "roaming":Z
    const/4 v6, 0x1

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v3, :cond_36

    move v7, v6

    goto :goto_37

    :cond_36
    const/4 v7, 0x0

    .line 1913
    .local v7, "isFeatureOn":Z
    :goto_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", roaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isNonTtyWifi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1921
    if-eqz v7, :cond_91

    if-eqz p2, :cond_91

    .line 1922
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_94

    .line 1926
    :cond_91
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1931
    :goto_94
    if-nez v7, :cond_98

    .line 1932
    const/4 v4, 0x1

    .line 1933
    const/4 v5, 0x0

    .line 1935
    :cond_98
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1936
    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1937
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3289
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3293
    nop

    .line 3294
    return-void

    .line 3290
    :catch_d
    move-exception v0

    .line 3291
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSms()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist acknowledgeSms(III[B)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3298
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III[B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3302
    nop

    .line 3303
    return-void

    .line 3299
    :catch_d
    move-exception v0

    .line 3300
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSms()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3307
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSmsReport(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3311
    nop

    .line 3312
    return-void

    .line 3308
    :catch_d
    move-exception v0

    .line 3309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSmsReport()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2349
    if-eqz p1, :cond_22

    .line 2353
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2355
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 2356
    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 2357
    const-string v1, "Capability Callback registered."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_15} :catch_17

    .line 2362
    nop

    .line 2363
    return-void

    .line 2359
    :catch_17
    move-exception v1

    .line 2360
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "addCapabilitiesCallback(IF)"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 2350
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    if-eqz p1, :cond_13

    .line 2394
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 2395
    const-string v0, "Capability Callback registered for subscription."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2396
    return-void

    .line 2392
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2318
    if-eqz p1, :cond_13

    .line 2321
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2322
    const-string v0, "Emergency registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2324
    return-void

    .line 2319
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "emergency registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 2439
    if-eqz p1, :cond_13

    .line 2443
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 2444
    const-string v0, "Capability Callback registered for subscription."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2445
    return-void

    .line 2440
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2248
    if-eqz p1, :cond_26

    .line 2253
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 2254
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2255
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_19} :catch_1b

    .line 2260
    nop

    .line 2261
    return-void

    .line 2257
    :catch_1b
    move-exception v0

    .line 2258
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "addRegistrationCallback(IRIB)"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 2249
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2287
    if-eqz p1, :cond_13

    .line 2290
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2291
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2293
    return-void

    .line 2288
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    .registers 3
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2209
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V

    .line 2210
    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2222
    if-eqz p1, :cond_1b

    .line 2225
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 2227
    new-instance v0, Lcom/android/ims/ImsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConnectionStateListener;)V

    .line 2233
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2227
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2234
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2235
    return-void

    .line 2223
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist associate(Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 12
    .param p1, "c"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 3162
    if-nez p1, :cond_17

    .line 3163
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    .end local p2    # "subId":I
    .local v4, "subId":I
    invoke-interface/range {v1 .. v8}, Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;->create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_33

    .line 3166
    .end local v4    # "subId":I
    .restart local p2    # "subId":I
    :cond_17
    move v4, p2

    .end local p2    # "subId":I
    .restart local v4    # "subId":I
    iget-object p2, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    iget-object v0, p1, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    .line 3167
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v5

    iget-object v6, p1, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    iget-object v7, p1, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    iget-object v8, p1, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    .line 3166
    invoke-interface/range {v1 .. v8}, Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;->create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3170
    :goto_33
    return-void
.end method

.method public varargs blacklist changeMmTelCapability(ZI[I)V
    .registers 8
    .param p1, "isEnabled"    # Z
    .param p2, "capability"    # I
    .param p3, "radioTechs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2660
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2661
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 2662
    array-length v2, p3

    :goto_9
    if-ge v1, v2, :cond_1e

    aget v3, p3, v1

    .line 2663
    .local v3, "tech":I
    invoke-virtual {v0, p2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2662
    .end local v3    # "tech":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2666
    :cond_13
    array-length v2, p3

    :goto_14
    if-ge v1, v2, :cond_1e

    aget v3, p3, v1

    .line 2667
    .restart local v3    # "tech":I
    invoke-virtual {v0, p2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2666
    .end local v3    # "tech":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2670
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2671
    return-void
.end method

.method public blacklist close()V
    .registers 2

    .line 2486
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 2487
    return-void
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 8
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2535
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2538
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2539
    :catch_9
    move-exception v1

    .line 2540
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "createCallProfile()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist createOrGetSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2501
    const-string v0, "getSupplementaryServiceConfiguration()"

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 2503
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_6
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->createOrGetUtInterface()Lcom/android/ims/ImsUt;

    move-result-object v2

    .line 2504
    .local v2, "iUt":Lcom/android/ims/ImsUt;
    if-eqz v2, :cond_e

    .line 2511
    nop

    .line 2512
    return-object v2

    .line 2505
    :cond_e
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x321

    invoke-direct {v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .end local p0    # "this":Lcom/android/ims/ImsManager;
    throw v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_16

    .line 2508
    .end local v2    # "iUt":Lcom/android/ims/ImsUt;
    .restart local v1    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    :catch_16
    move-exception v2

    .line 2509
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3671
    const-string v0, "ImsManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  device supports IMS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfigUpdated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImsServiceProxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ignoreDataEnabledChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isGbaValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsTurnOffAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVoImsOptInEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3688
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3687
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode(non-roaming) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode(roaming) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcRoamingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isCrossSimEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isCrossSimCallingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsOverNrEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3705
    return-void
.end method

.method public blacklist factoryReset()V
    .registers 6

    .line 3386
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3387
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factoryReset: invalid sub id, can not reset siminfo db settings; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3390
    return-void

    .line 3393
    :cond_21
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3395
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3393
    const-string v4, "volte_vt_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3398
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3400
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3398
    const-string v4, "wfc_ims_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3403
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3405
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3403
    const-string v4, "wfc_ims_mode"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3408
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3410
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3408
    const-string v4, "wfc_ims_roaming_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3413
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3415
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3413
    const-string v4, "wfc_ims_roaming_mode"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3419
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3421
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3419
    const-string v3, "vt_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3424
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3425
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3424
    const-string v3, "ims_rcs_uce_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3429
    :try_start_70
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_73
    .catch Lcom/android/ims/ImsException; {:try_start_70 .. :try_end_73} :catch_74

    .line 3432
    goto :goto_8b

    .line 3430
    :catch_74
    move-exception v1

    .line 3431
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factoryReset, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3433
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_8b
    return-void
.end method

.method public blacklist getConfigInt(I)I
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3518
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3519
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyInt(I)I

    move-result v0

    return v0

    .line 3521
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConfig;->getConfigInt(I)I

    move-result v0

    return v0
.end method

.method public greylist getConfigInterface()Lcom/android/ims/ImsConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2645
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2647
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    .line 2648
    .local v1, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v1, :cond_10

    .line 2652
    new-instance v2, Lcom/android/ims/ImsConfig;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsConfig;-><init>(Landroid/telephony/ims/aidl/IImsConfig;)V

    return-object v2

    .line 2649
    :cond_10
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public blacklist getConfigString(I)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3526
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3527
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3529
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3259
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3260
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    .line 3262
    .local v1, "iEcbm":Lcom/android/ims/ImsEcbm;
    if-eqz v1, :cond_b

    .line 3266
    return-object v1

    .line 3263
    :cond_b
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x385

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public blacklist getImsServiceState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2976
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2977
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v1

    return v1
.end method

.method public blacklist getImsServiceState(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3012
    .local p1, "result":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3020
    return-void
.end method

.method public blacklist getRegistrationTech()I
    .registers 3

    .line 2463
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2464
    :catch_d
    move-exception v0

    .line 2465
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getRegistrationTech: no connection to ImsService."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2466
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getRegistrationTech(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2471
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2480
    return-void
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3316
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 3317
    :catch_d
    move-exception v0

    .line 3318
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getSmsFormat()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getWfcMode()I
    .registers 2

    .line 1331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0
.end method

.method public blacklist getWfcMode(Z)I
    .registers 5
    .param p1, "roaming"    # Z

    .line 1381
    if-nez p1, :cond_2e

    .line 1384
    const-string v0, "editable_wfc_mode_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_mode_int"

    if-nez v0, :cond_11

    .line 1385
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .local v0, "setting":I
    goto :goto_17

    .line 1389
    .end local v0    # "setting":I
    :cond_11
    const-string v0, "wfc_ims_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1392
    .restart local v0    # "setting":I
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_74

    .line 1394
    .end local v0    # "setting":I
    :cond_2e
    const-string v0, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_5e

    .line 1397
    .end local v0    # "setting":I
    :cond_3c
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->overrideWfcRoamingModeWhileUsingNTN()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1398
    const-string v0, "getWfcMode (roaming) - override Wfc roaming mode to WIFI_PREFERRED"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1400
    const/4 v0, 0x2

    .restart local v0    # "setting":I
    goto :goto_5e

    .line 1401
    .end local v0    # "setting":I
    :cond_49
    const-string v0, "editable_wfc_roaming_mode_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    if-nez v0, :cond_58

    .line 1403
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_5e

    .line 1406
    .end local v0    # "setting":I
    :cond_58
    const-string v0, "wfc_ims_roaming_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1410
    .restart local v0    # "setting":I
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1412
    :goto_74
    return v0
.end method

.method public blacklist invalidate()V
    .registers 2

    .line 3174
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    .line 3175
    return-void
.end method

.method public blacklist isBusinessOnlyCallComposerEnabledByUser()Z
    .registers 5

    .line 1052
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1053
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1054
    const-string v2, "isBusinessOnlyCallComposerEnabledByUser: TelephonyManager is null"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1055
    return v1

    .line 1057
    :cond_13
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1058
    const-string v2, "isBusinessOnlyCallComposerEnabledByUser: FEATURE_TELEPHONY_CALLING not supported, returning false"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1060
    return v1

    .line 1062
    :cond_21
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public blacklist isCallComposerEnabledByUser()Z
    .registers 4

    .line 1035
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1036
    const-string v0, "isCallComposerEnabledByUser: TelephonyManager is null, returning false"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1037
    return v1

    .line 1039
    :cond_b
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1040
    const-string v0, "isCallComposerEnabledByUser: FEATURE_TELEPHONY_CALLING not supported, returning false"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1042
    return v1

    .line 1044
    :cond_19
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public blacklist isCapable(J)Z
    .registers 8
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2897
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2899
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->isCapable(J)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2900
    :catch_9
    move-exception v1

    .line 2901
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "isCapable()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist isCrossSimCallingEnabled()Z
    .registers 6

    .line 1237
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabledByUser()Z

    move-result v0

    .line 1238
    .local v0, "userEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimEnabledByPlatform()Z

    move-result v1

    .line 1239
    .local v1, "platformEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v2

    .line 1241
    .local v2, "isProvisioned":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCrossSimCallingEnabled: platformEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", provisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1244
    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    if-eqz v2, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    return v3
.end method

.method public blacklist isCrossSimCallingEnabledByUser()Z
    .registers 5

    .line 1220
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1221
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1220
    const-string v2, "cross_sim_calling_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1225
    .local v0, "setting":I
    const/4 v1, 0x0

    if-ne v0, v3, :cond_11

    .line 1226
    return v1

    .line 1228
    :cond_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method public blacklist isCrossSimEnabledByPlatform()Z
    .registers 2

    .line 1614
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1615
    const-string v0, "carrier_cross_sim_ims_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1618
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEabProvisionedOnDevice()Z
    .registers 3

    .line 887
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->isRcsProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 888
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isEabProvisioned()Z

    move-result v0

    return v0

    .line 891
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isEnhanced4gLteModeSettingEnabledByUser()Z
    .registers 8

    .line 592
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 593
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 592
    const-string v2, "volte_vt_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, "setting":I
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 597
    .local v1, "onByDefault":Z
    nop

    .line 598
    const-string v2, "editable_enhanced_4g_lte_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_29

    .line 599
    const-string v2, "hide_enhanced_4g_lte_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    move v2, v4

    goto :goto_2a

    :cond_29
    :goto_29
    move v2, v5

    .line 600
    .local v2, "isUiUnEditable":Z
    :goto_2a
    if-ne v0, v3, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    .line 605
    .local v3, "isSettingNotInitialized":Z
    :goto_2f
    if-nez v2, :cond_33

    if-eqz v3, :cond_3a

    :cond_33
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 606
    return v1

    .line 608
    :cond_3a
    if-ne v0, v5, :cond_3d

    move v4, v5

    :cond_3d
    return v4
.end method

.method public blacklist isImsOverNrEnabledByPlatform()Z
    .registers 5

    .line 847
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getIntArrayCarrierConfig(Ljava/lang/String;)[I

    move-result-object v0

    .line 849
    .local v0, "nrCarrierCaps":[I
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 850
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 851
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    .line 852
    .local v2, "voNrCarrierSupported":Z
    if-nez v2, :cond_1a

    return v1

    .line 853
    :cond_1a
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    return v1
.end method

.method public blacklist isNonTtyOrTtyOnVoWifiEnabled()Z
    .registers 4

    .line 731
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoWifiCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 732
    return v1

    .line 735
    :cond_8
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 736
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1a

    .line 737
    const-string v2, "isNonTtyOrTtyOnVoWifiEnabled: telecom not available"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 738
    return v1

    .line 740
    :cond_1a
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public blacklist isNonTtyOrTtyOnVolteEnabled()Z
    .registers 4

    .line 709
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoLteCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 710
    return v1

    .line 713
    :cond_8
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 714
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1a

    .line 715
    const-string v2, "isNonTtyOrTtyOnVolteEnabled: telecom not available"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 716
    return v1

    .line 718
    :cond_1a
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public blacklist isServiceAvailable()Z
    .registers 2

    .line 2155
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist isServiceReady()Z
    .registers 2

    .line 2162
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    return v0
.end method

.method public blacklist isSuppServicesOverUtEnabledByPlatform()Z
    .registers 4

    .line 1622
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 1623
    .local v0, "cardState":I
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    .line 1625
    return v2

    .line 1627
    :cond_d
    const-string v1, "carrier_supports_ss_over_ut_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1628
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 1627
    :goto_1e
    return v2
.end method

.method public blacklist isSupported(IILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "transportType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 768
    .local p3, "result":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsManager;IILjava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public blacklist isTtyOnVoLteCapable()Z
    .registers 2

    .line 722
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isTtyOnVoWifiCapable()Z
    .registers 2

    .line 744
    const-string v0, "carrier_vowifi_tty_supported_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isVolteEnabledByPlatform()Z
    .registers 5

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 825
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_51

    .line 827
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_28

    goto :goto_51

    .line 832
    :cond_28
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyInt(I)I

    move-result v0

    if-ne v0, v3, :cond_31

    .line 834
    return v3

    .line 837
    :cond_31
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 839
    const-string v0, "carrier_volte_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 840
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 837
    :goto_50
    return v3

    .line 829
    :cond_51
    :goto_51
    return v3
.end method

.method public blacklist isVolteProvisionedOnDevice()Z
    .registers 3

    .line 876
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 877
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0

    .line 880
    :cond_d
    return v1
.end method

.method public blacklist isVtEnabledByPlatform()Z
    .registers 5

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 990
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_48

    .line 991
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_28

    goto :goto_48

    .line 996
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 998
    const-string v0, "carrier_vt_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 999
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    .line 996
    :goto_47
    return v3

    .line 993
    :cond_48
    :goto_48
    return v3
.end method

.method public blacklist isVtEnabledByUser()Z
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1023
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1022
    const-string v2, "vt_ims_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1027
    .local v0, "setting":I
    const/4 v1, 0x1

    if-eq v0, v3, :cond_14

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    return v1
.end method

.method public blacklist isVtProvisionedOnDevice()Z
    .registers 3

    .line 954
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 955
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    move-result v0

    return v0

    .line 958
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isWfcEnabledByPlatform()Z
    .registers 5

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1595
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1594
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_48

    .line 1596
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_28

    goto :goto_48

    .line 1601
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1603
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1605
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    .line 1601
    :goto_47
    return v3

    .line 1598
    :cond_48
    :goto_48
    return v3
.end method

.method public blacklist isWfcEnabledByUser()Z
    .registers 5

    .line 1154
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1155
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1154
    const-string v2, "wfc_ims_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1159
    .local v0, "setting":I
    if-ne v0, v3, :cond_16

    .line 1160
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1163
    :cond_16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public blacklist isWfcProvisionedOnDevice()Z
    .registers 3

    .line 920
    const-string v0, "carrier_volte_override_wfc_provisioning_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 922
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_10

    .line 923
    const/4 v0, 0x0

    return v0

    .line 927
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 928
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    move-result v0

    return v0

    .line 931
    :cond_1c
    return v0
.end method

.method public blacklist isWfcRoamingEnabledByUser()Z
    .registers 5

    .line 1520
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1521
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1520
    const-string v2, "wfc_ims_roaming_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1523
    .local v0, "setting":I
    if-ne v0, v3, :cond_16

    .line 1524
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1527
    :cond_16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public blacklist makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .registers 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callees"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2583
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2585
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2587
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2588
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 2590
    .local v1, "session":Landroid/telephony/ims/ImsCallSession;
    if-eqz p2, :cond_3a

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2591
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    goto :goto_3d

    .line 2593
    :cond_3a
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 2596
    :goto_3d
    return-object v0
.end method

.method public blacklist notifySrvccCanceled()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2951
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2953
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccCanceled()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2957
    nop

    .line 2958
    return-void

    .line 2954
    :catch_9
    move-exception v1

    .line 2955
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccCanceled"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccCompleted()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2925
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2927
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccCompleted()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2931
    nop

    .line 2932
    return-void

    .line 2928
    :catch_9
    move-exception v1

    .line 2929
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccCompleted"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccFailed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2938
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2940
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccFailed()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2944
    nop

    .line 2945
    return-void

    .line 2941
    :catch_9
    move-exception v1

    .line 2942
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccFailed"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 7
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2912
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2914
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2918
    nop

    .line 2919
    return-void

    .line 2915
    :catch_9
    move-exception v1

    .line 2916
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccStarted"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist onMemoryAvailable(I)V
    .registers 6
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3280
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->onMemoryAvailable(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3284
    nop

    .line 3285
    return-void

    .line 3281
    :catch_d
    move-exception v0

    .line 3282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "onMemoryAvailable()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist onSmsReady()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3334
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onSmsReady()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3338
    nop

    .line 3339
    return-void

    .line 3335
    :catch_d
    move-exception v0

    .line 3336
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "onSmsReady()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist open(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .param p2, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .param p3, "multiEndpointListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2183
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2185
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    if-eqz p1, :cond_16

    .line 2190
    :try_start_6
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 2193
    nop

    .line 2194
    return-void

    .line 2191
    :catch_b
    move-exception v1

    .line 2192
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 2186
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 5
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2992
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2994
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2995
    :catch_9
    move-exception v1

    .line 2996
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "queryMediaQualityStatus Failed."

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2997
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist queryMmTelCapability(II)Z
    .registers 9
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2752
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2754
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 2757
    .local v1, "result":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_a
    new-instance v2, Lcom/android/ims/ImsManager$2;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;IILjava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/ims/MmTelFeatureConnection;->queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_2a

    .line 2780
    nop

    .line 2783
    :try_start_13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_21} :catch_22

    return v2

    .line 2784
    :catch_22
    move-exception v2

    .line 2785
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "queryMmTelCapability: interrupted while waiting for response"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2787
    .end local v2    # "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    return v2

    .line 2777
    :catch_2a
    move-exception v2

    .line 2778
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "queryMmTelCapability()"

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v2, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist queryMmTelCapabilityStatus(II)Z
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2793
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2795
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v1

    if-eq v1, p2, :cond_c

    .line 2796
    const/4 v1, 0x0

    return v1

    .line 2800
    :cond_c
    nop

    .line 2801
    :try_start_d
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v1

    .line 2803
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v2

    .line 2804
    .end local v1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catch_16
    move-exception v1

    .line 2805
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "queryMmTelCapabilityStatus()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist registerFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3116
    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    invoke-virtual {v1, p2, v2}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 3123
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3124
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    goto :goto_30

    .line 3126
    :cond_14
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_17} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_30

    .line 3140
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_18
    move-exception v1

    .line 3142
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_19
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 3143
    :goto_1c
    goto :goto_31

    :catch_1d
    move-exception v0

    goto :goto_1c

    .line 3128
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1f
    move-exception v1

    .line 3130
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_20
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_32

    .line 3135
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V

    goto :goto_2f

    .line 3132
    :pswitch_29
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2e

    .line 3133
    goto :goto_2f

    .line 3139
    :catch_2e
    move-exception v0

    :goto_2f
    nop

    .line 3144
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_30
    nop

    .line 3145
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_29
    .end packed-switch
.end method

.method public blacklist removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 2369
    if-eqz p1, :cond_26

    .line 2374
    :try_start_2
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2375
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_d} :catch_e

    .line 2378
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    goto :goto_25

    .line 2376
    :catch_e
    move-exception v0

    .line 2377
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception removing Capability , exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2379
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_25
    return-void

    .line 2370
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 2404
    if-eqz p1, :cond_e

    .line 2407
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 2408
    return-void

    .line 2405
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 2332
    if-eqz p1, :cond_e

    .line 2335
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2337
    return-void

    .line 2333
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "emergency registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 2454
    if-eqz p1, :cond_e

    .line 2458
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 2459
    return-void

    .line 2455
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 2301
    if-eqz p1, :cond_e

    .line 2304
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2305
    return-void

    .line 2302
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2269
    if-eqz p1, :cond_17

    .line 2272
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2273
    const-string v0, "Registration callback removed."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2274
    return-void

    .line 2270
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2420
    if-eqz p1, :cond_13

    .line 2424
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2425
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p1}, Lcom/android/ims/ImsConnectionStateListener;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2426
    const-string v1, "Registration Callback/Listener registered."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2428
    return-void

    .line 2421
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3272
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/ims/MmTelFeatureConnection;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_17

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .local v2, "token":I
    .local v3, "messageRef":I
    .local v4, "format":Ljava/lang/String;
    .local v5, "smsc":Ljava/lang/String;
    .local v6, "isRetry":Z
    .local v7, "pdu":[B
    :try_start_f
    invoke-virtual/range {v1 .. v7}, Lcom/android/ims/MmTelFeatureConnection;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 3275
    nop

    .line 3276
    return-void

    .line 3273
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v2    # "token":I
    .end local v3    # "messageRef":I
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "smsc":Ljava/lang/String;
    .end local v6    # "isRetry":Z
    .end local v7    # "pdu":[B
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "smsc":Ljava/lang/String;
    .restart local p5    # "isRetry":Z
    .restart local p6    # "pdu":[B
    :catch_17
    move-exception v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object p1, v0

    .line 3274
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .restart local v2    # "token":I
    .restart local v3    # "messageRef":I
    .restart local v4    # "format":Ljava/lang/String;
    .restart local v5    # "smsc":Ljava/lang/String;
    .restart local v6    # "isRetry":Z
    .restart local v7    # "pdu":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    new-instance p2, Lcom/android/ims/ImsException;

    const-string p3, "sendSms()"

    const/16 p4, 0x6a

    invoke-direct {p2, p3, p1, p4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public blacklist setConfig(II)I
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3534
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3535
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->setLocalImsConfigKeyInt(II)I

    move-result v0

    return v0

    .line 3537
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result v0

    return v0
.end method

.method public blacklist setConfig(ILjava/lang/String;)I
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3542
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3543
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->setLocalImsConfigKeyString(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 3545
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setCrossSimCallingEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1251
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1252
    const-string v0, "setCrossSimCallingEnabled: Not possible to enable WFC due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1255
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1256
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrossSimCallingEnabled: invalid sub id, can not set Cross SIM setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1260
    return-void

    .line 1262
    :cond_2f
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1263
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1262
    const-string v3, "cross_sim_calling_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1265
    if-eqz p1, :cond_4b

    .line 1266
    :try_start_3c
    new-instance v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1267
    .local v1, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1268
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1269
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1270
    .end local v1    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_4e

    .line 1272
    :cond_4b
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_4e
    .catch Lcom/android/ims/ImsException; {:try_start_3c .. :try_end_4e} :catch_4f

    .line 1276
    :goto_4e
    goto :goto_55

    .line 1274
    :catch_4f
    move-exception v1

    .line 1275
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setCrossSimCallingEnabled(): "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1277
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_55
    return-void
.end method

.method public blacklist setEnhanced4gLteModeSetting(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 635
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 636
    const-string v0, "setEnhanced4gLteModeSetting: Not possible to enable VoLTE due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 637
    return-void

    .line 639
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 640
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnhanced4gLteModeSetting: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 643
    return-void

    .line 646
    :cond_2f
    nop

    .line 647
    const-string v1, "editable_enhanced_4g_lte_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    .line 648
    const-string v1, "hide_enhanced_4g_lte_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_45

    :cond_43
    move v1, v2

    goto :goto_46

    :cond_45
    :goto_45
    move v1, v3

    .line 652
    .local v1, "isUiUnEditable":Z
    :goto_46
    if-eqz v1, :cond_54

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v4

    if-nez v4, :cond_54

    .line 653
    const-string v4, "enhanced_4g_lte_on_by_default_bool"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result p1

    .line 657
    :cond_54
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    const/4 v5, -0x1

    const-string v6, "volte_vt_enabled"

    invoke-interface {v4, v0, v6, v5}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v4

    .line 660
    .local v4, "prevSetting":I
    if-eqz p1, :cond_61

    move v2, v3

    goto :goto_62

    .line 661
    :cond_61
    nop

    :goto_62
    if-ne v4, v2, :cond_65

    .line 663
    return-void

    .line 665
    :cond_65
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 667
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-interface {v2, v0, v6, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    if-eqz p1, :cond_86

    .line 670
    :try_start_70
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 671
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    .line 673
    .local v3, "isNonTty":Z
    invoke-direct {p0, v2, v3}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 674
    invoke-direct {p0, v2, v3}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 675
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 677
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 678
    .end local v2    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v3    # "isNonTty":Z
    goto :goto_89

    .line 680
    :cond_86
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_89
    .catch Lcom/android/ims/ImsException; {:try_start_70 .. :try_end_89} :catch_8a

    .line 684
    :goto_89
    goto :goto_a1

    .line 682
    :catch_8a
    move-exception v2

    .line 683
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnhanced4gLteModeSetting couldn\'t set config: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 685
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_a1
    return-void
.end method

.method public blacklist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 6
    .param p1, "sessionType"    # I
    .param p2, "threshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2982
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2984
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2987
    goto :goto_e

    .line 2985
    :catch_8
    move-exception v1

    .line 2986
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMediaThreshold Failed."

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2988
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist setOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2556
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2559
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2563
    nop

    .line 2564
    return-void

    .line 2560
    :catch_9
    move-exception v1

    .line 2561
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setOfferedRtpHeaderExtensionTypes()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setRttEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2814
    if-eqz p1, :cond_6

    .line 2816
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 2818
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    .line 2819
    return-void
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3325
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3329
    nop

    .line 3330
    return-void

    .line 3326
    :catch_d
    move-exception v0

    .line 3327
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setSmsListener()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2874
    const-string v0, "setTerminalBasedCallWaitingStatus()"

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 2876
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->setTerminalBasedCallWaitingStatus(Z)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_9} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 2889
    nop

    .line 2890
    return-void

    .line 2886
    :catch_b
    move-exception v2

    .line 2887
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 2877
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_14
    move-exception v2

    .line 2878
    .local v2, "se":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    .line 2880
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x96

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 2883
    :cond_22
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x67

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist setTtyMode(I)V
    .registers 6
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2825
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoLteCapable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 2828
    .local v0, "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_e
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoWifiCapable()Z

    move-result v3

    if-nez v3, :cond_16

    if-nez p1, :cond_17

    :cond_16
    move v1, v2

    .line 2831
    .local v1, "isNonTtyOrTtyOnWifiEnabled":Z
    :cond_17
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2832
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2833
    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2834
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2836
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2837
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2839
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 2841
    :cond_31
    return-void
.end method

.method public blacklist setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2859
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2861
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2865
    nop

    .line 2866
    return-void

    .line 2862
    :catch_9
    move-exception v1

    .line 2863
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setTTYMode()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setVtSetting(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1083
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1084
    const-string v0, "setVtSetting: Not possible to enable Vt due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1085
    return-void

    .line 1088
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1089
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVtSetting: sub id invalid, skip modifying vt state in subinfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1092
    return-void

    .line 1094
    :cond_2f
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1095
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1094
    const-string v3, "vt_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1097
    if-eqz p1, :cond_4f

    .line 1098
    :try_start_3c
    new-instance v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1099
    .local v1, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1100
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1103
    .end local v1    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_52

    .line 1105
    :cond_4f
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_52
    .catch Lcom/android/ims/ImsException; {:try_start_3c .. :try_end_52} :catch_53

    .line 1112
    :goto_52
    goto :goto_59

    .line 1107
    :catch_53
    move-exception v1

    .line 1111
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setVtSetting(b): "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_59
    return-void
.end method

.method public blacklist setWfcMode(I)V
    .registers 3
    .param p1, "wfcMode"    # I

    .line 1353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1354
    return-void
.end method

.method public blacklist setWfcMode(IZ)V
    .registers 7
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1454
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1455
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1456
    if-nez p2, :cond_2e

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1459
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1458
    const-string v3, "wfc_ims_mode"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1461
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1463
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1462
    const-string v3, "wfc_ims_roaming_mode"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1466
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b): invalid sub id, skip setting setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1470
    :goto_66
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_70

    .line 1471
    const-string v1, "setWfcMode: TelephonyManager is null, can not set WFC."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1472
    return-void

    .line 1474
    :cond_70
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1478
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-ne p2, v2, :cond_83

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1481
    :cond_83
    return-void
.end method

.method public blacklist setWfcNonPersistent(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "wfcMode"    # I

    .line 1290
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, p2

    goto :goto_6

    :cond_5
    move v1, v0

    .line 1292
    .local v1, "imsWfcModeFeatureValue":I
    :goto_6
    :try_start_6
    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(ZI[I)V

    .line 1295
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1298
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1301
    if-eqz p1, :cond_27

    .line 1302
    const-string v0, "setWfcNonPersistent() : turnOnIms"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V
    :try_end_27
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_27} :catch_28

    .line 1308
    :cond_27
    goto :goto_2e

    .line 1306
    :catch_28
    move-exception v0

    .line 1307
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcNonPersistent(): "

    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1309
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2e
    return-void
.end method

.method public blacklist setWfcRoamingSetting(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1547
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1548
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1547
    const-string v3, "wfc_ims_roaming_enabled"

    invoke-interface {v0, v1, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1552
    return-void
.end method

.method public blacklist setWfcSetting(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1185
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1186
    const-string v0, "setWfcSetting: Not possible to enable WFC due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1187
    return-void

    .line 1189
    :cond_e
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1190
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcSetting: invalid sub id, can not set WFC setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1193
    return-void

    .line 1195
    :cond_2f
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1196
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1195
    const-string v3, "wfc_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1199
    if-eqz p1, :cond_4f

    .line 1200
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVoWifiEnabled()Z

    move-result v1

    .line 1201
    .local v1, "isNonTtyWifi":Z
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1202
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1203
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1205
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1206
    .end local v1    # "isNonTtyWifi":Z
    .end local v2    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_52

    .line 1208
    :cond_4f
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_52
    .catch Lcom/android/ims/ImsException; {:try_start_3c .. :try_end_52} :catch_53

    .line 1212
    :goto_52
    goto :goto_6a

    .line 1210
    :catch_53
    move-exception v1

    .line 1211
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1213
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_6a
    return-void
.end method

.method public blacklist shouldProcessCall(Z[Ljava/lang/String;)I
    .registers 7
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3356
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3357
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 3358
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :catch_9
    move-exception v0

    .line 3359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "shouldProcessCall()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .registers 7
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2609
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2611
    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 2616
    :try_start_6
    new-instance v1, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2618
    .local v1, "call":Lcom/android/ims/ImsCall;
    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V

    .line 2619
    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2621
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->ignoreAlreadyTerminatedIncomingCallBeforeRegisteringListener()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2624
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_3a

    .line 2625
    :cond_2d
    const-string v2, "takeCall : ImsCallSession is not alive"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2626
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "takeCall() : ImsCallSession is not alive"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v2

    .line 2630
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_3a
    :goto_3a
    return-object v1

    .line 2631
    .end local v1    # "call":Lcom/android/ims/ImsCall;
    :catchall_3b
    move-exception v1

    goto :goto_47

    .line 2612
    :cond_3d
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No pending session for the call"

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v1
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_3b

    .line 2632
    .local v1, "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :goto_47
    const-string v2, "takeCall caught: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2633
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "takeCall()"

    invoke-direct {v2, v3, v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist triggerDeregistration(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2966
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2968
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->triggerDeregistration(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2972
    nop

    .line 2973
    return-void

    .line 2969
    :catch_9
    move-exception v1

    .line 2970
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "triggerDeregistration"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist unregisterFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 5
    .param p1, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3150
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 3151
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 3152
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3157
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_29

    .line 3154
    :catch_e
    move-exception v0

    .line 3156
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterImsFeatureCallback (MMTEL), RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3158
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public blacklist updateFeatureCapabilities(J)V
    .registers 4
    .param p1, "capabilities"    # J

    .line 3008
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->updateFeatureCapabilities(J)V

    .line 3009
    return-void
.end method

.method public blacklist updateFeatureState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 3003
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->updateFeatureState(I)V

    .line 3004
    return-void
.end method

.method public blacklist updateImsServiceConfig()V
    .registers 4

    .line 1715
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1716
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1717
    const-string v1, "updateImsServiceConfig: invalid sub id, skipping!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1718
    return-void

    .line 1720
    :cond_10
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v2, "ims."

    .line 1721
    invoke-virtual {v1, v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigByComponentForSubId(Ljava/lang/String;I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1723
    .local v1, "imsCarrierConfigs":Landroid/os/PersistableBundle;
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 1724
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 1725
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z
    :try_end_21
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1729
    .end local v0    # "subId":I
    .end local v1    # "imsCarrierConfigs":Landroid/os/PersistableBundle;
    goto :goto_2b

    .line 1726
    :catch_22
    move-exception v0

    .line 1727
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "updateImsServiceConfig: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 1730
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2b
    return-void
.end method
