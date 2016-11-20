.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@9
    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 109
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@9
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@10
    move-result v0

    #@11
    .line 87
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@13
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 89
    if-eqz v0, :cond_0

    #@1c
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@1e
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    :cond_0
    :goto_0
    monitor-exit v2

    #@29
    .line 84
    return-void

    #@2a
    .line 90
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2c
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    #@2f
    move-result-object v1

    #@30
    const/4 v3, 0x1

    #@31
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 85
    .end local v0    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@9
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@10
    move-result v0

    #@11
    .line 99
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@13
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 101
    if-nez v0, :cond_0

    #@1c
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@1e
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 102
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2a
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    #@2d
    move-result-object v1

    #@2e
    const/4 v3, 0x2

    #@2f
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_0
    monitor-exit v2

    #@33
    .line 96
    return-void

    #@34
    .line 97
    .end local v0    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method
