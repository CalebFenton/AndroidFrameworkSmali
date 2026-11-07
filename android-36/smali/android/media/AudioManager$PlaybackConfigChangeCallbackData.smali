.class final Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackConfigChangeCallbackData"
.end annotation


# instance fields
.field final greylist-max-o mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

.field final greylist-max-o mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioManager$AudioPlaybackCallback;",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 5737
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5738
    iput-object p1, p0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5739
    iput-object p2, p0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    .line 5740
    return-void
.end method
