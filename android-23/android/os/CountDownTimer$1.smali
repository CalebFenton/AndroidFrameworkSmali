.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CountDownTimer;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 119
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@4
    monitor-enter v7

    #@5
    .line 120
    :try_start_0
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@7
    invoke-static {v6}, Landroid/os/CountDownTimer;->-get0(Landroid/os/CountDownTimer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    monitor-exit v7

    #@e
    .line 121
    return-void

    #@f
    .line 124
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@11
    invoke-static {v6}, Landroid/os/CountDownTimer;->-get2(Landroid/os/CountDownTimer;)J

    #@14
    move-result-wide v8

    #@15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@18
    move-result-wide v10

    #@19
    sub-long v4, v8, v10

    #@1b
    .line 126
    .local v4, "millisLeft":J
    cmp-long v6, v4, v12

    #@1d
    if-gtz v6, :cond_1

    #@1f
    .line 127
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@21
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :goto_0
    monitor-exit v7

    #@25
    .line 117
    return-void

    #@26
    .line 128
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@28
    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    #@2b
    move-result-wide v8

    #@2c
    cmp-long v6, v4, v8

    #@2e
    if-gez v6, :cond_2

    #@30
    .line 130
    const/4 v6, 0x1

    #@31
    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {p0, v6, v4, v5}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 119
    .end local v4    # "millisLeft":J
    :catchall_0
    move-exception v6

    #@3a
    monitor-exit v7

    #@3b
    throw v6

    #@3c
    .line 132
    .restart local v4    # "millisLeft":J
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3f
    move-result-wide v2

    #@40
    .line 133
    .local v2, "lastTickStart":J
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@42
    invoke-virtual {v6, v4, v5}, Landroid/os/CountDownTimer;->onTick(J)V

    #@45
    .line 136
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@47
    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    #@4a
    move-result-wide v8

    #@4b
    add-long/2addr v8, v2

    #@4c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4f
    move-result-wide v10

    #@50
    sub-long v0, v8, v10

    #@52
    .line 140
    .local v0, "delay":J
    :goto_1
    cmp-long v6, v0, v12

    #@54
    if-gez v6, :cond_3

    #@56
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #@58
    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    #@5b
    move-result-wide v8

    #@5c
    add-long/2addr v0, v8

    #@5d
    goto :goto_1

    #@5e
    .line 142
    :cond_3
    const/4 v6, 0x1

    #@5f
    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {p0, v6, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    goto :goto_0
.end method
