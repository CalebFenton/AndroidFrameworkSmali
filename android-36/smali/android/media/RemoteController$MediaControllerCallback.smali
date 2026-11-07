.class Landroid/media/RemoteController$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor blacklist <init>(Landroid/media/RemoteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 451
    iput-object p1, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public whitelist onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 459
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-$$Nest$monNewMediaMetadata(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    .line 460
    return-void
.end method

.method public whitelist onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 454
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-$$Nest$monNewPlaybackState(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    .line 455
    return-void
.end method
