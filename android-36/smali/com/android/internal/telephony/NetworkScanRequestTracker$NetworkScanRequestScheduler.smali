.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScanRequestScheduler"
.end annotation


# instance fields
.field private blacklist mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field private blacklist mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLiveRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoInterruptScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoStopScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStopScan(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minterruptScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreceiveResult(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->receiveResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->stopScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    return-void
.end method

.method private blacklist cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I
    .registers 4

    .line 373
    sget-object p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    const-string v1, "ScanRequestTracker"

    packed-switch p0, :pswitch_data_58

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "commandExceptionErrorToScanError: Unexpected CommandExceptionError "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2710

    return p0

    .line 396
    :pswitch_25
    const-string p0, "commandExceptionErrorToScanError: DEVICE_IN_USE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 393
    :pswitch_2c
    const-string p0, "commandExceptionErrorToScanError: INVALID_ARGUMENTS"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 390
    :pswitch_33
    const-string p0, "commandExceptionErrorToScanError: OPERATION_NOT_ALLOWED"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 387
    :pswitch_39
    const-string p0, "commandExceptionErrorToScanError: MODEM_ERR"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 384
    :pswitch_3f
    const-string p0, "commandExceptionErrorToScanError: INTERNAL_ERR"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 381
    :pswitch_45
    const-string p0, "commandExceptionErrorToScanError: NO_MEMORY"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 378
    :pswitch_4b
    const-string p0, "commandExceptionErrorToScanError: REQUEST_NOT_SUPPORTED"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    .line 375
    :pswitch_52
    const-string p0, "commandExceptionErrorToScanError: RADIO_NOT_AVAILABLE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method private declared-synchronized blacklist deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .registers 6

    monitor-enter p0

    .line 612
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_52

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne v0, v1, :cond_52

    const/4 v0, 0x0

    if-eqz p3, :cond_25

    if-nez p2, :cond_1f

    .line 615
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x3

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    goto :goto_25

    :catchall_1d
    move-exception p1

    goto :goto_54

    .line 618
    :cond_1f
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x2

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 622
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemReset(Landroid/os/Handler;)V

    .line 623
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 624
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 625
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz p1, :cond_52

    .line 626
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    .line 627
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_1d

    .line 630
    :cond_52
    monitor-exit p0

    return-void

    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_1d

    throw p1
.end method

.method private declared-synchronized blacklist doInterruptScan(I)V
    .registers 5

    monitor-enter p0

    .line 553
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 554
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_3f

    :catchall_22
    move-exception p1

    goto :goto_41

    .line 557
    :cond_24
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInterruptScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_22

    .line 559
    :goto_3f
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_22

    throw p1
.end method

.method private blacklist doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .registers 6

    .line 406
    const-string v0, "ScanRequestTracker"

    if-nez p1, :cond_a

    .line 407
    const-string p0, "CMD_START_NETWORK_SCAN: nsri is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$misValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1a

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0, p1, v3, v3, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void

    .line 415
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getIsBinderDead()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 416
    const-string p0, "CMD_START_NETWORK_SCAN: Binder has died"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 419
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 421
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v0, 0x3

    invoke-static {p0, p1, v3, v0, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    :cond_3e
    return-void
.end method

.method private declared-synchronized blacklist doStopScan(I)V
    .registers 6

    monitor-enter p0

    .line 518
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v2, 0x5

    .line 520
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 519
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_56

    :catchall_22
    move-exception p1

    goto :goto_58

    .line 521
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_3b

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_3b

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 524
    iput-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    goto :goto_56

    .line 526
    :cond_3b
    const-string v0, "ScanRequestTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_22

    .line 528
    :goto_56
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_22

    throw p1
.end method

.method private declared-synchronized blacklist interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 6

    monitor-enter p0

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_3c

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    const/16 v1, 0x3e8

    .line 579
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    .line 580
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/16 v1, 0x2712

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3a

    .line 585
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_3a
    move-exception p1

    goto :goto_3f

    .line 587
    :cond_3c
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3a

    throw p1
.end method

.method private blacklist interruptScanDone(Landroid/os/AsyncResult;)V
    .registers 4

    .line 562
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez p1, :cond_e

    .line 564
    const-string p0, "ScanRequestTracker"

    const-string p1, "EVENT_INTERRUPT_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 567
    :cond_e
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method private blacklist receiveResult(Landroid/os/AsyncResult;)V
    .registers 8

    .line 456
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 457
    const-string v1, "ScanRequestTracker"

    if-nez v0, :cond_e

    .line 458
    const-string p0, "EVENT_RECEIVE_NETWORK_SCAN_RESULT: nsri is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eq v0, v2, :cond_18

    .line 462
    const-string p0, "EVENT_RECEIVE_NETWORK_SCAN_RESULT received for inactive scan"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 465
    :cond_18
    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmCallingPackage(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    .line 468
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    .line 469
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const/16 v2, 0x1d

    .line 471
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const-string v2, "NetworkScanTracker#onResult"

    .line 474
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v1

    .line 476
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_ea

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_ea

    .line 477
    check-cast v2, Lcom/android/internal/telephony/NetworkScanResult;

    .line 478
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRenounceFineLocationAccess(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result p1

    if-nez p1, :cond_80

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 479
    invoke-static {p1, v1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p1

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p1, v1, :cond_80

    move p1, v3

    goto :goto_81

    :cond_80
    const/4 p1, 0x4

    .line 485
    :goto_81
    iget v1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-nez v1, :cond_c2

    .line 486
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 487
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v4, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellInfo(Ljava/util/List;)V

    .line 491
    :cond_9c
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v4, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 492
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v4

    iget-object v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 491
    invoke-static {v1, v0, p1, v4, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 493
    iget p1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c1

    .line 494
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 495
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    :cond_c1
    return-void

    .line 498
    :cond_c2
    iget-object v4, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    if-eqz v4, :cond_d1

    .line 499
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 500
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v1

    iget-object v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 499
    invoke-static {v4, v0, p1, v1, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 502
    :cond_d1
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 503
    iget p1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result p1

    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void

    .line 506
    :cond_ea
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 507
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    const/16 p1, 0x2710

    .line 508
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method private blacklist rilErrorToScanError(I)I
    .registers 4

    if-eqz p1, :cond_6c

    const/4 p0, 0x1

    .line 339
    const-string v0, "ScanRequestTracker"

    if-eq p1, p0, :cond_66

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x28

    if-eq p1, v1, :cond_59

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_52

    const/16 v1, 0x36

    if-eq p1, v1, :cond_4c

    const/16 v1, 0x40

    if-eq p1, v1, :cond_45

    const/16 v1, 0x25

    if-eq p1, v1, :cond_3f

    const/16 v1, 0x26

    if-eq p1, v1, :cond_39

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rilErrorToScanError: Unexpected RadioError "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2710

    return p0

    .line 352
    :cond_39
    const-string p1, "rilErrorToScanError: INTERNAL_ERR"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 349
    :cond_3f
    const-string p1, "rilErrorToScanError: NO_MEMORY"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 364
    :cond_45
    const-string p0, "rilErrorToScanError: DEVICE_IN_USE"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 358
    :cond_4c
    const-string p1, "rilErrorToScanError: OPERATION_NOT_ALLOWED"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 361
    :cond_52
    const-string p0, "rilErrorToScanError: INVALID_ARGUMENTS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 355
    :cond_59
    const-string p1, "rilErrorToScanError: MODEM_ERR"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 346
    :cond_5f
    const-string p0, "rilErrorToScanError: REQUEST_NOT_SUPPORTED"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    .line 343
    :cond_66
    const-string p1, "rilErrorToScanError: RADIO_NOT_AVAILABLE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized blacklist startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 6

    monitor-enter p0

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_44

    .line 598
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 599
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getRequest()Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    .line 600
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 599
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 601
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_42

    .line 603
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_42
    move-exception p1

    goto :goto_47

    .line 605
    :cond_44
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_42

    throw p1
.end method

.method private declared-synchronized blacklist startScanDone(Landroid/os/AsyncResult;)V
    .registers 5

    monitor-enter p0

    .line 430
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_12

    .line 432
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 433
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_66

    .line 435
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v1, :cond_5d

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_23

    goto :goto_5d

    .line 439
    :cond_23
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3c

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 441
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_5b

    .line 444
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 445
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_54

    .line 446
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 447
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_5b

    .line 450
    :cond_54
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: ar.exception can not be null!"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_10

    .line 453
    :goto_5b
    monitor-exit p0

    return-void

    .line 436
    :cond_5d
    :goto_5d
    :try_start_5d
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri does not match mLiveRequestInfo"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_10

    .line 437
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_10

    throw p1
.end method

.method private blacklist stopScanDone(Landroid/os/AsyncResult;)V
    .registers 6

    .line 531
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 532
    const-string v1, "ScanRequestTracker"

    if-nez v0, :cond_e

    .line 533
    const-string p0, "EVENT_STOP_NETWORK_SCAN_DONE: nsri is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 536
    :cond_e
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    .line 537
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_2b

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    const/4 p1, 0x0

    .line 538
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void

    .line 540
    :cond_2b
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 541
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_42

    .line 542
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 543
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void

    .line 546
    :cond_42
    const-string p0, "EVENT_STOP_NETWORK_SCAN_DONE: ar.exception can not be null!"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
