.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 845
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    .line 846
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 845
    return-void
.end method

.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 849
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    .line 850
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 849
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 855
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 854
    :goto_0
    return-void

    #@7
    .line 857
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Landroid/os/IBinder;

    #@b
    .line 859
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v3, Landroid/os/IBinder;

    #@f
    .line 858
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    #@12
    move-result-object v2

    #@13
    .line 860
    .local v2, "callback":Lcom/android/internal/telecom/IVideoCallback;
    if-nez v2, :cond_0

    #@15
    .line 861
    const-string/jumbo v3, "addVideoProvider - skipped; callback is null."

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d
    goto :goto_0

    #@1e
    .line 865
    :cond_0
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@20
    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 866
    const-string/jumbo v3, "addVideoProvider - skipped; already present."

    #@2d
    new-array v4, v4, [Ljava/lang/Object;

    #@2f
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@32
    goto :goto_0

    #@33
    .line 869
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@35
    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    goto :goto_0

    #@3d
    .line 873
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v1, Landroid/os/IBinder;

    #@41
    .line 875
    .restart local v1    # "binder":Landroid/os/IBinder;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v3, Landroid/os/IBinder;

    #@45
    .line 874
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    #@48
    move-result-object v2

    #@49
    .line 876
    .restart local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@4b
    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@52
    move-result v3

    #@53
    if-nez v3, :cond_2

    #@55
    .line 877
    const-string/jumbo v3, "removeVideoProvider - skipped; not present."

    #@58
    new-array v4, v4, [Ljava/lang/Object;

    #@5a
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5d
    goto :goto_0

    #@5e
    .line 880
    :cond_2
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@60
    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    goto :goto_0

    #@68
    .line 884
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_2
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@6a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6c
    check-cast v3, Ljava/lang/String;

    #@6e
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    #@71
    goto :goto_0

    #@72
    .line 887
    :pswitch_3
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@74
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@76
    check-cast v3, Landroid/view/Surface;

    #@78
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    #@7b
    goto :goto_0

    #@7c
    .line 890
    :pswitch_4
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@7e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@80
    check-cast v3, Landroid/view/Surface;

    #@82
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    #@85
    goto :goto_0

    #@86
    .line 893
    :pswitch_5
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@88
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@8a
    invoke-virtual {v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 896
    :pswitch_6
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@91
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@93
    check-cast v3, Ljava/lang/Float;

    #@95
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@98
    move-result v3

    #@99
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    #@9c
    goto/16 :goto_0

    #@9e
    .line 899
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a0
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a2
    .line 901
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@a4
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a6
    check-cast v3, Landroid/telecom/VideoProfile;

    #@a8
    .line 902
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@aa
    check-cast v4, Landroid/telecom/VideoProfile;

    #@ac
    .line 901
    invoke-virtual {v5, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@af
    .line 904
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 903
    :catchall_0
    move-exception v3

    #@b5
    .line 904
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@b8
    .line 903
    throw v3

    #@b9
    .line 909
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@bb
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v3, Landroid/telecom/VideoProfile;

    #@bf
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 912
    :pswitch_9
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@c6
    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 915
    :pswitch_a
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@cd
    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    #@d0
    goto/16 :goto_0

    #@d2
    .line 918
    :pswitch_b
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@d4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d6
    check-cast v3, Landroid/net/Uri;

    #@d8
    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    #@db
    goto/16 :goto_0

    #@dd
    .line 855
    nop

    #@de
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method
