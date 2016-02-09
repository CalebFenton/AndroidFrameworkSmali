.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@0
    .prologue
    .line 438
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    #@3
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "metadataObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    .line 458
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    #@5
    move-result-object v1

    #@6
    .line 457
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    #@9
    .line 456
    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    .line 452
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@5
    move-result-object v1

    #@6
    .line 451
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@9
    .line 450
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    #@5
    .line 440
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 445
    return-void
.end method
