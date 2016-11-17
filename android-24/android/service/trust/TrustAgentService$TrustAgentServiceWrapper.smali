.class final Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;
.super Landroid/service/trust/ITrustAgentService$Stub;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method private constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;

    #@0
    .prologue
    .line 363
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-direct {p0}, Landroid/service/trust/ITrustAgentService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    #@8
    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$ConfigurationData;-><init>(Ljava/util/List;Landroid/os/IBinder;)V

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 375
    return-void
.end method

.method public onDeviceLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 381
    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 386
    return-void
.end method

.method public onTrustTimeout()V
    .locals 2

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 370
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .locals 4
    .param p1, "successful"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 366
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@4
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    #@7
    move-result-object v3

    #@8
    if-eqz p1, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 365
    return-void

    #@13
    :cond_0
    move v0, v2

    #@14
    .line 366
    goto :goto_0
.end method

.method public setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    #@0
    .prologue
    .line 392
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@9
    invoke-static {v1, p1}, Landroid/service/trust/TrustAgentService;->-set0(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;

    #@c
    .line 396
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@e
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-get3(Landroid/service/trust/TrustAgentService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 398
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@16
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    #@19
    move-result-object v1

    #@1a
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@1c
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-get3(Landroid/service/trust/TrustAgentService;)Z

    #@1f
    move-result v3

    #@20
    invoke-interface {v1, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 403
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@25
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-get4(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    #@28
    move-result-object v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 404
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@2d
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-get4(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    #@30
    move-result-object v1

    #@31
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@34
    .line 405
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@36
    const/4 v3, 0x0

    #@37
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->-set1(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    :cond_1
    monitor-exit v2

    #@3b
    .line 391
    return-void

    #@3c
    .line 399
    :catch_0
    move-exception v0

    #@3d
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    #@3f
    const-string/jumbo v3, "calling setManagingTrust()"

    #@42
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->-wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method
