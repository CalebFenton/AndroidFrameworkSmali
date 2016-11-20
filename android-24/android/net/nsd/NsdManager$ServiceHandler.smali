.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/nsd/NsdManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@2
    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 297
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 303
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 316
    :pswitch_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@7
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@9
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 317
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@f
    .line 318
    const-string/jumbo v3, "NsdManager"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Stale key "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 319
    return-void

    #@2c
    .line 305
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@2e
    invoke-static {v3}, Landroid/net/nsd/NsdManager;->-get0(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    #@31
    move-result-object v3

    #@32
    const v4, 0x11001

    #@35
    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@38
    .line 306
    return-void

    #@39
    .line 308
    :pswitch_2
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@3b
    invoke-static {v3}, Landroid/net/nsd/NsdManager;->-get1(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@42
    .line 309
    return-void

    #@43
    .line 311
    :pswitch_3
    const-string/jumbo v3, "NsdManager"

    #@46
    const-string/jumbo v4, "Channel lost"

    #@49
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 312
    return-void

    #@4d
    .line 321
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@4f
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@51
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;

    #@54
    move-result-object v1

    #@55
    .line 322
    .local v1, "ns":Landroid/net/nsd/NsdServiceInfo;
    iget v3, p1, Landroid/os/Message;->what:I

    #@57
    packed-switch v3, :pswitch_data_1

    #@5a
    .line 372
    :pswitch_4
    const-string/jumbo v3, "NsdManager"

    #@5d
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "Ignored "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 302
    .end local v0    # "listener":Ljava/lang/Object;
    :goto_0
    return-void

    #@75
    .line 324
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_5
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@77
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@79
    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    #@7b
    invoke-static {v4, v3}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 325
    .local v2, "s":Ljava/lang/String;
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@81
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    #@84
    goto :goto_0

    #@85
    .line 328
    .end local v2    # "s":Ljava/lang/String;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_6
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@87
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@89
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@8c
    .line 329
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@8e
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@90
    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    .line 330
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@96
    .line 329
    invoke-interface {v0, v3, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    #@99
    goto :goto_0

    #@9a
    .line 333
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@9c
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e
    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    #@a0
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    #@a3
    goto :goto_0

    #@a4
    .line 336
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@a6
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    #@aa
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    #@ad
    goto :goto_0

    #@ae
    .line 339
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@b0
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@b2
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@b5
    .line 340
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@b7
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@b9
    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    .line 341
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@bf
    .line 340
    invoke-interface {v0, v3, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    #@c2
    goto :goto_0

    #@c3
    .line 344
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@c5
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@c7
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@ca
    .line 345
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@cc
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@ce
    invoke-static {v3, v1}, Landroid/net/nsd/NsdManager;->-wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    #@d1
    move-result-object v3

    #@d2
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    #@d5
    goto :goto_0

    #@d6
    .line 348
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@d8
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@da
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@dd
    .line 349
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    #@df
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@e1
    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    #@e4
    goto :goto_0

    #@e5
    .line 352
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    #@e7
    .line 353
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e9
    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    #@eb
    .line 352
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    #@ee
    goto :goto_0

    #@ef
    .line 356
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@f1
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@f3
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@f6
    .line 357
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    #@f8
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@fa
    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 360
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@101
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@103
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@106
    .line 361
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    #@108
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 364
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_f
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@10f
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@111
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@114
    .line 365
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    #@116
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@118
    invoke-interface {v0, v1, v3}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 368
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_10
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #@11f
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@121
    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->-wrap3(Landroid/net/nsd/NsdManager;I)V

    #@124
    .line 369
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    #@126
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@128
    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    #@12a
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    #@12d
    goto/16 :goto_0

    #@12f
    .line 303
    nop

    #@130
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@13e
    .line 322
    :pswitch_data_1
    .packed-switch 0x60002
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
