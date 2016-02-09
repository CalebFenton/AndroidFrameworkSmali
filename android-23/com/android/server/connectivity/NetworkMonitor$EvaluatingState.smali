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
    .line 413
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
    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@6
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@9
    move-result v2

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@f
    move-result v1

    #@10
    const v2, 0x82006

    #@13
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    #@16
    .line 420
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@18
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get13(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@1b
    move-result v0

    #@1c
    if-eq v0, v3, :cond_0

    #@1e
    .line 421
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@20
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get13(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@23
    move-result v0

    #@24
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    #@27
    .line 422
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@29
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@2c
    .line 424
    :cond_0
    const/16 v0, 0x3e8

    #@2e
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@30
    .line 425
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@32
    .line 418
    return-void
.end method

.method public exit()V
    .locals 0

    #@0
    .prologue
    .line 496
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    #@3
    .line 495
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const v9, 0x927c0

    #@3
    const/4 v8, 0x5

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    .line 430
    iget v4, p1, Landroid/os/Message;->what:I

    #@8
    packed-switch v4, :pswitch_data_0

    #@b
    .line 490
    :pswitch_0
    return v3

    #@c
    .line 432
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@e
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@10
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@13
    move-result v5

    #@14
    if-ne v4, v5, :cond_0

    #@16
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@18
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 433
    :cond_0
    return v2

    #@1f
    .line 451
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@21
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    #@24
    move-result-object v4

    #@25
    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@27
    .line 452
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@29
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2c
    move-result-object v5

    #@2d
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2f
    .line 451
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 453
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@37
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@39
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@40
    .line 454
    return v2

    #@41
    .line 456
    :cond_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@43
    add-int/lit8 v4, v4, 0x1

    #@45
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@47
    .line 463
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@49
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()I

    #@4c
    move-result v0

    #@4d
    .line 464
    .local v0, "httpResponseCode":I
    const/16 v4, 0xcc

    #@4f
    if-ne v0, v4, :cond_4

    #@51
    .line 465
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@53
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@55
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@5c
    .line 483
    :cond_3
    :goto_0
    return v2

    #@5d
    .line 466
    :cond_4
    const/16 v4, 0xc8

    #@5f
    if-lt v0, v4, :cond_5

    #@61
    const/16 v4, 0x18f

    #@63
    if-gt v0, v4, :cond_5

    #@65
    .line 467
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@67
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@69
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@70
    goto :goto_0

    #@71
    .line 469
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@73
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@75
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@78
    move-result v6

    #@79
    add-int/lit8 v6, v6, 0x1

    #@7b
    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    #@7e
    move-result v5

    #@7f
    const v6, 0x82006

    #@82
    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    #@85
    move-result-object v1

    #@86
    .line 470
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@88
    iget v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@8a
    int-to-long v6, v5

    #@8b
    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    #@8e
    .line 471
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@90
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@93
    move-result-object v4

    #@94
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@96
    .line 473
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@98
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9b
    move-result-object v6

    #@9c
    .line 472
    const v7, 0x82002

    #@9f
    .line 471
    invoke-virtual {v5, v7, v2, v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@a6
    .line 474
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@a8
    if-lt v3, v8, :cond_6

    #@aa
    .line 476
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    #@ad
    .line 478
    :cond_6
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@af
    mul-int/lit8 v3, v3, 0x2

    #@b1
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@b3
    .line 479
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@b5
    if-le v3, v9, :cond_3

    #@b7
    .line 480
    iput v9, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    #@b9
    goto :goto_0

    #@ba
    .line 488
    .end local v0    # "httpResponseCode":I
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    #@bc
    if-ge v4, v8, :cond_7

    #@be
    :goto_1
    return v2

    #@bf
    :cond_7
    move v2, v3

    #@c0
    goto :goto_1

    #@c1
    .line 430
    nop

    #@c2
    :pswitch_data_0
    .packed-switch 0x82006
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
