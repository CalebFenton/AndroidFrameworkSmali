.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fd3:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$fd3"    # Ljava/io/FileDescriptor;
    .param p3, "val$offset2"    # J
    .param p5, "val$length2"    # J
    .param p7, "val$track"    # Landroid/media/SubtitleTrack;
    .param p8, "val$thread"    # Landroid/os/HandlerThread;

    #@0
    .prologue
    .line 2485
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@2
    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    #@4
    iput-wide p3, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    #@6
    iput-wide p5, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    #@8
    iput-object p7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    #@a
    iput-object p8, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method

.method private addTrack()I
    .locals 13

    #@0
    .prologue
    .line 2487
    const/4 v5, 0x0

    #@1
    .line 2488
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 2490
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8
    iget-object v9, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    #@a
    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    #@c
    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    #@e
    invoke-interface {v8, v9, v10, v11, v12}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@11
    .line 2491
    const/16 v8, 0x1000

    #@13
    new-array v1, v8, [B

    #@15
    .line 2492
    .local v1, "buffer":[B
    const-wide/16 v6, 0x0

    #@17
    .local v6, "total":J
    :goto_0
    iget-wide v8, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    #@19
    cmp-long v8, v6, v8

    #@1b
    if-gez v8, :cond_0

    #@1d
    .line 2493
    array-length v8, v1

    #@1e
    int-to-long v8, v8

    #@1f
    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    #@21
    sub-long/2addr v10, v6

    #@22
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@25
    move-result-wide v8

    #@26
    long-to-int v3, v8

    #@27
    .line 2494
    .local v3, "bytesToRead":I
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    #@29
    const/4 v9, 0x0

    #@2a
    invoke-static {v8, v1, v9, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@2d
    move-result v2

    #@2e
    .line 2495
    .local v2, "bytes":I
    if-gez v2, :cond_1

    #@30
    .line 2502
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    :cond_0
    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    #@32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@35
    move-result-object v9

    #@36
    const-wide/16 v10, -0x1

    #@38
    const/4 v12, 0x1

    #@39
    invoke-virtual {v8, v9, v12, v10, v11}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    #@3c
    .line 2503
    const/16 v8, 0x323

    #@3e
    return v8

    #@3f
    .line 2498
    .restart local v2    # "bytes":I
    .restart local v3    # "bytesToRead":I
    :cond_1
    const/4 v8, 0x0

    #@40
    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 2499
    int-to-long v8, v2

    #@44
    add-long/2addr v6, v8

    #@45
    goto :goto_0

    #@46
    .line 2504
    .end local v1    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v3    # "bytesToRead":I
    .end local v6    # "total":J
    :catch_0
    move-exception v4

    #@47
    .line 2505
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "MediaPlayer"

    #@4a
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 2506
    const/16 v8, 0x384

    #@53
    return v8

    #@54
    .line 2507
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@55
    throw v8
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2519
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    #@4
    move-result v1

    #@5
    .line 2520
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@7
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 2521
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@f
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@12
    move-result-object v2

    #@13
    const/16 v3, 0xc8

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    .line 2522
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@1c
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@23
    .line 2524
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    #@25
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    #@2c
    .line 2518
    return-void
.end method
