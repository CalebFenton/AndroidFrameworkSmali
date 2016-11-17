.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 150
    iget v4, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v4, :pswitch_data_0

    #@6
    .line 149
    :cond_0
    :goto_0
    return-void

    #@7
    .line 152
    :pswitch_0
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@9
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@b
    if-eqz v5, :cond_1

    #@d
    const/4 v3, 0x1

    #@e
    :cond_1
    invoke-virtual {v4, v3}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    #@11
    goto :goto_0

    #@12
    .line 155
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    #@16
    .line 156
    .local v0, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@18
    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    #@1a
    invoke-virtual {v3, v4}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    #@1d
    move-result v2

    #@1e
    .line 157
    .local v2, "result":Z
    iget-object v3, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 159
    :try_start_0
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@24
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 160
    :try_start_1
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@2b
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    #@2e
    move-result-object v3

    #@2f
    iget-object v5, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    #@31
    invoke-interface {v3, v2, v5}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 162
    :catch_0
    move-exception v1

    #@37
    .line 163
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@39
    const-string/jumbo v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    #@3c
    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->-wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 159
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@41
    :try_start_3
    monitor-exit v4

    #@42
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@43
    .line 168
    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v2    # "result":Z
    :pswitch_2
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@45
    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    #@48
    goto :goto_0

    #@49
    .line 171
    :pswitch_3
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@4b
    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    #@4e
    goto :goto_0

    #@4f
    .line 174
    :pswitch_4
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    #@51
    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    #@54
    goto :goto_0

    #@55
    .line 150
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
