.class Lcom/android/server/tv/TvInputHardwareManager$Connection;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/tv/ITvInputHardwareCallback;

.field private mCallingUid:Ljava/lang/Integer;

.field private mConfigs:[Landroid/media/tv/TvStreamConfig;

.field private mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

.field private final mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mInfo:Landroid/media/tv/TvInputInfo;

.field private mOnFirstFrameCaptured:Ljava/lang/Runnable;

.field private mResolvedUserId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 555
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 548
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@8
    .line 550
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    #@a
    .line 551
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    #@c
    .line 552
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    #@e
    .line 556
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@10
    .line 555
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 634
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v5, 0x0

    #@c
    move-object v0, p0

    #@d
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v6

    #@11
    .line 632
    return-void

    #@12
    .line 633
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v6

    #@14
    throw v0
.end method

.method public getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    .locals 1

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    #@2
    return-object v0
.end method

.method public getCallingUidLocked()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public getConfigsLocked()[Landroid/media/tv/TvStreamConfig;
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    #@2
    return-object v0
.end method

.method public getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@2
    return-object v0
.end method

.method public getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@2
    return-object v0
.end method

.method public getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@2
    return-object v0
.end method

.method public getInfoLocked()Landroid/media/tv/TvInputInfo;
    .locals 1

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    #@2
    return-object v0
.end method

.method public getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method public getResolvedUserIdLocked()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "hardware"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # Ljava/lang/Integer;
    .param p5, "resolvedUserId"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 563
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    #@7
    invoke-interface {v1}, Landroid/media/tv/ITvInputHardwareCallback;->onReleased()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 569
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@c
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    #@f
    .line 571
    :cond_0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@11
    .line 572
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    #@13
    .line 573
    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    #@15
    .line 574
    iput-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    #@17
    .line 575
    iput-object p5, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    #@19
    .line 576
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    #@1b
    .line 578
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 580
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    #@25
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 562
    :cond_1
    :goto_1
    return-void

    #@2d
    .line 566
    :catch_0
    move-exception v0

    #@2e
    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "error in Connection::resetLocked"

    #@35
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_0

    #@39
    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@3a
    .line 582
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, "error in Connection::resetLocked"

    #@41
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_1
.end method

.method public setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    #@2
    .line 623
    return-void
.end method

.method public updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V
    .locals 0
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    #@2
    .line 587
    return-void
.end method
