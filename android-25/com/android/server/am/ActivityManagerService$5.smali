.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2698
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 2704
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1
    .line 2705
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v6

    #@5
    .line 2706
    .local v6, "now":J
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    #@9
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@c
    move-result-wide v8

    #@d
    const-wide/32 v10, 0xfffffff

    #@10
    add-long/2addr v8, v10

    #@11
    sub-long v2, v8, v6

    #@13
    .line 2707
    .local v2, "nextCpuDelay":J
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    #@17
    const-wide/32 v10, 0x1b7740

    #@1a
    add-long/2addr v8, v10

    #@1b
    sub-long v4, v8, v6

    #@1d
    .line 2710
    .local v4, "nextWriteDelay":J
    cmp-long v8, v4, v2

    #@1f
    if-gez v8, :cond_0

    #@21
    .line 2711
    move-wide v2, v4

    #@22
    .line 2713
    :cond_0
    const-wide/16 v8, 0x0

    #@24
    cmp-long v8, v2, v8

    #@26
    if-lez v8, :cond_1

    #@28
    .line 2714
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2a
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c
    const/4 v9, 0x1

    #@2d
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@30
    .line 2715
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService$5;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@34
    .line 2720
    .end local v2    # "nextCpuDelay":J
    .end local v4    # "nextWriteDelay":J
    .end local v6    # "now":J
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 2721
    :catch_0
    move-exception v0

    #@3b
    .line 2722
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    const-string/jumbo v9, "Unexpected exception collecting process stats"

    #@42
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_0

    #@46
    .line 2704
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@47
    :try_start_4
    monitor-exit p0

    #@48
    throw v8
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@49
    .line 2718
    :catch_1
    move-exception v1

    #@4a
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
