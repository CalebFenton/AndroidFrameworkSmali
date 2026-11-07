.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativePositionEventHandlerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 12
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4347
    if-eqz p4, :cond_b

    .line 4348
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v3, v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_10

    .line 4351
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_b
    invoke-static {p1}, Landroid/media/AudioTrack;->-$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v0

    move-object v3, v0

    .line 4355
    .local v3, "looper":Landroid/os/Looper;
    :goto_10
    if-eqz v3, :cond_1e

    .line 4357
    new-instance v1, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "track":Landroid/media/AudioTrack;
    .end local p3    # "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .local v5, "track":Landroid/media/AudioTrack;
    .local v6, "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object v1, v2, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_24

    .line 4381
    .end local v5    # "track":Landroid/media/AudioTrack;
    .end local v6    # "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .restart local p2    # "track":Landroid/media/AudioTrack;
    .restart local p3    # "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    :cond_1e
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "track":Landroid/media/AudioTrack;
    .end local p3    # "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .restart local v5    # "track":Landroid/media/AudioTrack;
    .restart local v6    # "listener":Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    const/4 p1, 0x0

    iput-object p1, v2, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4383
    :goto_24
    return-void
.end method


# virtual methods
.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 4386
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
