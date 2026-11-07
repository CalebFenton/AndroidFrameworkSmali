.class public Lcom/android/internal/telephony/SimultaneousCallingTracker;
.super Ljava/lang/Object;
.source "SimultaneousCallingTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;,
        Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;,
        Lcom/android/internal/telephony/SimultaneousCallingTracker$ListenerBase;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_DEVICE_CONFIG_CHANGED:I = 0x68

.field protected static final blacklist EVENT_IMS_REGISTRATION_CHANGED:I = 0x69

.field protected static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x67

.field protected static final blacklist EVENT_PHONE_CAPABILITY_CHANGED:I = 0x66

.field protected static final blacklist EVENT_SUBSCRIPTION_CHANGED:I = 0x65

.field private static blacklist sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;


# instance fields
.field public blacklist isDeviceSimultaneousCallingCapable:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field public blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

.field private final blacklist mPhoneConfigurationManagerListener:Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;

.field private blacklist mSimultaneousCallPhoneSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mVoiceCapablePhoneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$efWEvrywHCtmn6cdkw3IMUH0Q4s(Lcom/android/internal/telephony/SimultaneousCallingTracker;Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->onSimultaneousCellularCallingSlotsChanged(Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/SimultaneousCallingTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimultaneousCallingTracker;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckSimultaneousCallingDeviceCapability(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->checkSimultaneousCallingDeviceCapability()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisableSimultaneousCallingSupport(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->disableSimultaneousCallingSupport()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSimultaneousCallingSupportChanged(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->handleSimultaneousCallingSupportChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePhoneMapAndSimultaneousCallSupportMap(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->updatePhoneMapAndSimultaneousCallSupportMap()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSimultaneousCallSupportMap(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->updateSimultaneousCallSupportMap()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mListeners:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    .line 205
    new-instance v0, Lcom/android/internal/telephony/SimultaneousCallingTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker$1;-><init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 218
    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker$2;-><init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManagerListener:Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 100
    new-instance p2, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;Lcom/android/internal/telephony/SimultaneousCallingTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 102
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->addListener(Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;)V

    const/16 p0, 0x67

    .line 103
    invoke-static {p2, p0, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    const-string p0, "telephony_registry"

    .line 106
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyRegistryManager;

    .line 107
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private blacklist checkSimultaneousCallingDeviceCapability()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getNumberOfModemsWithSimultaneousVoiceConnections()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    .line 236
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForSimultaneousCellularCallingSlotsChanged(Ljava/util/function/Consumer;)V

    :cond_15
    return-void
.end method

.method private blacklist disableSimultaneousCallingSupport()V
    .registers 2

    .line 304
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    if-nez v0, :cond_c

    .line 305
    const-string p0, "SimultaneousCallingTracker"

    const-string v0, "Ignoring updateSimultaneousCallSupportMap since device is not DSDAcapable."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->unregisterForImsRegistrationChanges(Ljava/util/Map;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private blacklist generateSimultaneousCallSupportMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 400
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    .line 401
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 400
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 405
    :cond_31
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 406
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 407
    iget-object v3, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->isVirtualDsdaEnabled()Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mContext:Landroid/content/Context;

    .line 408
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->isImsServiceSimultaneousCallingSupportCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_6e

    .line 424
    :cond_5c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_39

    .line 410
    :cond_6e
    :goto_6e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->getImsTransportType(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_76

    goto :goto_39

    .line 415
    :cond_76
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7e
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 416
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_95

    goto :goto_7e

    .line 417
    :cond_95
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->phonesSupportSimultaneousCallingViaCellularOrWlan(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 418
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 428
    :cond_ad
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b5
    :goto_b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 429
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_cc

    goto :goto_b5

    .line 430
    :cond_cc
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->phonesSupportSimultaneousCallingViaCellularOrWlan(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 431
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 436
    :cond_e4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSimultaneousCallSupportMap: returning simultaneousCallSubSupportMap = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->getStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 436
    const-string p1, "SimultaneousCallingTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist generateVoiceCapablePhoneMapBasedOnUserAssociation()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 363
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 364
    array-length v3, v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 365
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    const/4 v8, -0x1

    if-le v6, v8, :cond_52

    if-eqz v7, :cond_52

    .line 370
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getServiceCapabilities()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    .line 371
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateVoiceCapablePhoneMapBasedOnUserAssociation: adding phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    const-string v7, "SimultaneousCallingTracker"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 378
    :cond_55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 380
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 381
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 382
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7b
    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone;

    .line 383
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    if-ne v8, v9, :cond_92

    goto :goto_7b

    .line 384
    :cond_92
    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->phonesHaveSameUserAssociation(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 385
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 388
    :cond_9c
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_a0
    return-object v2
.end method

.method private blacklist getImsTransportType(Lcom/android/internal/telephony/Phone;)I
    .registers 3

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p0, :cond_d

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTransportType()I

    move-result p0

    return p0

    .line 504
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsTransportType: IMS not supported for phone = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimultaneousCallingTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SimultaneousCallingTracker;
    .registers 2

    .line 115
    sget-object v0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    if-nez v0, :cond_b

    .line 116
    const-string v0, "SimultaneousCallingTracker"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    return-object v0
.end method

.method private blacklist getStringFromMap(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    const-string v1, "Phone ID="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, " - Simultaneous calling compatible phone IDs=["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    .line 516
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v0, "]; "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 519
    :cond_5b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getStringFromSet(Ljava/util/Set;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 523
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ","

    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist handleSimultaneousCallingSupportChanged()V
    .registers 8

    .line 471
    const-string v0, "SimultaneousCallingTracker"

    :try_start_2
    const-string v1, "handleSimultaneousCallingSupportChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_48

    .line 478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimultaneousCallingSupportChanged: phoneId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_46
    move-exception p0

    goto :goto_94

    .line 482
    :cond_48
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 483
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 484
    iget-object v6, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    .line 485
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 487
    :cond_76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 491
    :cond_7e
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_84
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;

    .line 492
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;->onSimultaneousCallingSupportChanged(Ljava/util/Map;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_93} :catch_46

    goto :goto_84

    .line 495
    :goto_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimultaneousCallingSupportChanged: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return-void
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SimultaneousCallingTracker;
    .registers 3

    .line 85
    sget-object v0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    if-nez v0, :cond_c

    .line 86
    new-instance v0, Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    goto :goto_24

    .line 88
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init() called multiple times!  sInstance = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimultaneousCallingTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_24
    sget-object p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->sInstance:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    return-object p0
.end method

.method private blacklist onSimultaneousCellularCallingSlotsChanged(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->updateSimultaneousCallSupportMap()V

    return-void
.end method

.method private blacklist phonesHaveSameUserAssociation(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist phonesSupportCellularSimultaneousCalling(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 6

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 453
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getSlotsSupportingSimultaneousCellularCalls()Ljava/util/Set;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonesSupportCellularSimultaneousCalling: modem returned slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->getStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 454
    const-string v1, "SimultaneousCallingTracker"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 457
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist phonesSupportSimultaneousCallingViaCellularOrWlan(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .registers 5

    .line 464
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->getImsTransportType(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->phonesSupportCellularSimultaneousCalling(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist registerForImsRegistrationChanges(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;)V"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 325
    const-string v2, "SimultaneousCallingTracker"

    if-eqz v1, :cond_3f

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForImsRegistrationChanges: registering phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_8

    .line 331
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForImsRegistrationChanges: phone not recognized as ImsPhone: phoneId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_58
    return-void
.end method

.method private blacklist unregisterForImsRegistrationChanges(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Phone;",
            ">;>;)V"
        }
    .end annotation

    .line 345
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 346
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_8

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForImsRegistrationChanges(Landroid/os/Handler;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private blacklist updatePhoneMapAndSimultaneousCallSupportMap()V
    .registers 4

    .line 270
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    const-string v1, "SimultaneousCallingTracker"

    if-nez v0, :cond_c

    .line 271
    const-string p0, "Ignoring updatePhoneMapAndSimultaneousCallSupportMap since device is not DSDA capable."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->unregisterForImsRegistrationChanges(Ljava/util/Map;)V

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->generateVoiceCapablePhoneMapBasedOnUserAssociation()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneMapAndSimultaneousCallSupportMap: mVoiceCapablePhoneMap.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    .line 278
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->registerForImsRegistrationChanges(Ljava/util/Map;)V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->updateSimultaneousCallSupportMap()V

    return-void
.end method

.method private blacklist updateSimultaneousCallSupportMap()V
    .registers 2

    .line 284
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    if-nez v0, :cond_c

    .line 285
    const-string p0, "SimultaneousCallingTracker"

    const-string v0, "Ignoring updateSimultaneousCallSupportMap since device is not DSDAcapable."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mVoiceCapablePhoneMap:Ljava/util/Map;

    .line 290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->generateSimultaneousCallSupportMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->handleSimultaneousCallingSupportChanged()V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getSubIdsSupportingSimultaneousCalling(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 248
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->isDeviceSimultaneousCallingCapable:Z

    const-string v1, "SimultaneousCallingTracker"

    if-nez v0, :cond_e

    .line 249
    const-string p0, "Device is not simultaneous calling capable"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 252
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 253
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mSimultaneousCallPhoneSupportMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 256
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 258
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotsSupportingSimultaneousCalling for subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; subIdsSupportingSimultaneousCalling=["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->getStringFromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 264
    :cond_81
    const-string p0, "getSlotsSupportingSimultaneousCalling: Subscription ID not found in the map of voice capable phones."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public final blacklist removeListener(Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
