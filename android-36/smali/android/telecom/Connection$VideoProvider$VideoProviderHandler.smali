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
.field final synthetic blacklist this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1568
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    .line 1569
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1570
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1572
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    .line 1573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1574
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1578
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_104

    goto/16 :goto_103

    .line 1596
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1597
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 1598
    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 1599
    .local v2, "callback":Lcom/android/internal/telecom/IVideoCallback;
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1600
    const-string/jumbo v3, "removeVideoProvider - skipped; not present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1601
    goto/16 :goto_103

    .line 1603
    :cond_2a
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    goto/16 :goto_103

    .line 1650
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_35
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    .line 1651
    goto/16 :goto_103

    .line 1647
    :pswitch_40
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    .line 1648
    goto/16 :goto_103

    .line 1644
    :pswitch_47
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    .line 1645
    goto/16 :goto_103

    .line 1641
    :pswitch_4e
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1642
    goto/16 :goto_103

    .line 1631
    :pswitch_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1633
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5e
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v2, v3}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_71

    .line 1636
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1637
    nop

    .line 1638
    goto/16 :goto_103

    .line 1636
    :catchall_71
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1637
    throw v0

    .line 1628
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_76
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    .line 1629
    goto/16 :goto_103

    .line 1625
    :pswitch_85
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    .line 1626
    goto/16 :goto_103

    .line 1622
    :pswitch_8e
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    .line 1623
    goto :goto_103

    .line 1619
    :pswitch_98
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    .line 1620
    goto :goto_103

    .line 1608
    :pswitch_a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1610
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a7
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    .line 1611
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual/range {v3 .. v8}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_c5
    .catchall {:try_start_a7 .. :try_end_c5} :catchall_ca

    .line 1614
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1615
    nop

    .line 1617
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_103

    .line 1614
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :catchall_ca
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1615
    throw v0

    .line 1580
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_cf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1581
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 1582
    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 1583
    .restart local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    if-nez v2, :cond_e5

    .line 1584
    const-string v3, "addVideoProvider - skipped; callback is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1585
    goto :goto_103

    .line 1588
    :cond_e5
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1589
    const-string v3, "addVideoProvider - skipped; already present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    goto :goto_103

    .line 1592
    :cond_f9
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    nop

    .line 1655
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :goto_103
    return-void

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_a2
        :pswitch_98
        :pswitch_8e
        :pswitch_85
        :pswitch_76
        :pswitch_59
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_35
        :pswitch_8
    .end packed-switch
.end method
