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
.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->sleep(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->timeout()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 560
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    #@8
    .line 559
    return-void
.end method

.method private declared-synchronized sleep(I)V
    .locals 4
    .param p1, "timeout"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 585
    mul-int/lit16 v1, p1, 0x3e8

    #@3
    int-to-long v2, v1

    #@4
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit p0

    #@8
    .line 583
    return-void

    #@9
    .line 586
    :catch_0
    move-exception v0

    #@a
    .line 587
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@c
    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@e
    const-string/jumbo v2, "session timer interrupted!"

    #@11
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup;->-wrap11(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    goto :goto_0

    #@15
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method

.method private timeout()V
    .locals 4

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@4
    monitor-enter v1

    #@5
    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@7
    const-string/jumbo v2, "Session timed out!"

    #@a
    const/4 v3, -0x5

    #@b
    invoke-static {v0, v3, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap1(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 577
    return-void

    #@10
    .line 578
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method


# virtual methods
.method declared-synchronized cancel()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 573
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    #@4
    .line 574
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 572
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method start(I)V
    .locals 3
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 563
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    #@7
    .line 569
    const-string/jumbo v2, "SipSessionTimerThread"

    #@a
    .line 563
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@10
    .line 562
    return-void
.end method
