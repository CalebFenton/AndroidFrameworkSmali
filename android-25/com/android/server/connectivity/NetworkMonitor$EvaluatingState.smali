.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 464
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isStarted()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 465
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@10
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    #@17
    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@19
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1b
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@1e
    move-result v2

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@24
    move-result v1

    #@25
    const v2, 0x82006

    #@28
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    #@2b
    .line 468
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2d
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@30
    move-result v0

    #@31
    if-eq v0, v3, :cond_1

    #@33
    .line 469
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@35
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@38
    move-result v0

    #@39
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    #@3c
    .line 470
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3e
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@41
    .line 472
    :cond_1
    const/16 v0, 0x3e8

    #@43
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@45
    .line 473
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@47
    .line 460
    return-void
.end method

.method public exit()V
    .locals 0

    #@0
    .prologue
    .line 549
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    #@3
    .line 548
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const v9, 0x927c0

    #@3
    const v8, 0x82002

    #@6
    const/4 v7, 0x5

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    .line 478
    iget v4, p1, Landroid/os/Message;->what:I

    #@b
    packed-switch v4, :pswitch_data_0

    #@e
    .line 543
    :pswitch_0
    return v3

    #@f
    .line 480
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@11
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@13
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@16
    move-result v5

    #@17
    if-ne v4, v5, :cond_0

    #@19
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1b
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get13(Lcom/android/server/connectivity/NetworkMonitor;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 481
    :cond_0
    return v2

    #@22
    .line 499
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@24
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    #@27
    move-result-object v4

    #@28
    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2a
    .line 500
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2c
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2f
    move-result-object v5

    #@30
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@32
    .line 499
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_2

    #@38
    .line 501
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3a
    const-string/jumbo v4, "Network would not satisfy default request, not validating"

    #@3d
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap5(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    #@40
    .line 502
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@42
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@44
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@47
    move-result-object v4

    #@48
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap4(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@4b
    .line 503
    return v2

    #@4c
    .line 505
    :cond_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@4e
    add-int/lit8 v4, v4, 0x1

    #@50
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@52
    .line 512
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@54
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@57
    move-result-object v1

    #@58
    .line 513
    .local v1, "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_4

    #@5e
    .line 514
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@60
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@62
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@65
    move-result-object v4

    #@66
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap4(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@69
    .line 536
    :cond_3
    :goto_0
    return v2

    #@6a
    .line 515
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_5

    #@70
    .line 516
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@72
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@75
    move-result-object v3

    #@76
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@78
    .line 517
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@7a
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@7d
    move-result v5

    #@7e
    iget-object v6, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    #@80
    .line 516
    invoke-virtual {v4, v8, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@87
    .line 518
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@89
    invoke-static {v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@8c
    .line 519
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@8e
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@90
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get0(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@93
    move-result-object v4

    #@94
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap4(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@97
    goto :goto_0

    #@98
    .line 521
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@9a
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@9c
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@9f
    move-result v6

    #@a0
    add-int/lit8 v6, v6, 0x1

    #@a2
    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@a5
    move-result v5

    #@a6
    const v6, 0x82006

    #@a9
    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    #@ac
    move-result-object v0

    #@ad
    .line 522
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@af
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@b1
    int-to-long v4, v4

    #@b2
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    #@b5
    .line 523
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@b7
    const/4 v4, 0x3

    #@b8
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;I)V

    #@bb
    .line 524
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@bd
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@c0
    move-result-object v3

    #@c1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c3
    .line 525
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c5
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@c8
    move-result v5

    #@c9
    .line 526
    iget-object v6, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    #@cb
    .line 524
    invoke-virtual {v4, v8, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d2
    .line 527
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@d4
    if-lt v3, v7, :cond_6

    #@d6
    .line 529
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    #@d9
    .line 531
    :cond_6
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@db
    mul-int/lit8 v3, v3, 0x2

    #@dd
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@df
    .line 532
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@e1
    if-le v3, v9, :cond_3

    #@e3
    .line 533
    iput v9, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@e5
    goto :goto_0

    #@e6
    .line 541
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :pswitch_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@e8
    if-ge v4, v7, :cond_7

    #@ea
    :goto_1
    return v2

    #@eb
    :cond_7
    move v2, v3

    #@ec
    goto :goto_1

    #@ed
    .line 478
    nop

    #@ee
    :pswitch_data_0
    .packed-switch 0x82006
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
