.class public Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.super Ljava/lang/Object;
.source "DomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;,
        Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field protected static final blacklist EVENT_EMERGENCY_NETWORK_SCAN_RESULT:I = 0x1

.field protected static final blacklist EVENT_LAST:I = 0x7

.field protected static final blacklist EVENT_MODEM_RESET:I = 0x7

.field protected static final blacklist EVENT_QUALIFIED_NETWORKS_CHANGED:I = 0x2

.field protected static final blacklist EVENT_RESET_NETWORK_SCAN_DONE:I = 0x5

.field protected static final blacklist EVENT_SERVICE_BINDING_TIMEOUT:I = 0x4

.field protected static final blacklist EVENT_SERVICE_CONNECTED:I = 0x3

.field protected static final blacklist EVENT_TRIGGER_NETWORK_SCAN_DONE:I = 0x6


# instance fields
.field private final blacklist mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

.field private blacklist mDisconnectCause:I

.field private blacklist mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

.field protected blacklist mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

.field private final blacklist mIsEmergency:Z

.field private blacklist mIsTestMode:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private blacklist mOnComplete:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

.field protected blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreciseDisconnectCause:I

.field private blacklist mReasonMessage:Ljava/lang/String;

.field private blacklist mRegisteredRegistrant:Z

.field private blacklist mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

.field private blacklist mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

.field private blacklist mSelectorType:I

.field private blacklist mStatus:I

.field protected blacklist mTag:Ljava/lang/String;

.field private final blacklist mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

