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
.field final synthetic blacklist this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 704
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 733
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$ConfigurationData;-><init>(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 735
    return-void
.end method

.method public greylist-max-o onDeviceLocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 740
    return-void
.end method

.method public greylist-max-o onDeviceUnlocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 745
    return-void
.end method

.method public greylist-max-o onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .registers 8
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 769
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 771
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 772
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_handle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 774
    return-void
.end method

.method public greylist-max-o onEscrowTokenRemoved(JZ)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "successful"    # Z

    .line 784
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_removed_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 788
    return-void
.end method

.method public greylist-max-o onTokenStateReceived(JI)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "tokenState"    # I

    .line 777
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 778
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 779
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_state"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method

.method public greylist-max-o onTrustTimeout()V
    .registers 3

    .line 728
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 729
    return-void
.end method

.method public greylist-max-o onUnlockAttempt(Z)V
    .registers 5
    .param p1, "successful"    # Z

    .line 707
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    return-void
.end method

.method public greylist-max-o onUnlockLockout(I)V
    .registers 5
    .param p1, "timeoutMs"    # I

    .line 723
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 724
    return-void
.end method

.method public blacklist onUserMayRequestUnlock()V
    .registers 3

    .line 718
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 719
    return-void
.end method

.method public blacklist onUserRequestedUnlock(Z)V
    .registers 5
    .param p1, "dismissKeyguard"    # Z

    .line 712
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 714
    return-void
.end method

.method public greylist-max-o setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .line 749
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 750
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1, p1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 753
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_45

    if-eqz v1, :cond_2c

    .line 755
    :try_start_14
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_45

    .line 758
    goto :goto_2c

    .line 756
    :catch_24
    move-exception v1

    .line 757
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v3, "calling setManagingTrust()"

    invoke-static {v2, v3}, Landroid/service/trust/TrustAgentService;->-$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    .line 760
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 761
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 762
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V

    .line 764
    :cond_43
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_45

    throw v1
.end method
