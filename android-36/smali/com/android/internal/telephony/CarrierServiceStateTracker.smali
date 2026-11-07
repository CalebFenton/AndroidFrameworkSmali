.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_NEVER_ASK_AGAIN:Ljava/lang/String; = "com.android.internal.telephony.action.SILENCE_WIFI_CALLING_NOTIFICATION"

.field protected static final blacklist CARRIER_EVENT_BASE:I = 0x64

.field protected static final blacklist CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final blacklist CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final blacklist CARRIER_EVENT_IMS_CAPABILITIES_CHANGED:I = 0x69

.field protected static final blacklist CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final blacklist CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field public static final blacklist EMERGENCY_NOTIFICATION_TAG:Ljava/lang/String; = "EmergencyNetworkNotification"

.field public static final blacklist NOTIFICATION_EMERGENCY_NETWORK:I = 0x3e9

.field public static final blacklist NOTIFICATION_PREF_NETWORK:I = 0x3e8

.field public static final blacklist PREF_NETWORK_NOTIFICATION_TAG:Ljava/lang/String; = "PrefNetworkNotification"


# instance fields
.field public final blacklist mActionReceiver:Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;

.field private blacklist mAllowedNetworkType:J

.field private blacklist mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mNotificationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreviousSubId:I

.field private blacklist mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$zlwdcemUiFFOsAu4xrrC-i5d9RY(Lcom/android/internal/telephony/CarrierServiceStateTracker;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTypeMap(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSST(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/CarrierServiceStateTracker;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousSubId(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTelephonyManager(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/telephony/TelephonyManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAllowedNetworkTypeChanged(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleAllowedNetworkTypeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misGlobalMode(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhoneRegisteredForWifiCalling(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneRegisteredForWifiCalling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhoneStillRegistered(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneStillRegistered()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterAllowedNetworkTypesListener(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerAllowedNetworkTypesListener()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    .line 80
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mActionReceiver:Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationActionReceiver;

    const-wide/16 v1, -0x1

    .line 88
    iput-wide v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_58

    .line 121
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/CarrierServiceStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    .line 121
    invoke-virtual {p1, p2, p3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 151
    :cond_58
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    .line 152
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V

    .line 151
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.watch"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_83

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerNotificationTypes()V

    .line 170
    :cond_83
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide p1

    long-to-int p1, p1

    .line 170
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkType:J

    .line 173
    new-instance p1, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerAllowedNetworkTypesListener()V

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.android.internal.telephony.action.SILENCE_WIFI_CALLING_NOTIFICATION"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist checkSupportedBitmask(JJ)Z
    .registers 5

    .line 0
    and-long p0, p3, p1

    cmp-long p0, p0, p3

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 6

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    const-string v1, "CSST"

    if-eqz v0, :cond_32

    .line 363
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting timer for notifications."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 367
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canceling notifications: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleAllowedNetworkTypeChanged()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_13

    .line 349
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_13
    return-void
.end method

.method private blacklist handleConfigChanges()V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 342
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private blacklist handleImsCapabilitiesChanged()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_13

    .line 357
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_13
    return-void
.end method

.method private blacklist isCarrierConfigEnableNr()Z
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 323
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "carrier_nr_availabilities_int_array"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v0, v1, v3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarrierConfigEnableNr: Cannot get config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CSST"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_3a
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 331
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist isGlobalMode()Z
    .registers 4

    const/4 v0, 0x1

    .line 282
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 282
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_26

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isNrSupported()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1c

    const/16 p0, 0x1b

    .line 291
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    if-ne v1, p0, :cond_1b

    return v0

    :cond_1b
    return v2

    :cond_1c
    const/16 p0, 0xa

    .line 294
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    if-ne v1, p0, :cond_25

    return v0

    :cond_25
    return v2

    .line 285
    :catch_26
    const-string p0, "CSST"

    const-string v1, "Unable to get PREFERRED_NETWORK_MODE."

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist isNrSupported()Z
    .registers 9

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 302
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isCarrierConfigEnableNr()Z

    move-result v1

    .line 306
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    .line 305
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->checkSupportedBitmask(JJ)Z

    move-result v2

    const/4 v3, 0x2

    .line 308
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v6

    .line 307
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->checkSupportedBitmask(JJ)Z

    move-result p0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNrSupported:  carrierConfigEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", AccessFamilySupported: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNrNetworkTypeAllowed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CSST"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5e

    if-eqz v2, :cond_5e

    if-eqz p0, :cond_5e

    const/4 p0, 0x1

    return p0

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPhoneRegisteredForWifiCalling()Z
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneRegisteredForWifiCalling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p0

    return p0
.end method

.method private blacklist isPhoneStillRegistered()Z
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 250
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 251
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    return v1
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 6

    .line 124
    iget-object p4, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p4

    if-eq p1, p4, :cond_9

    goto :goto_4f

    .line 126
    :cond_9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarrierConfigChanged: slotIndex="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", carrierId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CSST"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    const-string p3, "network_notification_delay_int"

    const-string p4, "hide_preferred_network_type_bool"

    const-string v0, "emergency_notification_delay_int"

    filled-new-array {v0, p3, p4}, [Ljava/lang/String;

    move-result-object p3

    .line 132
    invoke-static {p1, p2, p3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_50

    :goto_4f
    return-void

    .line 141
    :cond_50
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_73

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 143
    invoke-interface {p3, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->setDelay(Landroid/os/PersistableBundle;)V

    .line 144
    invoke-interface {p3, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->setEnabled(Landroid/os/PersistableBundle;)V

    goto :goto_5a

    .line 146
    :cond_73
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method private blacklist registerAllowedNetworkTypesListener()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterAllowedNetworkTypesListener()V

    .line 196
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1d

    .line 198
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_1d
    return-void
.end method

.method private blacklist registerNotificationTypes()V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist shouldSilenceEmrgNetNotif(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;Landroid/content/Context;)Z
    .registers 4

    .line 437
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result p0

    const/16 p1, 0x3e9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_17

    .line 438
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "com.android.internal.telephony.action.SILENCE_WIFI_CALLING_NOTIFICATION"

    .line 439
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v0
.end method

.method private blacklist unregisterAllowedNetworkTypesListener()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 449
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationId()I

    move-result p1

    .line 448
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist dispose()V
    .registers 1

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterAllowedNetworkTypesListener()V

    return-void
.end method

.method public blacklist evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z
    .registers 2

    .line 377
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->sendMessage()Z

    move-result p0

    return p0
.end method

.method public blacklist getAllowedNetworkTypesChangedListener()Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/CarrierServiceStateTracker$AllowedNetworkTypesListener;

    return-object p0
.end method

.method public blacklist getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I
    .registers 2

    .line 385
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getDelay()I

    move-result p0

    return p0
.end method

.method public blacklist getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;
    .registers 2

    .line 393
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    .line 401
    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public blacklist getNotificationTypeMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_16

    packed-switch v0, :pswitch_data_42

    goto :goto_41

    .line 233
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleImsCapabilitiesChanged()V

    return-void

    .line 230
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void

    .line 237
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending notification after delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz p1, :cond_41

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_41
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x65
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist isRadioOffOrAirplaneMode()Z
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 267
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_1f

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v3

    :cond_1e
    :goto_1e
    return v1

    .line 270
    :catch_1f
    const-string p0, "CSST"

    const-string v0, "Unable to get AIRPLACE_MODE_ON."

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .registers 7

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 416
    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->shouldSilenceEmrgNetNotif(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 417
    const-string p0, "CSST"

    const-string p1, "sendNotification: silencing NOTIFICATION_EMERGENCY_NETWORK"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 421
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 424
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 425
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    .line 426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationTag()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationId()I

    move-result p1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 429
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