.field private blacklist mWwanSelectorCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmController(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsEmergency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestMode(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsTestMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingScanRequest(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorResultCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionAttributes(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectorType(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectorType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/ITransportSelectorCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWwanSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mWwanSelectorCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDomainSelector(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IDomainSelector;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResultCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IWwanSelectorResultCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWwanSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IWwanSelectorCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mWwanSelectorCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearWaitingForServiceBinding(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearWaitingForServiceBinding()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispose(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monModemReset(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onModemReset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTriggerNetworkScanError(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;ILcom/android/internal/telephony/CommandException$Error;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onTriggerNetworkScanError(ILcom/android/internal/telephony/CommandException$Error;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->setState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForServiceBinding(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;IZLcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 7

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, "DomainSelectionConnection"

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    .line 341
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsTestMode:Z

    const/4 v0, -0x1

    .line 380
    iput v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDisconnectCause:I

    .line 381
    iput v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPreciseDisconnectCause:I

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mReasonMessage:Ljava/lang/String;

    .line 395
    iput-object p4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    .line 396
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 397
    iput p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectorType:I

    .line 398
    iput-boolean p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsEmergency:Z

    .line 399
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLooper:Landroid/os/Looper;

    .line 401
    new-instance p1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    .line 402
    new-instance p1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method private blacklist checkState(I)Z
    .registers 2

    .line 854
    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist clearState(I)V
    .registers 3

    .line 850
    iget v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    return-void
.end method

.method private blacklist clearWaitingForServiceBinding()V
    .registers 3

    const/4 v0, 0x4

    .line 710
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 711
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearState(I)V

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    if-eqz p0, :cond_11

    .line 713
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    return-void
.end method

.method private blacklist dispose()V
    .registers 4

    const/4 v0, 0x1

    .line 748
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->setState(I)V

    .line 749
    iget-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mRegisteredRegistrant:Z

    if-eqz v1, :cond_1b

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForEmergencyNetworkScan(Landroid/os/Handler;)V

    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemReset(Landroid/os/Handler;)V

    const/4 v1, 0x0

    .line 752
    iput-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mRegisteredRegistrant:Z

    .line 754
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onCancel(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->removeConnection(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 757
    :cond_2b
    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    return-void
.end method

.method private static blacklist getTransportFromAccessNetwork(I)I
    .registers 2

    .line 0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist onCancel(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    const/16 v1, 0x8

    .line 599
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 600
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearState(I)V

    .line 601
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->cancelEmergencyNetworkScan(ZLandroid/os/Message;)V

    :cond_13
    return-void
.end method

.method private blacklist onModemReset()V
    .registers 3

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModemReset status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->shouldTerminateCallOnRadioNotAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_34

    :cond_1d
    const/4 v0, 0x1

    .line 807
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    :cond_2c
    const/16 v0, 0x11

    .line 810
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onSelectionTerminated(I)V

    .line 811
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V

    :cond_34
    :goto_34
    return-void
.end method

.method private blacklist onTriggerNetworkScanError(ILcom/android/internal/telephony/CommandException$Error;)V
    .registers 14

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTriggerNetworkScanError scanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->shouldTerminateCallOnRadioNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, v0, :cond_34

    const/16 p1, 0x8

    .line 781
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearState(I)V

    const/16 p1, 0x11

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onSelectionTerminated(I)V

    .line 783
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V

    return-void

    :cond_34
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5b

    .line 789
    new-instance v0, Landroid/telephony/EmergencyRegistrationResult;

    const-string v9, ""

    const-string v10, ""

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    invoke-direct/range {v0 .. v10}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    if-eqz p0, :cond_5b

    .line 795
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 797
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5b
    return-void
.end method

.method private blacklist setState(I)V
    .registers 3

    .line 846
    iget v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mStatus:I

    return-void
.end method

.method private blacklist shouldTerminateCallOnRadioNotAvailable()Z
    .registers 2

    .line 815
    iget-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsEmergency:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectorType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 5

    const/4 v0, 0x1

    .line 696
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2a

    .line 700
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->setState(I)V

    const/4 v1, 0x0

    .line 701
    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

    .line 702
    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    if-eqz p1, :cond_1a

    goto :goto_1e

    .line 703
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getSelectionAttributesToRebindService()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p1

    :goto_1e
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 705
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist cancelSelection()V
    .registers 1

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->finishSelection()V

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 916
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist finishSelection()V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

    if-eqz v1, :cond_f

    .line 655
    invoke-interface {v1}, Lcom/android/internal/telephony/IDomainSelector;->finishSelection()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v1

    goto :goto_2c

    :catch_d
    move-exception v1

    goto :goto_15

    .line 660
    :cond_f
    :goto_f
    :try_start_f
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_2a

    :catchall_13
    move-exception p0

    goto :goto_30

    .line 658
    :goto_15
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSelection exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_b

    goto :goto_f

    .line 662
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 660
    :goto_2c
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V

    .line 661
    throw v1

    .line 662
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_13

    throw p0
.end method

.method public blacklist getCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    return-object p0
.end method

.method public blacklist getDisconnectCause()I
    .registers 1

    .line 882
    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDisconnectCause:I

    return p0
.end method

.method public blacklist getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .registers 2

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getSelectionAttributes()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 902
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getSelectionAttributes()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getPsDisconnectCause()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .registers 1

    .line 886
    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPreciseDisconnectCause:I

    return p0
.end method

.method public blacklist getPreferredTransport(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;)I"
        }
    .end annotation

    .line 827
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    .line 828
    iget-object v1, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    array-length v2, v1

    if-lez v2, :cond_4

    .line 829
    iget v0, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    if-ne v0, p1, :cond_4

    const/4 p0, 0x0

    .line 830
    aget p0, v1, p0

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getTransportFromAccessNetwork(I)I

    move-result p0

    return p0

    .line 835
    :cond_21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreferredTransport no network found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getReasonMessage()Ljava/lang/String;
    .registers 1

    .line 890
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mReasonMessage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSelectionAttributes()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    return-object p0
.end method

.method protected blacklist getSelectionAttributesToRebindService()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 1

    .line 739
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    return-object p0
.end method

.method protected blacklist getTerminationCauseForSelectionTimeout()I
    .registers 1

    .line 0
    const/16 p0, 0xd

    return p0
.end method

.method public blacklist getTransportSelectorCallback()Lcom/android/internal/telephony/ITransportSelectorCallback;
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    return-object p0
.end method

.method public blacklist getWwanSelectorResultCallback()Lcom/android/internal/telephony/IWwanSelectorResultCallback;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    return-object p0
.end method

.method protected blacklist initHandler()V
    .registers 3

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    :cond_d
    return-void
.end method

.method public blacklist isWaitingForServiceBinding()Z
    .registers 2

    const/4 v0, 0x4

    .line 744
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 920
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 3

    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onCancel()V
    .registers 2

    const/4 v0, 0x0

    .line 594
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onCancel(Z)V

    return-void
.end method

.method public blacklist onCreated()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onDomainSelected(I)V
    .registers 2

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist onDomainSelected(IZ)V
    .registers 3

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(I)V

    return-void
.end method

.method protected blacklist onQualifiedNetworksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 768
    iget-boolean p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsEmergency:Z

    if-eqz p1, :cond_12

    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectorType:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_a

    goto :goto_12

    .line 771
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DomainSelectionConnection for emergency calls should override onQualifiedNetworksChanged()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist onRequestEmergencyNetworkScan([IIZ)V
    .registers 10

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/16 v2, 0x8

    if-eqz v1, :cond_83

    const/4 v1, 0x1

    .line 522
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v3

    if-nez v3, :cond_83

    .line 523
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_83

    :cond_17
    const/16 v3, 0x10

    .line 529
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 530
    iget-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    if-eqz p3, :cond_2c

    .line 534
    const-string p1, "onRequestEmergencyNetworkScan consecutive scan requests"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 535
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_9d

    .line 540
    :cond_2c
    const-string p3, "onRequestEmergencyNetworkScan reset not completed"

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 542
    new-instance p3, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    invoke-direct {p3, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;-><init>([II)V

    iput-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    .line 543
    monitor-exit v0

    return-void

    :cond_3a
    if-eqz p3, :cond_54

    .line 545
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->setState(I)V

    .line 546
    new-instance v1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;-><init>([II)V

    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    .line 547
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 p2, 0x5

    .line 548
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 547
    invoke-virtual {p1, p3, p0}, Lcom/android/internal/telephony/Phone;->cancelEmergencyNetworkScan(ZLandroid/os/Message;)V

    .line 549
    monitor-exit v0

    return-void

    .line 552
    :cond_54
    iget-boolean p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mRegisteredRegistrant:Z

    const/4 v3, 0x0

    if-nez p3, :cond_6c

    .line 553
    iget-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {p3, v4, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForEmergencyNetworkScan(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 555
    iget-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 v5, 0x7

    invoke-interface {p3, v4, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 556
    iput-boolean v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mRegisteredRegistrant:Z

    .line 558
    :cond_6c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->setState(I)V

    .line 559
    iget-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    .line 561
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    .line 560
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 559
    invoke-virtual {p3, p1, p2, v1}, Lcom/android/internal/telephony/Phone;->triggerEmergencyNetworkScan([IILandroid/os/Message;)V

    .line 562
    iput-object v3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPendingScanRequest:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    .line 563
    monitor-exit v0

    return-void

    .line 524
    :cond_83
    :goto_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRequestEmergencyNetworkScan waitResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 526
    monitor-exit v0

    return-void

    .line 563
    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_2a

    throw p0
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 2

    .line 0
    return-void
.end method

.method protected blacklist onServiceBindingTimeout()V
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 721
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 722
    const-string v1, "onServiceBindingTimeout disposed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 723
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1f

    .line 726
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getTerminationCauseForSelectionTimeout()I

    move-result v1

    .line 725
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onSelectionTerminated(I)V

    .line 727
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->dispose()V

    .line 728
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_11

    throw p0
.end method

.method public blacklist onServiceConnected()V
    .registers 3

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 668
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1f

    .line 672
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 673
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_26

    .line 669
    :cond_1f
    :goto_1f
    const-string v1, "onServiceConnected disposed or not waiting for the binding"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 670
    monitor-exit v0

    return-void

    .line 674
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public blacklist onServiceDisconnected()V
    .registers 4

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    if-eqz v1, :cond_e

    const/4 v2, 0x3

    .line 681
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_29

    :cond_e
    :goto_e
    const/4 v1, 0x1

    .line 683
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->checkState(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_23

    .line 691
    :cond_1e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 692
    monitor-exit v0

    return-void

    .line 686
    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

    .line 687
    iput-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mResultCallback:Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    .line 688
    monitor-exit v0

    return-void

    .line 692
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_c

    throw p0
.end method

.method public blacklist onWlanSelected()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onWlanSelected(Z)V
    .registers 2

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onWlanSelected()V

    return-void
.end method

.method public blacklist onWwanSelected()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/DomainSelectionService$SelectionAttributes;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 623
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x2

    .line 624
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearState(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_36

    const/4 v1, 0x0

    .line 626
    :try_start_11
    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDomainSelector:Lcom/android/internal/telephony/IDomainSelector;

    if-nez v2, :cond_2f

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getSelectionAttributesToRebindService()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 629
    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearWaitingForServiceBinding()V

    goto :goto_32

    :catch_29
    move-exception p1

    goto :goto_38

    .line 633
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    goto :goto_32

    .line 636
    :cond_2f
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IDomainSelector;->reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_32} :catch_29
    .catchall {:try_start_11 .. :try_end_32} :catchall_53

    .line 643
    :goto_32
    :try_start_32
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    return-object p0

    :catchall_36
    move-exception p0

    goto :goto_57

    .line 639
    :goto_38
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reselectDomain exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_53

    .line 643
    :try_start_4f
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-object p0

    :catchall_53
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mOnComplete:Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-object p0

    .line 645
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_36

    throw p0
.end method

.method public blacklist selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mSelectionAttributes:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTransportSelectorCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->clearWaitingForServiceBinding()V

    goto :goto_18

    :catchall_13
    move-exception p0

    goto :goto_1a

    .line 462
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->waitForServiceBinding(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 464
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_13

    throw p0
.end method

.method public blacklist setDisconnectCause(IILjava/lang/String;)V
    .registers 4

    .line 876
    iput p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mDisconnectCause:I

    .line 877
    iput p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPreciseDisconnectCause:I

    .line 878
    iput-object p3, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mReasonMessage:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTestMode(Z)V
    .registers 2

    .line 864
    iput-boolean p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mIsTestMode:Z

    return-void
.end method
