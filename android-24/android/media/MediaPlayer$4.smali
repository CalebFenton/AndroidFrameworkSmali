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
    .line 2531
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
    .locals 24

    #@0
    .prologue
    .line 2533
    const/4 v13, 0x0

    #@1
    .line 2534
    .local v13, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 2536
    .local v7, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v19, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    #@c
    move-object/from16 v20, v0

    #@e
    move-object/from16 v0, p0

    #@10
    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$offset2:J

    #@12
    move-wide/from16 v22, v0

    #@14
    sget v21, Landroid/system/OsConstants;->SEEK_SET:I

    #@16
    move-object/from16 v0, v19

    #@18
    move-object/from16 v1, v20

    #@1a
    move-wide/from16 v2, v22

    #@1c
    move/from16 v4, v21

    #@1e
    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@21
    .line 2537
    const/16 v19, 0x1000

    #@23
    move/from16 v0, v19

    #@25
    new-array v8, v0, [B

    #@27
    .line 2538
    .local v8, "buffer":[B
    const-wide/16 v16, 0x0

    #@29
    .local v16, "total":J
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$length2:J

    #@2d
    move-wide/from16 v20, v0

    #@2f
    cmp-long v19, v16, v20

    #@31
    if-gez v19, :cond_0

    #@33
    .line 2539
    array-length v0, v8

    #@34
    move/from16 v19, v0

    #@36
    move/from16 v0, v19

    #@38
    int-to-long v0, v0

    #@39
    move-wide/from16 v20, v0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$length2:J

    #@3f
    move-wide/from16 v22, v0

    #@41
    sub-long v22, v22, v16

    #@43
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    #@46
    move-result-wide v20

    #@47
    move-wide/from16 v0, v20

    #@49
    long-to-int v10, v0

    #@4a
    .line 2540
    .local v10, "bytesToRead":I
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    #@4e
    move-object/from16 v19, v0

    #@50
    const/16 v20, 0x0

    #@52
    move-object/from16 v0, v19

    #@54
    move/from16 v1, v20

    #@56
    invoke-static {v0, v8, v1, v10}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@59
    move-result v9

    #@5a
    .line 2541
    .local v9, "bytes":I
    if-gez v9, :cond_1

    #@5c
    .line 2548
    .end local v9    # "bytes":I
    .end local v10    # "bytesToRead":I
    :cond_0
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@60
    move-object/from16 v19, v0

    #@62
    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@65
    move-result-object v19

    #@66
    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    #@69
    move-result-object v12

    #@6a
    .line 2549
    .local v12, "h":Landroid/os/Handler;
    const/16 v18, 0x1

    #@6c
    .line 2550
    .local v18, "what":I
    const/4 v6, 0x4

    #@6d
    .line 2551
    .local v6, "arg1":I
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    #@71
    move-object/from16 v19, v0

    #@73
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@76
    move-result-object v20

    #@77
    invoke-static/range {v19 .. v20}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7a
    move-result-object v15

    #@7b
    .line 2552
    .local v15, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/16 v19, 0x0

    #@7d
    move/from16 v0, v18

    #@7f
    move/from16 v1, v19

    #@81
    invoke-virtual {v12, v0, v6, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@84
    move-result-object v14

    #@85
    .line 2553
    .local v14, "m":Landroid/os/Message;
    invoke-virtual {v12, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@88
    .line 2554
    const/16 v19, 0x323

    #@8a
    return v19

    #@8b
    .line 2544
    .end local v6    # "arg1":I
    .end local v12    # "h":Landroid/os/Handler;
    .end local v14    # "m":Landroid/os/Message;
    .end local v15    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v18    # "what":I
    .restart local v9    # "bytes":I
    .restart local v10    # "bytesToRead":I
    :cond_1
    const/16 v19, 0x0

    #@8d
    move/from16 v0, v19

    #@8f
    invoke-virtual {v7, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@92
    .line 2545
    int-to-long v0, v9

    #@93
    move-wide/from16 v20, v0

    #@95
    add-long v16, v16, v20

    #@97
    goto :goto_0

    #@98
    .line 2555
    .end local v8    # "buffer":[B
    .end local v9    # "bytes":I
    .end local v10    # "bytesToRead":I
    .end local v16    # "total":J
    :catch_0
    move-exception v11

    #@99
    .line 2556
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v19, "MediaPlayer"

    #@9c
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@9f
    move-result-object v20

    #@a0
    move-object/from16 v0, v19

    #@a2
    move-object/from16 v1, v20

    #@a4
    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    .line 2557
    const/16 v19, 0x384

    #@a9
    return v19

    #@aa
    .line 2558
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    #@ab
    throw v19
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2570
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    #@4
    move-result v1

    #@5
    .line 2571
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@7
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 2572
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
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    .line 2573
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    #@1c
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@23
    .line 2575
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
    .line 2569
    return-void
.end method
