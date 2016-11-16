.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;
.super Landroid/media/IRemoteDisplayProvider$Stub;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@0
    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-direct {p0}, Landroid/media/IRemoteDisplayProvider$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "delta"    # I

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 355
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 340
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 345
    return-void
.end method

.method public setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 330
    return-void
.end method

.method public setDiscoveryMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 335
    return-void
.end method

.method public setVolume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    #@2
    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 350
    return-void
.end method
