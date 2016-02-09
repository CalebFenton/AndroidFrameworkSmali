.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 118
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v6, :pswitch_data_0

    #@5
    .line 116
    :goto_0
    return-void

    #@6
    .line 120
    :pswitch_0
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v6, Landroid/telecom/VideoProfile;

    #@c
    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    #@f
    goto :goto_0

    #@10
    .line 123
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@14
    .line 125
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16
    check-cast v6, Ljava/lang/Integer;

    #@18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v4

    #@1c
    .line 126
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1e
    check-cast v2, Landroid/telecom/VideoProfile;

    #@20
    .line 127
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@22
    check-cast v3, Landroid/telecom/VideoProfile;

    #@24
    .line 129
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@26
    invoke-virtual {v6, v4, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 131
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2c
    goto :goto_0

    #@2d
    .line 130
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    #@2e
    .line 131
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@31
    .line 130
    throw v6

    #@32
    .line 135
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@34
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v6, Ljava/lang/Integer;

    #@38
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result v6

    #@3c
    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    #@3f
    goto :goto_0

    #@40
    .line 138
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@44
    .line 140
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@46
    check-cast v6, Ljava/lang/Integer;

    #@48
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v5

    #@4c
    .line 141
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@4e
    check-cast v6, Ljava/lang/Integer;

    #@50
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@53
    move-result v1

    #@54
    .line 142
    .local v1, "height":I
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@56
    invoke-virtual {v6, v5, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@59
    .line 144
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5c
    goto :goto_0

    #@5d
    .line 143
    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_1
    move-exception v6

    #@5e
    .line 144
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@61
    .line 143
    throw v6

    #@62
    .line 148
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@64
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    check-cast v6, Ljava/lang/Long;

    #@68
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@6b
    move-result-wide v8

    #@6c
    invoke-virtual {v7, v8, v9}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCallDataUsage(J)V

    #@6f
    goto :goto_0

    #@70
    .line 151
    :pswitch_5
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@72
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@74
    check-cast v6, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@76
    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@79
    goto :goto_0

    #@7a
    .line 154
    :pswitch_6
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@7c
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@7e
    invoke-virtual {v6, v7}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeVideoQuality(I)V

    #@81
    goto :goto_0

    #@82
    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
