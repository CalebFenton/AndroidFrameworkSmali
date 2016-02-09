.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@2
    .line 158
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 163
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 162
    :cond_0
    :goto_0
    return-void

    #@7
    .line 167
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@9
    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    #@c
    goto :goto_0

    #@d
    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@f
    iget-object v2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11
    monitor-enter v2

    #@12
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@14
    const/4 v3, 0x1

    #@15
    invoke-virtual {v1, v3}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    goto :goto_0

    #@1a
    .line 170
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1

    #@1d
    .line 175
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@1f
    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@21
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@23
    .line 176
    .local v0, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v0, :cond_0

    #@25
    .line 177
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@27
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@2a
    move-result v1

    #@2b
    .line 178
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@2d
    int-to-long v2, v2

    #@2e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30
    check-cast v5, Ljava/lang/String;

    #@32
    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    #@35
    goto :goto_0

    #@36
    .line 163
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
