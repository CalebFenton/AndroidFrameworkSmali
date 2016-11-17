.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method public constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    .line 362
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 361
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 367
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 366
    :cond_0
    :goto_0
    return-void

    #@6
    .line 369
    :pswitch_0
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v1, Landroid/media/IRemoteDisplayCallback;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    #@f
    goto :goto_0

    #@10
    .line 373
    :pswitch_1
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@12
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@14
    invoke-virtual {v1, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setDiscoveryMode(I)V

    #@17
    goto :goto_0

    #@18
    .line 377
    :pswitch_2
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@1a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    #@21
    move-result-object v0

    #@22
    .line 378
    .local v0, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    #@24
    .line 379
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@26
    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    #@29
    goto :goto_0

    #@2a
    .line 384
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_3
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    #@33
    move-result-object v0

    #@34
    .line 385
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    #@36
    .line 386
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@38
    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    #@3b
    goto :goto_0

    #@3c
    .line 391
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_4
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@3e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    check-cast v1, Ljava/lang/String;

    #@42
    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    #@45
    move-result-object v0

    #@46
    .line 392
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    #@48
    .line 393
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@4a
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4c
    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    #@4f
    goto :goto_0

    #@50
    .line 398
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_5
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@52
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    check-cast v1, Ljava/lang/String;

    #@56
    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    #@59
    move-result-object v0

    #@5a
    .line 399
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    #@5c
    .line 400
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@5e
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@60
    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    #@63
    goto :goto_0

    #@64
    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
