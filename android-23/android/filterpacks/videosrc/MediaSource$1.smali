.class Landroid/filterpacks/videosrc/MediaSource$1;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 512
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "MediaSource"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "MediaPlayer sent dimensions: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " x "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 515
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@2f
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get0(Landroid/filterpacks/videosrc/MediaSource;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    .line 516
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@37
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get2(Landroid/filterpacks/videosrc/MediaSource;)I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@3f
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get2(Landroid/filterpacks/videosrc/MediaSource;)I

    #@42
    move-result v0

    #@43
    const/16 v1, 0xb4

    #@45
    if-ne v0, v1, :cond_3

    #@47
    .line 517
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@49
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0, p2, p3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@50
    .line 521
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@52
    invoke-static {v0, p2}, Landroid/filterpacks/videosrc/MediaSource;->-set5(Landroid/filterpacks/videosrc/MediaSource;I)I

    #@55
    .line 522
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@57
    invoke-static {v0, p3}, Landroid/filterpacks/videosrc/MediaSource;->-set2(Landroid/filterpacks/videosrc/MediaSource;I)I

    #@5a
    .line 529
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@5c
    monitor-enter v1

    #@5d
    .line 530
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@5f
    const/4 v2, 0x1

    #@60
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set1(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    #@63
    .line 531
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@65
    invoke-virtual {v0}, Landroid/filterpacks/videosrc/MediaSource;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v1

    #@69
    .line 513
    return-void

    #@6a
    .line 519
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@6c
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0, p3, p2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@73
    goto :goto_0

    #@74
    .line 524
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@76
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    #@7d
    move-result v0

    #@7e
    if-ne v0, p2, :cond_5

    #@80
    .line 525
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    #@82
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    #@89
    move-result v0

    #@8a
    if-eq v0, p3, :cond_2

    #@8c
    .line 526
    :cond_5
    const-string/jumbo v0, "MediaSource"

    #@8f
    const-string/jumbo v1, "Multiple video size change events received!"

    #@92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    goto :goto_1

    #@96
    .line 529
    :catchall_0
    move-exception v0

    #@97
    monitor-exit v1

    #@98
    throw v0
.end method
