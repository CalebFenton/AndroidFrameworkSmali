.class public abstract Landroid/media/session/MediaController$Callback;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    #@0
    .prologue
    .line 580
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 572
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    .line 543
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 534
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 563
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    #@0
    .prologue
    .line 515
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 526
    return-void
.end method
