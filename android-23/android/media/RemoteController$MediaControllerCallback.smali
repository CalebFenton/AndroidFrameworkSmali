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
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    #@0
    .prologue
    .line 697
    iput-object p1, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    #@2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    #@2
    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap2(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    #@5
    .line 704
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    #@2
    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap6(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    #@5
    .line 699
    return-void
.end method
