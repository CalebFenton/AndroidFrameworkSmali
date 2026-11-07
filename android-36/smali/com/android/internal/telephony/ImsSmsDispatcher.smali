.class public Lcom/android/internal/telephony/ImsSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;
    }
.end annotation


# static fields
.field public static final blacklist MAX_SEND_RETRIES_OVER_IMS:I = 0x3


# instance fields
.field private blacklist mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private blacklist mConnectRunnable:Ljava/lang/Runnable;

.field private blacklist mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private volatile blacklist mIsImsServiceUp:Z

.field private volatile blacklist mIsRegistered:Z

.field private volatile blacklist mIsSmsCapable:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field public blacklist mMemoryAvailableNotifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public blacklist mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field public blacklist mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManagerConnector(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/FeatureConnector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSmsCapable(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetListeners(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setListeners()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V
    .registers 10

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 96
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    .line 107
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$2;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 136
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 148
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$4;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 367
    iput-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    new-instance v4, Lcom/android/internal/telephony/ImsSmsDispatcher$5;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$5;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    new-instance v5, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    const-string v3, "ImsSmsDispatcher"

    move-object v0, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;->create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist getImsManager()Lcom/android/ims/ImsManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_b

    .line 693
    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    goto :goto_15

    .line 690
    :cond_b
    new-instance p0, Lcom/android/ims/ImsException;

    const-string v1, "ImsManager not up"

    const/16 v2, 0x6a

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 694
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_9

    throw p0
.end method

.method private static blacklist getPhoneId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "?"

    return-object p0
.end method

.method private blacklist isEmergencySmsPossible()Z
    .registers 2

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLteService()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLimitedLteService()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLimitedLteService()Z
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 418
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isLteService()Z
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 412
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getPhoneId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getPhoneId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getPhoneId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getPhoneId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setListeners()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->onSmsReady()V

    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 2

    .line 699
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .registers 5

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    const-string v1, "unknown"

    if-nez v0, :cond_7

    return-object v1

    .line 474
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sms format. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getMaxRetryCountOverIms()I
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 518
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 523
    const-string v0, "imssms.sms_max_retry_over_ims_count_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x3

    .line 528
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Count Over Ims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist getMaxSmsRetryCount()I
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 490
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 494
    const-string v0, "imssms.sms_max_retry_count_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x3

    .line 499
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object p0
.end method

.method public blacklist getSmsRetryDelayValue()I
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 542
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 546
    const-string v0, "imssms.sms_over_ims_send_retry_delay_millis_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1f

    :cond_1d
    const/16 p0, 0x7d0

    .line 551
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 9

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p8}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/16 v1, 0xb

    if-eq v0, v1, :cond_d

    .line 360
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 356
    :cond_d
    const-string p1, "SMMA Notification retry.."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onMemoryAvailable()V

    return-void

    .line 352
    :cond_16
    const-string v0, "SMS retry.."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 353
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist isAvailable()Z
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 464
    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    if-eqz v1, :cond_3d

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :catchall_3b
    move-exception p0

    goto :goto_40

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    monitor-exit v0

    return p0

    .line 465
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3b

    throw p0
.end method

.method protected blacklist isCdmaMo()Z
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencySmsSupport(Ljava/lang/String;)Z
    .registers 10

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ImsSmsDispatcher"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not emergency number"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    return v2

    .line 433
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 435
    :try_start_28
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "carrier_config"

    .line 436
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_3f

    .line 438
    const-string p1, "configManager is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3d

    .line 456
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_3d
    move-exception p0

    goto :goto_9b

    .line 441
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_52

    .line 443
    const-string p1, "PersistableBundle is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_3d

    .line 456
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 446
    :cond_52
    :try_start_52
    const-string v5, "support_emergency_sms_over_ims_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsPossible()Z

    move-result v5

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencySmsSupport emergencySmsCarrierSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " destAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mIsImsServiceUp: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " lteOrLimitedLte: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_97

    .line 454
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z
    :try_end_92
    .catchall {:try_start_52 .. :try_end_92} :catchall_3d

    if-eqz p0, :cond_97

    if-eqz v5, :cond_97

    const/4 v2, 0x1

    .line 456
    :cond_97
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_9b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    throw p0
.end method

.method public blacklist onMemoryAvailable()V
    .registers 5

    .line 602
    const-string v0, "onMemoryAvailable "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 605
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMemoryAvailable: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsManager;->onMemoryAvailable(I)V
    :try_end_2f
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v1

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMemoryAvailable failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5e
    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  mRetryCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMessageRef="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SS="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 621
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 625
    iput-boolean v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 627
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 629
    const-string v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [B

    .line 630
    const-string v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 631
    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v5, 0x0

    if-lez v4, :cond_55

    move v10, v3

    goto :goto_56

    :cond_55
    move v10, v5

    .line 632
    :goto_56
    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    .line 634
    const-string v4, "3gpp"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    if-eqz v10, :cond_74

    .line 638
    aget-byte v4, v11, v5

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v3, :cond_74

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    .line 639
    aput-byte v4, v11, v5

    .line 640
    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    .line 644
    :cond_74
    iget-object v4, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    .line 645
    iget-object v4, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :try_start_83
    invoke-direct {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v5

    iget v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-eqz v0, :cond_94

    .line 651
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_8f
    .catch Lcom/android/ims/ImsException; {:try_start_83 .. :try_end_8f} :catch_92

    :goto_8f
    move-object v9, v0

    move-object v8, v14

    goto :goto_96

    :catch_92
    move-exception v0

    goto :goto_ad

    :cond_94
    const/4 v0, 0x0

    goto :goto_8f

    .line 647
    :goto_96
    :try_start_96
    invoke-virtual/range {v5 .. v11}, Lcom/android/ims/ImsManager;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_99
    .catch Lcom/android/ims/ImsException; {:try_start_96 .. :try_end_99} :catch_ab

    move-object v14, v8

    .line 654
    :try_start_9a
    iget-object v12, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v13

    iget-wide v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const/4 v15, 0x1

    move-wide/from16 v16, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V
    :try_end_aa
    .catch Lcom/android/ims/ImsException; {:try_start_9a .. :try_end_aa} :catch_92

    return-void

    :catch_ab
    move-exception v0

    move-object v14, v8

    .line 657
    :goto_ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms failed. Falling back to PSTN. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    .line 658
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 660
    iget-object v12, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v13

    const/4 v15, 0x4

    iget-wide v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-wide/from16 v16, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V

    .line 662
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v15

    const-string v0, "3gpp2"

    .line 664
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    iget-wide v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 668
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v22

    .line 669
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v23

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 670
    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v25

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 671
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v26

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v19, 0xf

    move-wide/from16 v20, v4

    .line 662
    invoke-virtual/range {v15 .. v26}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZ)V

    .line 672
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_127

    .line 673
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 675
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_127

    const/16 v1, 0xf

    .line 677
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    :cond_127
    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
