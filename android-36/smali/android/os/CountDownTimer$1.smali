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
.field final synthetic blacklist this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor blacklist <init>(Landroid/os/CountDownTimer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/CountDownTimer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v1}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCancelled(Landroid/os/CountDownTimer;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 136
    monitor-exit v0

    return-void

    .line 139
    :cond_d
    iget-object v1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v1}, Landroid/os/CountDownTimer;->-$$Nest$fgetmStopTimeInFuture(Landroid/os/CountDownTimer;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 141
    .local v1, "millisLeft":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_24

    .line 142
    iget-object v3, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->onFinish()V

    goto :goto_60

    .line 144
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 145
    .local v5, "lastTickStart":J
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7, v1, v2}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 151
    .local v7, "lastTickDuration":J
    iget-object v9, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v9}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-gez v9, :cond_45

    .line 153
    sub-long v9, v1, v7

    .line 157
    .local v9, "delay":J
    cmp-long v3, v9, v3

    if-gez v3, :cond_58

    const-wide/16 v9, 0x0

    goto :goto_58

    .line 159
    .end local v9    # "delay":J
    :cond_45
    iget-object v9, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v9}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 163
    .restart local v9    # "delay":J
    :goto_4c
    cmp-long v11, v9, v3

    if-gez v11, :cond_58

    iget-object v11, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v11}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_4c

    .line 166
    :cond_58
    :goto_58
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v9, v10}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    .end local v1    # "millisLeft":J
    .end local v5    # "lastTickStart":J
    .end local v7    # "lastTickDuration":J
    .end local v9    # "delay":J
    :goto_60
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v1
.end method
