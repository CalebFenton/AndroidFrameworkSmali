.class Lcom/android/server/vr/VrManagerService$1;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

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
    .line 134
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Unknown message type: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    iget v5, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 136
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@23
    const/4 v4, 0x1

    #@24
    if-ne v3, v4, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    .line 137
    .local v2, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    #@29
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@30
    move-result v1

    #@31
    .line 138
    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_1

    #@33
    .line 139
    add-int/lit8 v1, v1, -0x1

    #@35
    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    #@37
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Landroid/service/vr/IVrStateCallbacks;

    #@41
    invoke-interface {v3, v2}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 142
    :catch_0
    move-exception v0

    #@46
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@47
    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :cond_0
    const/4 v2, 0x0

    #@48
    .restart local v2    # "state":Z
    goto :goto_0

    #@49
    .line 146
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    #@4b
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@52
    .line 133
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :goto_2
    return-void

    #@53
    .line 149
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    #@55
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    monitor-enter v4

    #@5a
    .line 150
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    #@5c
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    monitor-exit v4

    #@60
    goto :goto_2

    #@61
    .line 149
    :catchall_0
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3

    #@64
    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
