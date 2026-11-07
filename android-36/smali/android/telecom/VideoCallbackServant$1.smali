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
.field final synthetic blacklist this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/VideoCallbackServant;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist internalHandleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a5

    .line 105
    :pswitch_7
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    goto/16 :goto_a5

    .line 101
    :pswitch_14
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 102
    goto/16 :goto_a5

    .line 92
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_27
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3d

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 97
    nop

    .line 98
    goto :goto_a5

    .line 96
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 97
    throw v1

    .line 83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 85
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_46
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_58

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 88
    nop

    .line 89
    goto :goto_a5

    .line 87
    :catchall_58
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 88
    throw v1

    .line 74
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 76
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_61
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_71

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 79
    nop

    .line 80
    goto :goto_a5

    .line 78
    :catchall_71
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 79
    throw v1

    .line 62
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 64
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7a
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/VideoProfile;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_8d
    .catchall {:try_start_7a .. :try_end_8d} :catchall_92

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 70
    nop

    .line 71
    goto :goto_a5

    .line 69
    :catchall_92
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 70
    throw v1

    .line 58
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_97
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmDelegate(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 59
    nop

    .line 109
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_76
        :pswitch_5d
        :pswitch_42
        :pswitch_23
        :pswitch_14
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 51
    goto :goto_5

    .line 50
    :catch_4
    move-exception v0

    .line 52
    :goto_5
    return-void
.end method
