.class Landroid/telephony/ims/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/ims/ImsVideoCallProvider;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    goto/16 :goto_9c

    .line 111
    :pswitch_7
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    .line 112
    goto/16 :goto_9c

    .line 108
    :pswitch_12
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCallDataUsage()V

    .line 109
    goto/16 :goto_9c

    .line 105
    :pswitch_19
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    .line 106
    goto/16 :goto_9c

    .line 102
    :pswitch_20
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 103
    goto/16 :goto_9c

    .line 90
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 92
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 93
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 95
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    iget-object v3, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v3, v1, v2}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_41

    .line 97
    .end local v1    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 98
    nop

    .line 99
    goto :goto_9c

    .line 97
    :catchall_41
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 98
    throw v1

    .line 87
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_46
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetZoom(F)V

    .line 88
    goto :goto_9c

    .line 84
    :pswitch_54
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    .line 85
    goto :goto_9c

    .line 81
    :pswitch_5c
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    .line 82
    goto :goto_9c

    .line 78
    :pswitch_66
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    .line 79
    goto :goto_9c

    .line 68
    :pswitch_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 70
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_74
    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_8d

    .line 73
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 74
    nop

    .line 75
    goto :goto_9c

    .line 73
    :catchall_8d
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 74
    throw v1

    .line 64
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_92
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fputmCallback(Landroid/telephony/ims/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 65
    nop

    .line 116
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_70
        :pswitch_66
        :pswitch_5c
        :pswitch_54
        :pswitch_46
        :pswitch_2b
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method
