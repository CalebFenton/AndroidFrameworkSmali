.class Lcom/android/server/ResettableTimeout$T;
.super Ljava/lang/Thread;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ResettableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ResettableTimeout;


# direct methods
.method private constructor <init>(Lcom/android/server/ResettableTimeout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ResettableTimeout;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ResettableTimeout;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@2
    invoke-static {v3}, Lcom/android/server/ResettableTimeout;->-get0(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    #@9
    .line 105
    :goto_0
    monitor-enter p0

    #@a
    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@c
    invoke-static {v3}, Lcom/android/server/ResettableTimeout;->-get1(Lcom/android/server/ResettableTimeout;)J

    #@f
    move-result-wide v4

    #@10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v6

    #@14
    sub-long v0, v4, v6

    #@16
    .line 107
    .local v0, "diff":J
    const-wide/16 v4, 0x0

    #@18
    cmp-long v3, v0, v4

    #@1a
    if-gtz v3, :cond_0

    #@1c
    .line 108
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-static {v3, v4}, Lcom/android/server/ResettableTimeout;->-set0(Lcom/android/server/ResettableTimeout;Z)Z

    #@22
    .line 109
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@24
    invoke-virtual {v3}, Lcom/android/server/ResettableTimeout;->off()V

    #@27
    .line 110
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-static {v3, v4}, Lcom/android/server/ResettableTimeout;->-set1(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 100
    return-void

    #@2f
    :cond_0
    monitor-exit p0

    #@30
    .line 115
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout$T;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    goto :goto_0

    #@34
    .line 117
    :catch_0
    move-exception v2

    #@35
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@36
    .line 105
    .end local v0    # "diff":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    #@37
    monitor-exit p0

    #@38
    throw v3
.end method
