.class Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmPreparedHandlerDelegate"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mMediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4887
    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4888
    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    .line 4891
    if-eqz p4, :cond_c

    .line 4892
    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_20

    .line 4893
    :cond_c
    invoke-static {p1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4895
    invoke-static {p1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_20

    .line 4897
    :cond_19
    const-string p1, "MediaPlayer"

    const-string v0, "OnDrmPreparedHandlerDelegate: Unexpected null mEventHandler"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    :goto_20
    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient(I)V
    .registers 4
    .param p1, "status"    # I

    .line 4902
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 4903
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 4910
    :cond_f
    const-string v0, "MediaPlayer"

    const-string v1, "OnDrmPreparedHandlerDelegate:notifyClient: Unexpected null mHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    :goto_16
    return-void
.end method
