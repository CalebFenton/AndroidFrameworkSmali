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
    .line 143
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 147
    iget v8, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v8, :pswitch_data_0

    #@5
    .line 145
    :goto_0
    return-void

    #@6
    .line 149
    :pswitch_0
    iget-object v9, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v8, Landroid/telecom/VideoProfile;

    #@c
    invoke-virtual {v9, v8}, Landroid/telecom/Connection$VideoProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    #@f
    goto :goto_0

    #@10
    .line 152
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@14
    .line 154
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16
    check-cast v8, Ljava/lang/Integer;

    #@18
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v6

    #@1c
    .line 155
    .local v6, "status":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1e
    check-cast v4, Landroid/telecom/VideoProfile;

    #@20
    .line 156
    .local v4, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@22
    check-cast v5, Landroid/telecom/VideoProfile;

    #@24
    .line 158
    .local v5, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v8, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@26
    invoke-virtual {v8, v6, v4, v5}, Landroid/telecom/Connection$VideoProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@29
    .line 161
    iget-object v8, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@2b
    invoke-static {v8}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-get0(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;

    #@2e
    move-result-object v8

    #@2f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v2

    #@33
    .local v2, "callback$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_1

    #@39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    #@3f
    .line 162
    .local v1, "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    if-eqz v1, :cond_0

    #@41
    .line 163
    invoke-interface {v1, v6, v4, v5}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;->onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    goto :goto_1

    #@45
    .line 167
    .end local v1    # "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    .end local v4    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "status":I
    :catchall_0
    move-exception v8

    #@46
    .line 168
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@49
    .line 167
    throw v8

    #@4a
    .line 168
    .restart local v2    # "callback$iterator":Ljava/util/Iterator;
    .restart local v4    # "requestProfile":Landroid/telecom/VideoProfile;
    .restart local v5    # "responseProfile":Landroid/telecom/VideoProfile;
    .restart local v6    # "status":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@4d
    goto :goto_0

    #@4e
    .line 172
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    .end local v4    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "status":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@50
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52
    check-cast v8, Ljava/lang/Integer;

    #@54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v8

    #@58
    invoke-virtual {v9, v8}, Landroid/telecom/Connection$VideoProvider;->handleCallSessionEvent(I)V

    #@5b
    goto :goto_0

    #@5c
    .line 175
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@60
    .line 177
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@62
    check-cast v8, Ljava/lang/Integer;

    #@64
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@67
    move-result v7

    #@68
    .line 178
    .local v7, "width":I
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6a
    check-cast v8, Ljava/lang/Integer;

    #@6c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@6f
    move-result v3

    #@70
    .line 179
    .local v3, "height":I
    iget-object v8, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@72
    invoke-virtual {v8, v7, v3}, Landroid/telecom/Connection$VideoProvider;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@75
    .line 181
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@78
    goto :goto_0

    #@79
    .line 180
    .end local v3    # "height":I
    .end local v7    # "width":I
    :catchall_1
    move-exception v8

    #@7a
    .line 181
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7d
    .line 180
    throw v8

    #@7e
    .line 186
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v9, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@80
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@82
    check-cast v8, Ljava/lang/Long;

    #@84
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@87
    move-result-wide v10

    #@88
    invoke-virtual {v9, v10, v11}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    #@8b
    .line 187
    iget-object v8, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@8d
    invoke-static {v8}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-get1(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/RegistrantList;

    #@90
    move-result-object v8

    #@91
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@93
    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@96
    goto/16 :goto_0

    #@98
    .line 190
    :pswitch_5
    iget-object v9, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@9a
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v8, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@9e
    invoke-virtual {v9, v8}, Landroid/telecom/Connection$VideoProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 193
    :pswitch_6
    iget-object v8, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@a5
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@a7
    invoke-virtual {v8, v9}, Landroid/telecom/Connection$VideoProvider;->changeVideoQuality(I)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 147
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
