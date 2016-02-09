.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 2188
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "data"    # Landroid/media/SubtitleData;

    #@0
    .prologue
    .line 2191
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    #@3
    move-result v0

    #@4
    .line 2192
    .local v0, "index":I
    iget-object v4, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    #@6
    invoke-static {v4}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@9
    move-result-object v5

    #@a
    monitor-enter v5

    #@b
    .line 2193
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    #@d
    invoke-static {v4}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/util/Pair;

    #@21
    .line 2194
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@23
    if-eqz v4, :cond_0

    #@25
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@27
    check-cast v4, Ljava/lang/Integer;

    #@29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v4

    #@2d
    if-ne v4, v0, :cond_0

    #@2f
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 2196
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    check-cast v3, Landroid/media/SubtitleTrack;

    #@37
    .line 2197
    .local v3, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v3, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 2192
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v4

    #@3c
    monitor-exit v5

    #@3d
    throw v4

    #@3e
    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@3f
    .line 2190
    return-void
.end method
