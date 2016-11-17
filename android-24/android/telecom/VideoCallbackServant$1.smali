.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 55
    :goto_0
    return-void

    #@6
    .line 58
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@8
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@b
    move-result-object v2

    #@c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v1, Landroid/telecom/VideoProfile;

    #@10
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    #@13
    goto :goto_0

    #@14
    .line 62
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@18
    .line 64
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@1a
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@1d
    move-result-object v3

    #@1e
    .line 65
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@20
    .line 66
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@22
    check-cast v1, Landroid/telecom/VideoProfile;

    #@24
    .line 67
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@26
    check-cast v2, Landroid/telecom/VideoProfile;

    #@28
    .line 64
    invoke-interface {v3, v4, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2e
    goto :goto_0

    #@2f
    .line 68
    :catchall_0
    move-exception v1

    #@30
    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@33
    .line 68
    throw v1

    #@34
    .line 74
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@38
    .line 76
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@3a
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@3d
    move-result-object v1

    #@3e
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@40
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@46
    goto :goto_0

    #@47
    .line 77
    :catchall_1
    move-exception v1

    #@48
    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@4b
    .line 77
    throw v1

    #@4c
    .line 83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@50
    .line 85
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@52
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@55
    move-result-object v1

    #@56
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@58
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@5a
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@5d
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@60
    goto :goto_0

    #@61
    .line 86
    :catchall_2
    move-exception v1

    #@62
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@65
    .line 86
    throw v1

    #@66
    .line 92
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@6a
    .line 94
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@6c
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@6f
    move-result-object v2

    #@70
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@72
    check-cast v1, Ljava/lang/Long;

    #@74
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@77
    move-result-wide v4

    #@78
    invoke-interface {v2, v4, v5}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@7b
    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7e
    goto :goto_0

    #@7f
    .line 95
    :catchall_3
    move-exception v1

    #@80
    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@83
    .line 95
    throw v1

    #@84
    .line 101
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@86
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@89
    move-result-object v2

    #@8a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8c
    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@8e
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@91
    goto/16 :goto_0

    #@93
    .line 105
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    #@95
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    #@98
    move-result-object v1

    #@99
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@9b
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 47
    :goto_0
    return-void

    #@4
    .line 50
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
