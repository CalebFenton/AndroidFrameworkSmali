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
    .line 2257
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
    .locals 7

    #@0
    .prologue
    const/16 v5, 0x385

    #@2
    .line 2259
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@8
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@b
    move-result-object v3

    #@c
    if-nez v3, :cond_1

    #@e
    .line 2260
    :cond_0
    return v5

    #@f
    .line 2263
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@11
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    #@14
    move-result-object v3

    #@15
    iget-object v4, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    #@17
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@1a
    move-result-object v2

    #@1b
    .line 2264
    .local v2, "track":Landroid/media/SubtitleTrack;
    if-nez v2, :cond_2

    #@1d
    .line 2265
    return v5

    #@1e
    .line 2269
    :cond_2
    new-instance v1, Ljava/util/Scanner;

    #@20
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@22
    const-string/jumbo v4, "UTF-8"

    #@25
    invoke-direct {v1, v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@28
    .line 2270
    .local v1, "scanner":Ljava/util/Scanner;
    const-string/jumbo v3, "\\A"

    #@2b
    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 2271
    .local v0, "contents":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@35
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@38
    move-result-object v4

    #@39
    monitor-enter v4

    #@3a
    .line 2272
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@3c
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@3f
    move-result-object v3

    #@40
    iget-object v5, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    #@42
    invoke-virtual {v3, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v4

    #@46
    .line 2274
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    #@49
    .line 2275
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@4b
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@4e
    move-result-object v4

    #@4f
    monitor-enter v4

    #@50
    .line 2276
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@52
    invoke-static {v3}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    #@55
    move-result-object v3

    #@56
    const/4 v5, 0x0

    #@57
    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5e
    monitor-exit v4

    #@5f
    .line 2278
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@62
    move-result-object v3

    #@63
    const-wide/16 v4, -0x1

    #@65
    const/4 v6, 0x1

    #@66
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    #@69
    .line 2279
    const/16 v3, 0x323

    #@6b
    return v3

    #@6c
    .line 2271
    :catchall_0
    move-exception v3

    #@6d
    monitor-exit v4

    #@6e
    throw v3

    #@6f
    .line 2275
    :catchall_1
    move-exception v3

    #@70
    monitor-exit v4

    #@71
    throw v3
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2283
    invoke-direct {p0}, Landroid/media/MediaPlayer$3;->addTrack()I

    #@4
    move-result v1

    #@5
    .line 2284
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@7
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 2285
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
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    .line 2286
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #@1c
    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@23
    .line 2288
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
    .line 2282
    return-void
.end method
