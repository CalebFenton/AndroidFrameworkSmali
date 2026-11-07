.class Landroid/media/MediaPlayer$4;
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
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$fFormat:Landroid/media/MediaFormat;

.field final synthetic blacklist val$fIs:Ljava/io/InputStream;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2960
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .registers 10

    .line 2962
    iget-object v0, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_98

    .line 2966
    :cond_10
    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->-$$Nest$fgetmSubtitleController(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 2967
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-nez v0, :cond_1f

    .line 2968
    return v1

    .line 2972
    :cond_1f
    new-instance v1, Ljava/util/Scanner;

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v1

    .line 2973
    .local v2, "scanner":Ljava/util/Scanner;
    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 2974
    .local v3, "contents":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 2975
    :try_start_3a
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2976
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_95

    .line 2977
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 2978
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 2979
    :try_start_50
    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2980
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_92

    .line 2981
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2982
    :try_start_66
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 2983
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v1

    .line 2984
    .local v1, "h":Landroid/os/Handler;
    const/4 v5, 0x1

    .line 2985
    .local v5, "what":I
    const/4 v6, 0x4

    .line 2986
    .local v6, "arg1":I
    nop

    .line 2987
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 2988
    .local v7, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2989
    .local v8, "m":Landroid/os/Message;
    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2991
    .end local v1    # "h":Landroid/os/Handler;
    .end local v5    # "what":I
    .end local v6    # "arg1":I
    .end local v7    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v8    # "m":Landroid/os/Message;
    :cond_8b
    monitor-exit v4

    .line 2992
    const/16 v1, 0x323

    return v1

    .line 2991
    :catchall_8f
    move-exception v1

    monitor-exit v4
    :try_end_91
    .catchall {:try_start_66 .. :try_end_91} :catchall_8f

    throw v1

    .line 2980
    :catchall_92
    move-exception v4

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v4

    .line 2976
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1

    .line 2963
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v2    # "scanner":Ljava/util/Scanner;
    .end local v3    # "contents":Ljava/lang/String;
    :cond_98
    :goto_98
    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 2996
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v0

    .line 2997
    .local v0, "res":I
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2998
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2999
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3001
    .end local v1    # "m":Landroid/os/Message;
    :cond_23
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 3002
    return-void
.end method
