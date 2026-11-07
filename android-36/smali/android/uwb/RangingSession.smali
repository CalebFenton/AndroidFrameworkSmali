.class public final Landroid/uwb/RangingSession;
.super Ljava/lang/Object;
.source "RangingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingSession$Callback;,
        Landroid/uwb/RangingSession$State;
    }
.end annotation


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mCallback:Landroid/uwb/RangingSession$Callback;

.field private final blacklist mChipId:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSessionHandle:Landroid/uwb/SessionHandle;

.field private blacklist mState:Landroid/uwb/RangingSession$State;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$-BrzevpwTNRBriZJJkTNp80AW5E(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onControleeRemoved$13(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3lJ25owx4pM8Jiw_wyNnkxaMjI4(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/uwb/RangingSession;->lambda$onDataSendFailed$20(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AUQ0hZS7TKzsrV6F0GHy-2-3ekk(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingOpenFailed$2(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FlES5lg-yZ8hI0Did42zJ47HRA0(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onServiceDiscovered$25(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GTCL-wgcvcgqs5HEs3EhU5vRpeo(Landroid/uwb/RangingSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/uwb/RangingSession;->lambda$close$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JhlY-42VQUq0RVN4E7OWhXiko-Y(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingStartFailed$4(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JvNPCkmF58DZdZFNzq8YBPVrxu0(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onControleeRemoveFailed$14(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NzbyhcySOCQpfzRmoNsm0TTH3MA(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/uwb/RangingSession;->lambda$onDataReceiveFailed$22(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P-8Mn09mOBx3G1JHvkmSRf0qpS8(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onControleeAdded$11(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PREakJLzyfKSudXgjbiST-pEKFs(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingReconfigured$5(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QIkRmv0WpWbpOcU2lHWBH-_Pc6s(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingStopFailed$8(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RlD1D43JzZWoXcuELUfkxvs_BLQ(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onDataSent$19(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SyO139xiQf1JGiRlbTf2wL4lIGQ(Landroid/uwb/RangingSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/uwb/RangingSession;->lambda$onRangingOpened$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TbOrTBu-yht8uQSijRgKrNYMFQQ(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingRoundsUpdateDtTagStatus$27(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WfIDW9HlXPECbuYDo5nKPqboOQQ(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onHybridSessionControllerConfigured$28(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XNE3MDEh5Bk8jneO4DopkUNAKms(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onDataTransferPhaseConfigured$23(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XoK1muDkQgqTwSjxV1Gg33llL3c(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingStarted$3(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cP6ybG1R05-JG3w3UzTHSTxg8WQ(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onDataTransferPhaseConfigFailed$24(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ctbkATj0xmEwgPhWFXLLXQd-d3E(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingResumeFailed$18(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fGeZjtlQKgoIo7wVc6Zwli_cp8E(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingStopped$7(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iv5aIf7Faq30hegZpriFIfi2N8A(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onHybridSessionControleeConfigured$30(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jcREHxPry8Yxx7KQw7fg-YJC5lg(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingPaused$15(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nMwRfvcs1S3CbQbX0tKbwFOByR8(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onServiceConnected$26(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nOXKISqcrZi6tZyqz09wL4NkBLw(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingClosed$9(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oU4pvPLs8NgDkU-L9tAvQ3KQPh4(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingReconfigureFailed$6(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$puxRS1mbY4J0WOUmVIHWNyFPM-s(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onHybridSessionControllerConfigurationFailed$29(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qaZN_zDLWgT2c1WFr78U7pET01k(Landroid/uwb/RangingSession;Landroid/uwb/RangingReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingResult$10(Landroid/uwb/RangingReport;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sMCOW06qPkRazQEfzYytTLoAhOc(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onRangingPauseFailed$16(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sZAyDDX9aaaaflMC1SaJQeE925g(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/uwb/RangingSession;->lambda$onDataReceived$21(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u0IOgonueR04tEPxPD6LmUMLRoA(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/RangingSession;->lambda$onRangingResumed$17(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u4Gb2DdD8Y75tn8rpbC22Z9ZXFI(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onControleeAddFailed$12(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yX9lG5ByRAOwnrZSd1otiThU5QE(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingSession;->lambda$onHybridSessionControleeConfigurationFailed$31(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/RangingSession$Callback;
    .param p3, "adapter"    # Landroid/uwb/IUwbAdapter;
    .param p4, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 515
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/uwb/RangingSession$Callback;
    .end local p3    # "adapter":Landroid/uwb/IUwbAdapter;
    .end local p4    # "sessionHandle":Landroid/uwb/SessionHandle;
    .local v1, "executor":Ljava/util/concurrent/Executor;
    .local v2, "callback":Landroid/uwb/RangingSession$Callback;
    .local v3, "adapter":Landroid/uwb/IUwbAdapter;
    .local v4, "sessionHandle":Landroid/uwb/SessionHandle;
    invoke-direct/range {v0 .. v5}, Landroid/uwb/RangingSession;-><init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/RangingSession$Callback;
    .param p3, "adapter"    # Landroid/uwb/IUwbAdapter;
    .param p4, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p5, "chipId"    # Ljava/lang/String;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uwb.RangingSession["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    .line 86
    sget-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 523
    sget-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 524
    iput-object p1, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 525
    iput-object p2, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    .line 526
    iput-object p3, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 527
    iput-object p4, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    .line 528
    iput-object p5, p0, Landroid/uwb/RangingSession;->mChipId:Ljava/lang/String;

    .line 529
    return-void
.end method

.method private blacklist executeCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1384
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1387
    nop

    .line 1388
    return-void

    .line 1386
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1387
    throw v2
.end method

.method private synthetic blacklist lambda$close$0()V
    .registers 4

    .line 658
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/uwb/RangingSession$Callback;->onClosed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onControleeAddFailed$12(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1110
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onControleeAddFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onControleeAdded$11(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1096
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onControleeAdded(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onControleeRemoveFailed$14(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1137
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onControleeRemoved$13(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1123
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onControleeRemoved(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataReceiveFailed$22(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 1247
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataReceived$21(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 1233
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataSendFailed$20(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 1219
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataSent$19(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1205
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataTransferPhaseConfigFailed$24(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1274
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onDataTransferPhaseConfigFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataTransferPhaseConfigured$23(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1260
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onDataTransferPhaseConfigured(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHybridSessionControleeConfigurationFailed$31(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1374
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onHybridSessionControleeConfigurationFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHybridSessionControleeConfigured$30(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1358
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onHybridSessionControleeConfigured(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHybridSessionControllerConfigurationFailed$29(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1344
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onHybridSessionControllerConfigurationFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHybridSessionControllerConfigured$28(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1328
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onHybridSessionControllerConfigured(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingClosed$9(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 1070
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onClosed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingOpenFailed$2(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 976
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onOpenFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingOpened$1()V
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p0}, Landroid/uwb/RangingSession$Callback;->onOpened(Landroid/uwb/RangingSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingPauseFailed$16(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1164
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onPauseFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingPaused$15(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1150
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onPaused(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingReconfigureFailed$6(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1031
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onReconfigureFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingReconfigured$5(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1017
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onReconfigured(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingResult$10(Landroid/uwb/RangingReport;)V
    .registers 3
    .param p1, "report"    # Landroid/uwb/RangingReport;

    .line 1083
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onReportReceived(Landroid/uwb/RangingReport;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingResumeFailed$18(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1191
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onResumeFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingResumed$17(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1177
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onResumed(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingRoundsUpdateDtTagStatus$27(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1314
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onRangingRoundsUpdateDtTagStatus(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingStartFailed$4(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1004
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStartFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingStarted$3(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 990
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onStarted(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingStopFailed$8(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1060
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStopFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingStopped$7(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1046
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStopped(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$26(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1300
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onServiceConnected(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceDiscovered$25(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1287
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onServiceDiscovered(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist addControlee(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 685
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 686
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 689
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addControlee - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :try_start_2d
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36

    .line 694
    nop

    .line 695
    return-void

    .line 692
    :catch_36
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 657
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_11

    .line 658
    iget-object v0, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/uwb/RangingSession$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda26;-><init>(Landroid/uwb/RangingSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 660
    return-void

    .line 663
    :cond_11
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :try_start_2b
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->closeRanging(Landroid/uwb/SessionHandle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_34

    .line 668
    nop

    .line 669
    return-void

    .line 666
    :catch_34
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOpen()Z
    .registers 3

    .line 535
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist onControleeAddFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1104
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1105
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onControleeAddFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1109
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeAddFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1111
    return-void
.end method

.method public blacklist onControleeAdded(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1090
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1091
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onControleeAdded invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void

    .line 1095
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeAdded - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1097
    return-void
.end method

.method public blacklist onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1131
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1132
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onControleeRemoveFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1136
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeRemoveFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda3;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method public blacklist onControleeRemoved(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1117
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1118
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onControleeRemoved invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .line 1122
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControleeRemoved - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda6;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1124
    return-void
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 1241
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1242
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataReceiveFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1246
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceiveFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1248
    return-void
.end method

.method public blacklist onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 7
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 1227
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1228
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataReceived invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-void

    .line 1232
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1234
    return-void
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 1213
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1214
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataSendFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void

    .line 1218
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSendFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda14;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1220
    return-void
.end method

.method public blacklist onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1199
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1200
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataSent invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void

    .line 1204
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSent - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda4;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1206
    return-void
.end method

.method public blacklist onDataTransferPhaseConfigFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1268
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1269
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataTransferPhaseConfigFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void

    .line 1273
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataTransferPhaseConfigFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda10;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1275
    return-void
.end method

.method public blacklist onDataTransferPhaseConfigured(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1254
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1255
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDataTransferPhaseConfigured invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-void

    .line 1259
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataTransferPhaseConfigured - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1261
    return-void
.end method

.method public blacklist onHybridSessionControleeConfigurationFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1366
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1367
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onHybridSessionControleeConfigurationFailed invoked for non-opensession"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    .line 1372
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControleeConfigurationFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda27;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1376
    return-void
.end method

.method public blacklist onHybridSessionControleeConfigured(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1352
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1353
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onHybridSessionControleeConfigured invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void

    .line 1357
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControleeConfigured - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public blacklist onHybridSessionControllerConfigurationFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1336
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1337
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onHybridSessionControllerConfigurationFailed invoked for non-opensession"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void

    .line 1342
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControllerConfigurationFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda12;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1346
    return-void
.end method

.method public blacklist onHybridSessionControllerConfigured(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1322
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1323
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onHybridSessionControllerConfigured invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1327
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHybridSessionControllerConfigured - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda19;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1329
    return-void
.end method

.method public blacklist onRangingClosed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 1068
    sget-object v0, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 1069
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingClosed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda1;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public blacklist onRangingOpenFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 969
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 970
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingOpenFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 974
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingOpenFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    sget-object v0, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 976
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda8;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 977
    return-void
.end method

.method public blacklist onRangingOpened()V
    .registers 4

    .line 954
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 955
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingOpened invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 959
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingOpened - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget-object v0, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 961
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda22;-><init>(Landroid/uwb/RangingSession;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 962
    return-void
.end method

.method public blacklist onRangingPauseFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1158
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1159
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingPauseFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1163
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingPauseFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda23;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1165
    return-void
.end method

.method public blacklist onRangingPaused(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1144
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1145
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingPaused invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void

    .line 1149
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingPaused - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda29;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1151
    return-void
.end method

.method public blacklist onRangingReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1025
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 1026
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingReconfigureFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void

    .line 1030
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingReconfigureFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda2;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1032
    return-void
.end method

.method public blacklist onRangingReconfigured(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1011
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 1012
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingReconfigured invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1016
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingReconfigured - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda31;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1018
    return-void
.end method

.method public blacklist onRangingResult(Landroid/uwb/RangingReport;)V
    .registers 5
    .param p1, "report"    # Landroid/uwb/RangingReport;

    .line 1077
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1078
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingResult invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void

    .line 1082
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResult - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/RangingReport;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public blacklist onRangingResumeFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1185
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1186
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingResumeFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-void

    .line 1190
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResumeFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda25;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1192
    return-void
.end method

.method public blacklist onRangingResumed(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1171
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1172
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingResumed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void

    .line 1176
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingResumed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda7;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1178
    return-void
.end method

.method public blacklist onRangingRoundsUpdateDtTagStatus(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1307
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1308
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onDlTDoARangingRoundsUpdateStatus invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void

    .line 1312
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDlTDoARangingRoundsUpdateStatus - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1314
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda30;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1316
    :cond_36
    return-void
.end method

.method public blacklist onRangingStartFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 998
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 999
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingStartFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 1003
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStartFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda11;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1005
    return-void
.end method

.method public blacklist onRangingStarted(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 983
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 984
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingStarted invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 988
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStarted - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    sget-object v0, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 990
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda28;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 991
    return-void
.end method

.method public blacklist onRangingStopFailed(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1054
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 1055
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingStopFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void

    .line 1059
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStopFailed - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda24;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1061
    return-void
.end method

.method public blacklist onRangingStopped(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1039
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_e

    .line 1040
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onRangingStopped invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1044
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingStopped - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v0, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 1046
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda16;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method public blacklist onServiceConnected(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1294
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1295
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onServiceConnected invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void

    .line 1299
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda21;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1301
    return-void
.end method

.method public blacklist onServiceDiscovered(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1281
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1282
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    const-string v1, "onServiceDiscovered invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void

    .line 1286
    :cond_e
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDiscovered - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda18;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public whitelist pause(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 745
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_2f

    .line 749
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 754
    nop

    .line 755
    return-void

    .line 752
    :catch_29
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 746
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist queryMaxDataSizeBytes()I
    .registers 4

    .line 880
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 884
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryMaxDataSizeBytes - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->queryMaxDataSizeBytes(Landroid/uwb/SessionHandle;)I

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29

    return v0

    .line 887
    :catch_29
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ranging session is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reconfigure(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 591
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 592
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 595
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconfigure - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_2d
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catch_36
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeControlee(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 711
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 712
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 715
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeControlee - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :try_start_2d
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36

    .line 720
    nop

    .line 721
    return-void

    .line 718
    :catch_36
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resume(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 774
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_2f

    .line 778
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 783
    nop

    .line 784
    return-void

    .line 781
    :catch_29
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 775
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist sendData(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 7
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 806
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_2f

    .line 810
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/uwb/IUwbAdapter;->sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 815
    nop

    .line 816
    return-void

    .line 813
    :catch_29
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist setDataTransferPhaseConfig(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 835
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 839
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataTransferPhaseConfig - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->setDataTransferPhaseConfig(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 844
    nop

    .line 845
    return-void

    .line 842
    :catch_29
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 836
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist setHybridSessionControleeConfiguration(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 938
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 942
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHybridSessionControleeConfiguration - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->setHybridSessionControleeConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 947
    nop

    .line 948
    return-void

    .line 945
    :catch_29
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ranging session is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHybridSessionControllerConfiguration(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 909
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 913
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHybridSessionControllerConfiguration - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->setHybridSessionControllerConfiguration(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 918
    nop

    .line 919
    return-void

    .line 916
    :catch_29
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 910
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ranging session is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 565
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_2f

    .line 569
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 574
    nop

    .line 575
    return-void

    .line 572
    :catch_29
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist stop()V
    .registers 4

    .line 624
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_2f

    .line 628
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_20
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->stopRanging(Landroid/uwb/SessionHandle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_29

    .line 633
    nop

    .line 634
    return-void

    .line 631
    :catch_29
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 625
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist updatePose(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 1399
    :try_start_0
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->updatePose(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1402
    nop

    .line 1403
    return-void

    .line 1400
    :catch_9
    move-exception v0

    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateRangingRoundsDtTag(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 858
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 859
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 862
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRangingRoundsUpdateDtTag - sessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :try_start_2d
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->updateRangingRoundsDtTag(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_36

    .line 867
    nop

    .line 868
    return-void

    .line 865
    :catch_36
    move-exception v0

    .line 866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
