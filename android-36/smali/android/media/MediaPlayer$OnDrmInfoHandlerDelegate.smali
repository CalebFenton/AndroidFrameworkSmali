.class Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmInfoHandlerDelegate"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mMediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .registers 5
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnDrmInfoListener;
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

    .line 4848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4849
    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4850
    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    .line 4853
    if-eqz p4, :cond_b

    .line 4854
    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4863
    :cond_b
    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V
    .registers 4
    .param p1, "drmInfo"    # Landroid/media/MediaPlayer$DrmInfo;

    .line 4866
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 4867
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;Landroid/media/MediaPlayer$DrmInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 4875
    :cond_f
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1}, Landroid/media/MediaPlayer$OnDrmInfoListener;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V

    .line 4877
    :goto_16
    return-void
.end method
