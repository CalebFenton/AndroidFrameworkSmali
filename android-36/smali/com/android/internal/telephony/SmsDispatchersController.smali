.class public Lcom/android/internal/telephony/SmsDispatchersController;
.super Landroid/os/Handler;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;,
        Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;,
        Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;,
        Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_SMS_HANDLER_EXITING_WAITING_STATE:I = 0x11


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentWaitElapsedDuration:J

.field private blacklist mCurrentWaitStartTime:J

.field private blacklist mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

.field private blacklist mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

.field private blacklist mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

.field private blacklist mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private blacklist mIms:Z

.field private blacklist mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field private blacklist mImsSmsFormat:Ljava/lang/String;

.field private blacklist mLastInServiceTime:J

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method public static synthetic blacklist $r8$lambda$9IZlH3lMqlk8Dga9zlxh4j1pmL4(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$handleSendSmsUsingDomainSelection$2(Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9Xc15fBiK8GQEMfmDqc6iRhZfJQ(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$requestDomainSelection$0(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DtttI0kwf4PvR9nDPk9Gc_7yIK8(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->lambda$requestDomainSelection$1(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rgEYpP7iDWqwKeOuykQAvVPrVwg(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;)Z
    .registers 3

    const/16 v0, 0x20

    .line 1304
    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1305
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 16

    .line 400
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, -0x1

    .line 137
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v2, 0x0

    .line 139
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 141
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 148
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const/4 v1, 0x0

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 159
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    .line 197
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    .line 447
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$2;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    const-string v2, "SmsDispatchersController"

    const-string v3, "SmsDispatchersController created"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    .line 405
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 406
    iget-object p3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 407
    iput-object p5, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 412
    new-instance v3, Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v4, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, p1, p0, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, p1, p4, p5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 416
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 417
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v7, v3

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    move-object v6, p1

    move-object v5, p2

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 421
    new-instance p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p1, v6, p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 422
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object p4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {p1, p2, p4, v9}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 424
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    const/16 p1, 0xb

    .line 426
    invoke-interface {p3, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p1, 0xc

    .line 427
    invoke-interface {p3, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    const-string p1, "user"

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 430
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 435
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p2, 0xe

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 441
    :cond_ba
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v2, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 11

    .line 394
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private static blacklist asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1319
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_e

    .line 1325
    invoke-virtual {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->finishSelection()V

    :cond_e
    if-eqz p1, :cond_48

    .line 1329
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v1

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDomainSelection: pendingRequests="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 1333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1334
    iget-object v2, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    goto :goto_30

    .line 1337
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->clearAllRequests()V

    .line 1338
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    :cond_48
    return-void
.end method

.method private blacklist getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 594
    :try_start_4
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    goto :goto_22

    .line 598
    :cond_16
    :try_start_16
    const-string p0, "SmsDispatchersController"

    const-string p1, "getSmscAddressFromIccEf iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_14

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    throw p0
.end method

.method private blacklist handleDomainSelectionTerminatedAbnormally(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .registers 4

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDomainSelectionTerminatedAbnormally: pendingRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1351
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    const/4 p0, 0x0

    .line 1352
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method private blacklist handleInService(J)V
    .registers 8

    .line 642
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 646
    :cond_a
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 647
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long/2addr v1, v3

    .line 646
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handleOutOfService(J)V
    .registers 3

    const-wide/16 p1, -0x1

    .line 661
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handlePartialSegmentTimerExpiry(J)V
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitingState"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_25

    .line 667
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2e

    .line 679
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;J)V

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 668
    :cond_2e
    :goto_2e
    const-string p1, "handlePartialSegmentTimerExpiry: ignoring timer expiry as InboundSmsHandler is in WaitingState"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .registers 8

    .line 1175
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-nez v0, :cond_10

    .line 1177
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    .line 1180
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-wide v2, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    .line 1181
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 1182
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isTestEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 1180
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->startEmergencySms(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1183
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 1192
    :cond_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSmsReceivedViaIms(Ljava/lang/String;)V
    .registers 3

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1282
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencySmsReceived()V

    :cond_11
    return-void
.end method

.method private blacklist handleSmsSentCompletedUsingDomainSelection(Ljava/lang/String;JZZZ)V
    .registers 8

    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    if-eqz v0, :cond_18

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1229
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_14

    const/4 p2, 0x2

    goto :goto_15

    :cond_14
    const/4 p2, 0x1

    :goto_15
    invoke-virtual {p0, p1, p4, p2, p6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->endSms(Ljava/lang/String;ZIZ)V

    :cond_18
    return-void
.end method

.method private blacklist isCdmaMo(I)Z
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    .line 1052
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0

    .line 1055
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 4

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2063
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_17

    return v1

    .line 2065
    :cond_17
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isInService()Z
    .registers 1

    .line 714
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 715
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSmsDomainSelectionEnabled()Z
    .registers 1

    .line 1038
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    .line 1039
    invoke-interface {p0}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;->isDomainSelectionSupported()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isTestEmergencyNumber(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1299
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 1300
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_17

    return v0

    .line 1302
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    .line 1303
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_35} :catch_36

    return p0

    :catch_36
    return v0
.end method

.method private synthetic blacklist lambda$handleSendSmsUsingDomainSelection$2(Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 8

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEmergencySms("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->logi(Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0, p3, p2, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestDomainSelection$0(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 3

    .line 1105
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestDomainSelection$1(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Ljava/lang/Integer;)V
    .registers 3

    .line 1117
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 2313
    const-string p0, "SmsDispatchersController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsDispatchersController ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifySmsSentToDatagramDispatcher(JZZ)V
    .registers 7

    .line 1267
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_1b

    .line 1269
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 1269
    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->onSendSmsDone(IJZ)V

    :cond_1b
    return-void
.end method

.method private blacklist notifySmsSentToEmergencyStateTracker(Ljava/lang/String;JZZZ)V
    .registers 8

    .line 1253
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1255
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1256
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1257
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1258
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1259
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1260
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg5:Ljava/lang/Object;

    const/16 p1, 0x13

    .line 1261
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method

.method private blacklist reevaluateTimerStatus()V
    .registers 7

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 610
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_18

    .line 615
    iget-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 623
    :cond_18
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    .line 625
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    .line 627
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 628
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleInService(J)V

    return-void

    .line 630
    :cond_31
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleOutOfService(J)V

    return-void
.end method

.method private blacklist requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V
    .registers 6

    .line 1089
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1090
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1091
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;-><init>(III)V

    .line 1092
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->build()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object v0

    .line 1095
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1097
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;

    .line 1099
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->requestDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1100
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    new-instance p1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 1110
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;

    .line 1111
    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->requestDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1112
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    new-instance p1, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private blacklist requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .registers 8

    .line 1134
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isDomainSelectionRequested()Z

    move-result v0

    .line 1137
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->addRequest(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    .line 1139
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getConnection()Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p2

    if-nez p2, :cond_38

    .line 1140
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    .line 1142
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->isEmergency()Z

    move-result v3

    .line 1141
    invoke-interface {p2, v1, v2, v3}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;->getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p2

    if-nez p2, :cond_35

    .line 1144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestDomainSelection: fallback for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V

    return-void

    .line 1150
    :cond_35
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->setConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    :cond_38
    if-nez v0, :cond_3d

    .line 1158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    :cond_3d
    return-void
.end method

.method private blacklist resetPartialSegmentWaitTimer()V
    .registers 5

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 690
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 696
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 697
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    .line 699
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    .line 698
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    :cond_22
    const-wide/16 v0, -0x1

    .line 706
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 707
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    :goto_28
    const-wide/16 v0, 0x0

    .line 710
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    return-void
.end method

.method private blacklist sendAllPendingRequests(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;I)V
    .registers 11

    .line 1366
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->getPendingRequests()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p2, :cond_31

    .line 1378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAllPendingRequests: fallback - imsAvailable="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 1379
    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1378
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 1383
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_2e

    move v4, v1

    move p2, v2

    goto :goto_32

    :cond_2e
    move p2, v1

    move v4, p2

    goto :goto_32

    :cond_31
    move v4, v3

    .line 1390
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1391
    iget v6, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    if-eq v6, v1, :cond_71

    if-eq v6, v2, :cond_5e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5a

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4f

    goto :goto_36

    .line 1409
    :cond_4f
    iget-object v5, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-ne p2, v2, :cond_55

    move v6, v1

    goto :goto_56

    :cond_55
    move v6, v3

    :goto_56
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    goto :goto_36

    .line 1406
    :cond_5a
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_36

    :cond_5e
    if-eqz v4, :cond_6d

    if-eq p2, v2, :cond_6d

    .line 1398
    iget-object v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v7, v5, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 1400
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    move p2, v2

    .line 1403
    :cond_6d
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_36

    .line 1393
    :cond_71
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->sendData(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    goto :goto_36

    .line 1417
    :cond_75
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;->clearAllRequests()V

    return-void
.end method

.method private blacklist sendData(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_32

    .line 1431
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1433
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/PendingIntent;

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1431
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1435
    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1436
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1438
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/PendingIntent;

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1436
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1441
    :cond_60
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1443
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroid/app/PendingIntent;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/app/PendingIntent;

    iget-boolean v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v25, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v26, v9

    .line 1441
    invoke-virtual/range {v16 .. v27}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void
.end method

.method private blacklist sendMultipartText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    move/from16 v3, p1

    if-ne v3, v2, :cond_33

    .line 1495
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 1501
    :cond_33
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1502
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 1508
    :cond_64
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v31, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move-wide/from16 v29, v14

    invoke-virtual/range {v16 .. v32}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void
.end method

.method private blacklist sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextInternal: messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 2070
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2071
    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 2072
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v2

    const-string v3, "sendMultipartText"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 2077
    :cond_30
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2078
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 2084
    :cond_62
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2085
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-object v0, v3

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 p0, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void

    .line 2091
    :cond_93
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move-object/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v31, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move-wide/from16 v29, v14

    invoke-virtual/range {v16 .. v32}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJJ)V

    return-void
.end method

.method private blacklist sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    .registers 5

    .line 1209
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1210
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1211
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1212
    iput-object p3, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 p1, 0x12

    .line 1213
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist sendText(ILcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    move/from16 v4, p1

    if-ne v4, v2, :cond_4e

    .line 1459
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1460
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v16, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move/from16 v20, v15

    const/4 v15, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 1459
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1466
    :cond_4e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo(I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1467
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1468
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v20, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 1467
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1474
    :cond_99
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1475
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move-object/from16 v21, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v38, v0

    move-object/from16 v22, v2

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-wide/from16 v35, v12

    move/from16 v37, v14

    .line 1474
    invoke-virtual/range {v21 .. v39}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method private blacklist sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextInternal: messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", uniqueMessageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 1895
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1896
    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 1897
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v2

    const-string v3, "sendText"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 1902
    :cond_3a
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f4

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto/16 :goto_f4

    .line 1911
    :cond_4f
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1912
    iget-object v4, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1913
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v15, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move/from16 v20, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v21, v0

    move-wide/from16 v18, v2

    .line 1912
    invoke-virtual/range {v4 .. v22}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1919
    :cond_9a
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1920
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget-boolean v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    iget v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v12, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    move-object/from16 v21, v0

    iget-wide v0, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    move-wide/from16 v38, v0

    move-object/from16 v22, v2

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-wide/from16 v35, v12

    move/from16 v37, v14

    .line 1919
    invoke-virtual/range {v21 .. v39}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void

    .line 1904
    :cond_f4
    :goto_f4
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 1905
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v31, v5

    check-cast v31, Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    iget v8, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    iget v9, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    iget-wide v11, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    iget-boolean v13, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    iget-wide v14, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    const/16 v38, 0x0

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v33, v3

    move-object/from16 v29, v4

    move-object/from16 v34, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move-wide/from16 v41, v11

    move/from16 v43, v13

    move-wide/from16 v44, v14

    .line 1904
    invoke-virtual/range {v27 .. v45}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZJ)V

    return-void
.end method

.method private blacklist setImsSmsFormat(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    .line 727
    const-string p1, "unknown"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    .line 724
    :cond_b
    const-string p1, "3gpp2"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    .line 721
    :cond_10
    const-string p1, "3gpp"

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void
.end method

.method private blacklist triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z
    .registers 6

    .line 2204
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2206
    const-string v1, "pdu"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2207
    const-string p3, "format"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2209
    :try_start_11
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_17
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_11 .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .registers 3

    if-nez p1, :cond_8

    .line 1519
    const-string p1, "sentIntent is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 1523
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    .line 1525
    :catch_d
    const-string p1, "Intent has been canceled!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist triggerSentIntentForFailure(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 1531
    const-string p1, "sentIntents is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 1534
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1535
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method private blacklist updateImsInfo(Landroid/os/AsyncResult;)V
    .registers 5

    .line 733
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x1

    .line 734
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsSmsFormat(I)V

    const/4 v1, 0x0

    .line 735
    aget p1, p1, v1

    if-ne p1, v0, :cond_1a

    const-string p1, "unknown"

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS registration state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 463
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 466
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->finishDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2307
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2309
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;
    .registers 3

    if-eqz p1, :cond_10

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    if-nez v0, :cond_d

    .line 1070
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 1072
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mEmergencyDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    return-object p0

    .line 1074
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    if-nez v0, :cond_1b

    .line 1075
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 1077
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDscHolder:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    return-object p0
.end method

.method public blacklist getImsSmsFormat()Ljava/lang/String;
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .registers 2

    if-eqz p1, :cond_5

    .line 2220
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    return-object p0

    .line 2221
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    return-object p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 2

    .line 2111
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;
    .registers 1

    .line 2127
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 479
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " messageId="

    packed-switch v0, :pswitch_data_14e

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    :cond_14
    return-void

    .line 586
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 575
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SEND_TEXT_OVER_NTN_ERROR: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 578
    iget-object p1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 563
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 564
    iget v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_50

    .line 565
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    :cond_50
    const/4 v2, 0x3

    if-ne v0, v2, :cond_57

    .line 567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 569
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_SEND_TEXT: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 550
    :pswitch_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 551
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 553
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 554
    iget-object v2, p1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 556
    :try_start_86
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->requestDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8d

    .line 558
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_8d
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 559
    throw p0

    .line 546
    :pswitch_93
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsReceivedViaIms(Ljava/lang/String;)V

    return-void

    .line 541
    :pswitch_9b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleDomainSelectionTerminatedAbnormally(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;)V

    return-void

    .line 526
    :pswitch_a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 527
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 528
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 529
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 530
    iget-object v3, p1, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 531
    iget-object v4, p1, Lcom/android/internal/telephony/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 534
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-wide v3, v5

    move v5, v0

    move v6, v1

    move-object v1, p0

    .line 533
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsSentCompletedUsingDomainSelection(Ljava/lang/String;JZZZ)V
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_d7

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_d7
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 537
    throw p0

    :pswitch_dd
    move-object v1, p0

    .line 513
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/SomeArgs;

    .line 514
    iget-object p1, p0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 517
    iget-object v2, p0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 519
    :try_start_ee
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f5

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_f5
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 522
    throw p1

    :pswitch_fb
    move-object v1, p0

    .line 509
    iget-object p0, v1, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p1, 0xe

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    :pswitch_108
    move-object v1, p0

    .line 502
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    :pswitch_115
    move-object v1, p0

    .line 498
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->reevaluateTimerStatus()V

    return-void

    :pswitch_11a
    move-object v1, p0

    .line 486
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 488
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_127

    .line 489
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->updateImsInfo(Landroid/os/AsyncResult;)V

    return-void

    .line 491
    :cond_127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS State query failed with exp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_140
    move-object v1, p0

    .line 482
    iget-object p0, v1, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_14e
    .packed-switch 0xb
        :pswitch_140
        :pswitch_140
        :pswitch_11a
        :pswitch_115
        :pswitch_108
        :pswitch_fb
        :pswitch_115
        :pswitch_dd
        :pswitch_a3
        :pswitch_9b
        :pswitch_93
        :pswitch_76
        :pswitch_43
        :pswitch_1b
    .end packed-switch
.end method

.method public blacklist handleSmsStatusReport(Ljava/lang/String;[B)V
    .registers 10

    .line 2140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_5f

    .line 2142
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 2145
    iget v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 2146
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v4, :cond_2f

    .line 2152
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    move v5, v2

    :goto_30
    if-eqz v4, :cond_91

    .line 2160
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5a

    .line 2163
    iget-object v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_42

    move v1, v2

    :cond_42
    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    if-eqz v5, :cond_51

    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 2172
    :cond_51
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    :cond_5a
    :goto_5a
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    goto :goto_91

    .line 2180
    :cond_5f
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 2182
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 2183
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_91

    .line 2185
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v0

    if-ge v0, v1, :cond_7f

    const/16 v1, 0x20

    if-ge v0, v1, :cond_8d

    .line 2188
    :cond_7f
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    :cond_8d
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    :cond_91
    :goto_91
    if-nez v2, :cond_9a

    .line 2198
    const-string p0, "SmsDispatchersController"

    const-string p1, "handleSmsStatusReport: can not handle the status report!"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return-void
.end method

.method public blacklist injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V
    .registers 14

    .line 776
    const-string v0, "SmsDispatchersController:injectSmsPdu"

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-nez p1, :cond_16

    .line 779
    :try_start_a
    const-string p0, "injectSmsPdu: createFromPdu returned null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    :catch_13
    move-exception p0

    goto/16 :goto_a7

    :cond_16
    if-nez p4, :cond_29

    .line 785
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p4

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq p4, v2, :cond_29

    .line 786
    const-string p0, "injectSmsPdu: not class 1"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    .line 791
    :cond_29
    new-instance p4, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p4, p3, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 793
    const-string v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_13

    const/4 v3, 0x7

    const-string v4, ", format="

    const-string v5, "SmsDispatchersController:injectSmsText Sending msg="

    const/4 v6, 0x0

    if-eqz v2, :cond_60

    .line 794
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mGsmInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p0, v3, p5, p6, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 798
    :cond_60
    const-string p6, "3gpp2"

    invoke-virtual {p2, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_8f

    iget-object p6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz p6, :cond_8f

    .line 799
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mCdmaInboundSmsHandler"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p0, v3, p5, v6, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 805
    :cond_8f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid pdu format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_a6} :catch_13

    return-void

    .line 809
    :goto_a7
    const-string p1, "injectSmsPdu failed: "

    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    invoke-interface {p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void
.end method

.method public blacklist injectSmsPdu([BLjava/lang/String;ZLcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V
    .registers 12

    .line 754
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v5, p3

    move-object v3, p4

    .line 755
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V

    return-void
.end method

.method public blacklist isCdmaFormat(Ljava/lang/String;)Z
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isCdmaMo()Z
    .registers 2

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1009
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 1012
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isIms()Z
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    return p0
.end method

.method protected blacklist notifySmsReceivedViaImsToEmergencyStateTracker(Ljava/lang/String;)V
    .registers 3

    .line 1291
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    .line 1293
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    return-void
.end method

.method protected blacklist notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V
    .registers 12

    .line 1242
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSentToEmergencyStateTracker(Ljava/lang/String;JZZZ)V

    .line 1244
    iget-wide p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 1245
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result p0

    if-eqz v6, :cond_1b

    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isAnyPartFailed()Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 1244
    :goto_1c
    invoke-direct {v0, p2, p3, p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSentToDatagramDispatcher(JZZ)V

    return-void
.end method

.method public blacklist onSendCarrierRoamingNbIotNtnTextError(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V
    .registers 6

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendCarrierRoamingNbIotNtnTextError: messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    const/16 p2, 0x18

    .line 2258
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 3

    .line 385
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 388
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist reportSmsMemoryStatus(Landroid/os/Message;)V
    .registers 5

    .line 966
    const-string v0, "reportSmsMemoryStatus: "

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 968
    :try_start_8
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onMemoryAvailable()V

    .line 969
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 970
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 972
    const-string v2, "reportSmsMemoryStatus Failed "

    invoke-static {v1, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 974
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendCarrierRoamingNbIotNtnText(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .registers 3

    const/16 v0, 0x17

    .line 2238
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 34

    move-object/from16 v0, p0

    .line 1630
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1631
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_10

    :cond_e
    move-object/from16 v6, p4

    .line 1634
    :goto_10
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    .line 1635
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1637
    invoke-static/range {p7 .. p7}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1638
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v13, p5

    move-object/from16 v12, p6

    move/from16 v11, p9

    move-object v8, v6

    move/from16 v6, p2

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    const-string v3, "sendData"

    .line 1635
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->sendSmsUsingDomainSelection(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;Ljava/lang/String;)V

    return-void

    .line 1645
    :cond_4d
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1646
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 1648
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1646
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1649
    :cond_6f
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1650
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 1652
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1650
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void

    .line 1654
    :cond_8f
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 1656
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 1654
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    return-void
.end method

.method public blacklist sendMtSmsPollingMessage()V
    .registers 26

    move-object/from16 v0, p0

    .line 2268
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2269
    const-string v1, "sendMtSmsPollingMessage: not in roaming nb iot ntn"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2273
    :cond_14
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    .line 2274
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 2275
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 2276
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2277
    const-string v1, "sendMtSmsPollingMessage: destAddr is null or empty."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2281
    :cond_34
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104029d

    .line 2282
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2284
    const-string v1, "sendMtSmsPollingMessage: mtSmsPollingText is null or empty."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void

    .line 2288
    :cond_4d
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2289
    new-instance v3, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 2290
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 2291
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2292
    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x5

    const-wide/16 v21, 0x0

    invoke-direct/range {v3 .. v24}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 2295
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2296
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    :cond_99
    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJ)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIZIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2038
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v5, p7

    if-eqz v1, :cond_10

    .line 2039
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_12

    :cond_10
    move-object/from16 v8, p2

    .line 2042
    :goto_12
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v14, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p6

    move/from16 v6, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-wide/from16 v20, p13

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 2047
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2049
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 2051
    :cond_4a
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2052
    const-string v1, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object v1, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 2058
    :cond_61
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 835
    iget-boolean v1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    if-nez v1, :cond_72

    .line 836
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isSmsDomainSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 837
    iget-object v1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 840
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v2

    .line 841
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->getDomainSelectionConnectionHolder(Z)Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionConnectionHolder;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 842
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v2

    const/4 v2, 0x4

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/16 v5, -0x2710

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v23, v19

    const-wide/16 v19, 0x0

    move-object/from16 v0, v23

    invoke-direct/range {v1 .. v22}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    iput-object v1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 847
    const-string v1, "sendRetrySms"

    iput-object v1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 v1, 0x16

    move-object/from16 v2, p0

    .line 848
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_67
    move-object v2, v0

    .line 852
    iget-object v0, v2, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    :cond_72
    move-object v2, v0

    :cond_73
    const/4 v0, 0x0

    .line 859
    :goto_74
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 869
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 874
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 875
    :cond_f
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1f

    .line 876
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 877
    :cond_1f
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 879
    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old format("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") ==> new format ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDispatchersController"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a0

    .line 882
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 886
    const-string v4, "scAddr"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_190

    const-string v6, "destAddr"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_190

    .line 887
    const-string v11, "text"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "destPort"

    const-string v14, "data"

    if-nez v12, :cond_81

    .line 888
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_190

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_81

    goto/16 :goto_190

    .line 896
    :cond_81
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 897
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_a0

    .line 899
    const-string v2, "sendRetrySms failed due to null destAddr"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 901
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    .line 908
    :cond_a0
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_101

    .line 909
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 910
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sms failed was text with length: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_bb

    move-object v14, v12

    goto :goto_c3

    .line 911
    :cond_bb
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_c3
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 910
    invoke-static {v5, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e1

    .line 914
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_d9

    move v11, v10

    goto :goto_da

    :cond_d9
    move v11, v9

    :goto_da
    invoke-static {v15, v4, v6, v11, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    :goto_de
    move-object v12, v4

    goto/16 :goto_161

    .line 917
    :cond_e1
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_e8

    move/from16 v18, v10

    goto :goto_ea

    :cond_e8
    move/from16 v18, v9

    :goto_ea
    const/16 v23, -0x1

    iget v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v24, v11

    invoke-static/range {v15 .. v24}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    goto :goto_de

    .line 921
    :cond_101
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 922
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 923
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 924
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms failed was data with length: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_121

    const/4 v12, 0x0

    goto :goto_126

    .line 925
    :cond_121
    array-length v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_126
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 924
    invoke-static {v5, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_146

    .line 929
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_140

    move v12, v10

    goto :goto_141

    :cond_140
    move v12, v9

    .line 928
    :goto_141
    invoke-static {v15, v4, v11, v6, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v12

    goto :goto_161

    .line 933
    :cond_146
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_151

    move/from16 v19, v10

    goto :goto_153

    :cond_151
    move/from16 v19, v9

    :goto_153
    iget v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v20, v11

    .line 932
    invoke-static/range {v15 .. v20}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v12

    goto :goto_161

    :cond_160
    const/4 v12, 0x0

    :goto_161
    if-nez v12, :cond_17f

    .line 941
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 939
    const-string v3, "sendRetrySms failed to encode message.scAddr: %s, destPort: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 943
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    .line 948
    :cond_17f
    const-string v4, "smsc"

    iget-object v5, v12, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v4, "pdu"

    iget-object v5, v12, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iput-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    goto :goto_1a0

    .line 890
    :cond_190
    :goto_190
    const-string v2, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    xor-int/lit8 v2, p2, 0x1

    .line 892
    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    return-void

    :cond_1a0
    :goto_1a0
    if-eqz p2, :cond_1a5

    .line 955
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    goto :goto_1b0

    .line 956
    :cond_1a5
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_1b0

    :cond_1ae
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 958
    :goto_1b0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V
    .registers 33

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    .line 1761
    invoke-virtual/range {v0 .. v16}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZ)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZ)V
    .registers 41

    move-object/from16 v0, p0

    .line 1868
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v5, p7

    if-eqz v1, :cond_10

    .line 1869
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmscAddressFromUSIMWithPhoneIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_12

    :cond_10
    move-object/from16 v8, p2

    .line 1872
    :goto_12
    new-instance v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1873
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1874
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SmsDispatchersController;->asArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v14

    const/16 v23, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v15, p6

    move/from16 v6, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move/from16 v11, p13

    move-wide/from16 v20, p14

    move/from16 v22, p16

    invoke-direct/range {v2 .. v23}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V

    .line 1878
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1880
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 1882
    :cond_51
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1883
    const-string v1, "SmsDispatchersController"

    const-string v3, "Block SMS in carrier roaming NB IOT NTN mode."

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v1, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 1889
    :cond_68
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendTextInternal(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void
.end method

.method public blacklist setDomainSelectionResolverProxy(Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;)V
    .registers 2

    .line 1029
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDomainSelectionResolverProxy:Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;

    return-void
.end method

.method public blacklist setImsManager(Lcom/android/ims/ImsManager;)Z
    .registers 2

    .line 820
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz p0, :cond_9

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->setImsManager(Lcom/android/ims/ImsManager;)Z

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setImsSmsDispatcher(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2

    .line 760
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 3

    .line 2123
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method
