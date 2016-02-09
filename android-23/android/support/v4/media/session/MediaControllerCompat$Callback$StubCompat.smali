.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubCompat"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    #@3
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@a
    .line 465
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 495
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 480
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 475
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 485
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 490
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 471
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@3
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@6
    move-result-object v0

    #@7
    const/16 v1, 0x8

    #@9
    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@c
    .line 470
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 501
    const/4 v0, 0x0

    #@2
    .line 502
    .local v0, "pi":Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    if-eqz p1, :cond_0

    #@4
    .line 503
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    #@6
    .end local v0    # "pi":Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    iget v1, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    #@8
    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    #@a
    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    #@c
    .line 504
    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@e
    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@10
    .line 503
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    #@13
    .line 506
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@15
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->-get1(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x4

    #@1a
    invoke-virtual {v1, v2, v0, v6}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@1d
    .line 500
    return-void
.end method
