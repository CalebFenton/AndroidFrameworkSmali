.class Landroid/filterpacks/videosrc/MediaSource$2;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 537
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "MediaSource"

    #@b
    const-string/jumbo v1, "MediaPlayer is prepared"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 540
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@13
    monitor-enter v1

    #@14
    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@16
    const/4 v2, 0x1

    #@17
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set4(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    #@1a
    .line 542
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@1c
    invoke-virtual {v0}, Landroid/filterpacks/videosrc/MediaSource;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 538
    return-void

    #@21
    .line 540
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
