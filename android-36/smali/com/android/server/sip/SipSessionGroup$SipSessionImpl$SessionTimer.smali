.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionTimer"
.end annotation


# instance fields
.field private blacklist mRunning:Z

.field final synthetic blacklist this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msleep(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->sleep(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtimeout(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->timeout()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 559
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return-void
.end method

.method private declared-synchronized blacklist sleep(I)V
    .registers 5
    .param p1, "timeout"    # I

    monitor-enter p0

    .line 585
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_a
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 588
    goto :goto_14

    .line 584
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    .end local p1    # "timeout":I
    :catchall_8
    move-exception p1

    goto :goto_16

    .line 586
    .restart local p1    # "timeout":I
    :catch_a
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_b
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    const-string v2, "session timer interrupted!"

    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_8

    .line 589
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_14
    monitor-exit p0

    return-void

    .line 584
    .end local p1    # "timeout":I
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_8

    throw p1
.end method

.method private blacklist timeout()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v0

    .line 579
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const-string v2, "Session timed out!"

    const/4 v3, -0x5

    invoke-static {v1, v3, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method declared-synchronized blacklist cancel()V
    .registers 2

    monitor-enter p0

    .line 573
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 575
    monitor-exit p0

    return-void

    .line 572
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist start(I)V
    .registers 5
    .param p1, "timeout"    # I

    .line 563
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    const-string v2, "SipSessionTimerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 570
    return-void
.end method
