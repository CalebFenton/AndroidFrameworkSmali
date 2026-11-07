.class Landroid/media/MediaPlayer$5;
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
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$dupedFd:Ljava/io/FileDescriptor;

.field final synthetic blacklist val$length2:J

.field final synthetic blacklist val$offset2:J

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;

.field final synthetic blacklist val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .registers 9
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 3199
    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .registers 11

    .line 3201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3203
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 3204
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 3205
    .local v1, "buffer":[B
    const-wide/16 v2, 0x0

    .local v2, "total":J
    :goto_14
    iget-wide v4, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-gez v4, :cond_34

    .line 3206
    array-length v4, v1

    int-to-long v6, v4

    iget-wide v8, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 3207
    .local v4, "bytesToRead":I
    iget-object v6, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v6, v1, v5, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v6

    .line 3208
    .local v6, "bytes":I
    if-gez v6, :cond_2e

    .line 3209
    goto :goto_34

    .line 3211
    :cond_2e
    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3212
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 3214
    .end local v4    # "bytesToRead":I
    .end local v6    # "bytes":I
    goto :goto_14

    .line 3215
    .end local v2    # "total":J
    :cond_34
    :goto_34
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_7a
    .catchall {:try_start_5 .. :try_end_3b} :catchall_78

    .line 3216
    :try_start_3b
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 3217
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3

    .line 3218
    .local v3, "h":Landroid/os/Handler;
    const/4 v4, 0x1

    .line 3219
    .local v4, "what":I
    const/4 v6, 0x4

    .line 3220
    .local v6, "arg1":I
    iget-object v7, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    .line 3221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 3222
    .local v7, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3223
    .local v5, "m":Landroid/os/Message;
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3225
    .end local v3    # "h":Landroid/os/Handler;
    .end local v4    # "what":I
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "arg1":I
    .end local v7    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :cond_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_75

    .line 3226
    nop

    .line 3232
    :try_start_62
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_67
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_67} :catch_68

    .line 3235
    goto :goto_72

    .line 3233
    :catch_68
    move-exception v2

    .line 3234
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3226
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_72
    const/16 v2, 0x323

    return v2

    .line 3225
    :catchall_75
    move-exception v3

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/MediaPlayer$5;
    :try_start_77
    throw v3
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_78} :catch_7a
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 3231
    .end local v1    # "buffer":[B
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/MediaPlayer$5;
    :catchall_78
    move-exception v1

    goto :goto_98

    .line 3227
    :catch_7a
    move-exception v1

    .line 3228
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7b
    const-string v2, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_78

    .line 3229
    nop

    .line 3232
    :try_start_85
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8a
    .catch Landroid/system/ErrnoException; {:try_start_85 .. :try_end_8a} :catch_8b

    .line 3235
    goto :goto_95

    .line 3233
    :catch_8b
    move-exception v2

    .line 3234
    .restart local v2    # "e":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3229
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_95
    const/16 v2, 0x384

    return v2

    .line 3232
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_98
    :try_start_98
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_9d
    .catch Landroid/system/ErrnoException; {:try_start_98 .. :try_end_9d} :catch_9e

    .line 3235
    goto :goto_a8

    .line 3233
    :catch_9e
    move-exception v2

    .line 3234
    .restart local v2    # "e":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3236
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_a8
    throw v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 3240
    invoke-direct {p0}, Landroid/media/MediaPlayer$5;->addTrack()I

    move-result v0

    .line 3241
    .local v0, "res":I
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3242
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3243
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3245
    .end local v1    # "m":Landroid/os/Message;
    :cond_23
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 3246
    return-void
.end method
