.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$fIs"    # Ljava/io/InputStream;
    .param p3, "val$fFormat"    # Landroid/media/MediaFormat;
    .param p4, "val$thread"    # Landroid/os/HandlerThread;

    #@0
    .prologue
    .line 2296
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@2
    iput-object p2, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@4
    iput-object p3, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    #@6
    iput-object p4, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method

.method private addTrack()I
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x385

    #@2
    .line 2298
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@4
    if-eqz v8, :cond_0

    #@6
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@8
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@b
    move-result-object v8

    #@c
    if-nez v8, :cond_1

    #@e
    .line 2299
    :cond_0
    return v10

    #@f
    .line 2302
    :cond_1
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@11
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@14
    move-result-object v8

    #@15
    iget-object v9, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    #@17
    invoke-virtual {v8, v9}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@1a
    move-result-object v5

    #@1b
    .line 2303
    .local v5, "track":Landroid/media/SubtitleTrack;
    if-nez v5, :cond_2

    #@1d
    .line 2304
    return v10

    #@1e
    .line 2308
    :cond_2
    new-instance v4, Ljava/util/Scanner;

    #@20
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@22
    const-string/jumbo v9, "UTF-8"

    #@25
    invoke-direct {v4, v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@28
    .line 2309
    .local v4, "scanner":Ljava/util/Scanner;
    const-string/jumbo v8, "\\A"

    #@2b
    invoke-virtual {v4, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 2310
    .local v1, "contents":Ljava/lang/String;
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@35
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@38
    move-result-object v9

    #@39
    monitor-enter v9

    #@3a
    .line 2311
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@3c
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@3f
    move-result-object v8

    #@40
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@42
    invoke-virtual {v8, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v9

    #@46
    .line 2313
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    #@49
    .line 2314
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@4b
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@4e
    move-result-object v9

    #@4f
    monitor-enter v9

    #@50
    .line 2315
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@52
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@55
    move-result-object v8

    #@56
    const/4 v10, 0x0

    #@57
    invoke-static {v10, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5e
    monitor-exit v9

    #@5f
    .line 2317
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@61
    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    #@64
    move-result-object v8

    #@65
    invoke-static {v8}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    #@68
    move-result-object v2

    #@69
    .line 2318
    .local v2, "h":Landroid/os/Handler;
    const/4 v7, 0x1

    #@6a
    .line 2319
    .local v7, "what":I
    const/4 v0, 0x4

    #@6b
    .line 2320
    .local v0, "arg1":I
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@6e
    move-result-object v8

    #@6f
    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@72
    move-result-object v6

    #@73
    .line 2321
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v8, 0x0

    #@74
    invoke-virtual {v2, v7, v0, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@77
    move-result-object v3

    #@78
    .line 2322
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@7b
    .line 2323
    const/16 v8, 0x323

    #@7d
    return v8

    #@7e
    .line 2310
    .end local v0    # "arg1":I
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "what":I
    :catchall_0
    move-exception v8

    #@7f
    monitor-exit v9

    #@80
    throw v8

    #@81
    .line 2314
    :catchall_1
    move-exception v8

    #@82
    monitor-exit v9

    #@83
    throw v8
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2327
    invoke-direct {p0}, Landroid/media/MediaPlayer$3;->addTrack()I

    #@4
    move-result v1

    #@5
    .line 2328
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@7
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 2329
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

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
    .line 2330
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@1c
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@23
    .line 2332
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    #@25
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    #@2c
    .line 2326
    return-void
.end method
