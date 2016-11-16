.class Landroid/hardware/location/ContextHubManager$1;
.super Landroid/hardware/location/IContextHubCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubManager;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 7
    .param p1, "hubId"    # I
    .param p2, "nanoAppId"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@2
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 367
    monitor-enter p0

    #@9
    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@b
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    #@e
    move-result-object v2

    #@f
    .line 369
    .local v2, "callback":Landroid/hardware/location/ContextHubManager$Callback;
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@11
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 370
    new-instance v6, Landroid/os/Handler;

    #@19
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@1b
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get3(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@22
    .line 371
    .local v6, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v0, Landroid/hardware/location/ContextHubManager$1$1;

    #@24
    move-object v1, p0

    #@25
    move v3, p1

    #@26
    move v4, p2

    #@27
    move-object v5, p3

    #@28
    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager$1$1;-><init>(Landroid/hardware/location/ContextHubManager$1;Landroid/hardware/location/ContextHubManager$Callback;IILandroid/hardware/location/ContextHubMessage;)V

    #@2b
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .end local v2    # "callback":Landroid/hardware/location/ContextHubManager$Callback;
    .end local v6    # "handler":Landroid/os/Handler;
    :goto_1
    monitor-exit p0

    #@2f
    .line 365
    :goto_2
    return-void

    #@30
    .line 370
    .restart local v2    # "callback":Landroid/hardware/location/ContextHubManager$Callback;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@32
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result-object v6

    #@36
    .restart local v6    # "handler":Landroid/os/Handler;
    goto :goto_0

    #@37
    .line 367
    .end local v2    # "callback":Landroid/hardware/location/ContextHubManager$Callback;
    .end local v6    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    #@38
    monitor-exit p0

    #@39
    throw v0

    #@3a
    .line 378
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@3c
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    #@3f
    move-result-object v0

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 381
    monitor-enter p0

    #@43
    .line 382
    :try_start_2
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    #@45
    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    #@48
    move-result-object v0

    #@49
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    goto :goto_1

    #@4d
    .line 381
    :catchall_1
    move-exception v0

    #@4e
    monitor-exit p0

    #@4f
    throw v0

    #@50
    .line 385
    :cond_2
    const-string/jumbo v0, "ContextHubManager"

    #@53
    const-string/jumbo v1, "Context hub manager client callback is NULL"

    #@56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_2
.end method
