.class Landroid/filterpacks/videosrc/MediaSource$4;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


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
    .line 558
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "MediaSource"

    #@b
    const-string/jumbo v1, "New frame from media player"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 561
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@13
    monitor-enter v1

    #@14
    .line 562
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@16
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    const-string/jumbo v0, "MediaSource"

    #@1f
    const-string/jumbo v2, "New frame: notify"

    #@22
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 563
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@27
    const/4 v2, 0x1

    #@28
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set3(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    #@2b
    .line 564
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2d
    invoke-virtual {v0}, Landroid/filterpacks/videosrc/MediaSource;->notify()V

    #@30
    .line 565
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@32
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_2

    #@38
    const-string/jumbo v0, "MediaSource"

    #@3b
    const-string/jumbo v2, "New frame: notify done"

    #@3e
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_2
    monitor-exit v1

    #@42
    .line 559
    return-void

    #@43
    .line 561
    :catchall_0
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method
