.class Lcom/android/server/net/NetworkStatsService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 811
    const-string/jumbo v1, "android.intent.extra.UID"

    #@4
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 812
    .local v0, "uid":I
    if-ne v0, v2, :cond_0

    #@a
    return-void

    #@b
    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@d
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    monitor-enter v2

    #@12
    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@14
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    .line 817
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@1d
    const/4 v3, 0x1

    #@1e
    new-array v3, v3, [I

    #@20
    const/4 v4, 0x0

    #@21
    aput v0, v3, v4

    #@23
    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsService;->-wrap6(Lcom/android/server/net/NetworkStatsService;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 819
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@28
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    monitor-exit v2

    #@30
    .line 807
    return-void

    #@31
    .line 818
    :catchall_0
    move-exception v1

    #@32
    .line 819
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$3;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@34
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3b
    .line 818
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 814
    :catchall_1
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method
