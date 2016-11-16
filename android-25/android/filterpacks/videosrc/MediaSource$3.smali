.class Landroid/filterpacks/videosrc/MediaSource$3;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterpacks/videosrc/MediaSource;

    #@0
    .prologue
    .line 548
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "MediaSource"

    #@b
    const-string/jumbo v1, "MediaPlayer has completed playback"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 551
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@13
    monitor-enter v1

    #@14
    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$3;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@16
    const/4 v2, 0x1

    #@17
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set0(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 549
    return-void

    #@1c
    .line 551
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
