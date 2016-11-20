.class Lcom/android/ims/internal/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 54
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 53
    :goto_0
    return-void

    #@6
    .line 56
    :pswitch_0
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v3, Lcom/android/ims/internal/IImsVideoCallCallback;

    #@c
    invoke-static {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->-set0(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    #@f
    goto :goto_0

    #@10
    .line 59
    :pswitch_1
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@12
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v3, Ljava/lang/String;

    #@16
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    #@19
    goto :goto_0

    #@1a
    .line 62
    :pswitch_2
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@1c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v3, Landroid/view/Surface;

    #@20
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    #@23
    goto :goto_0

    #@24
    .line 65
    :pswitch_3
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@26
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v3, Landroid/view/Surface;

    #@2a
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    #@2d
    goto :goto_0

    #@2e
    .line 68
    :pswitch_4
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@30
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@32
    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    #@35
    goto :goto_0

    #@36
    .line 71
    :pswitch_5
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@38
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v3, Ljava/lang/Float;

    #@3c
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result v3

    #@40
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetZoom(F)V

    #@43
    goto :goto_0

    #@44
    .line 74
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@46
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@48
    .line 76
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4a
    check-cast v1, Landroid/telecom/VideoProfile;

    #@4c
    .line 77
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@4e
    check-cast v2, Landroid/telecom/VideoProfile;

    #@50
    .line 79
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@52
    invoke-virtual {v3, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .line 81
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@58
    goto :goto_0

    #@59
    .line 80
    .end local v1    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    :catchall_0
    move-exception v3

    #@5a
    .line 81
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5d
    .line 80
    throw v3

    #@5e
    .line 86
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@60
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v3, Landroid/telecom/VideoProfile;

    #@64
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    #@67
    goto :goto_0

    #@68
    .line 89
    :pswitch_8
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@6a
    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    #@6d
    goto :goto_0

    #@6e
    .line 92
    :pswitch_9
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@70
    invoke-virtual {v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCallDataUsage()V

    #@73
    goto :goto_0

    #@74
    .line 95
    :pswitch_a
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@76
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v3, Landroid/net/Uri;

    #@7a
    invoke-virtual {v4, v3}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    #@7d
    goto :goto_0

    #@7e
    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
