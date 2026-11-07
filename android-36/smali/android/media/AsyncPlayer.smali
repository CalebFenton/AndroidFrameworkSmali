.class public Landroid/media/AsyncPlayer;
.super Ljava/lang/Object;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AsyncPlayer$Command;,
        Landroid/media/AsyncPlayer$Thread;
    }
.end annotation


# static fields
.field private static final greylist-max-o PLAY:I = 0x1

.field private static final greylist-max-o STOP:I = 0x2

.field private static final greylist-max-o mDebug:Z = false


# instance fields
.field private final greylist-max-o mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AsyncPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mState:I

.field private greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mThread:Landroid/media/AsyncPlayer$Thread;

.field private greylist-max-o mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCmdQueue(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayer(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/media/AsyncPlayer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlayer(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThread(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Landroid/media/AsyncPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AsyncPlayer;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSound(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 145
    if-eqz p1, :cond_12

    .line 146
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    goto :goto_16

    .line 148
    :cond_12
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    .line 150
    :goto_16
    return-void
.end method

.method private greylist-max-o acquireWakeLock()V
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 267
    :cond_9
    return-void
.end method

.method private greylist-max-o enqueueLocked(Landroid/media/AsyncPlayer$Command;)V
    .registers 3
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    .line 230
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_18

    .line 232
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->acquireWakeLock()V

    .line 233
    new-instance v0, Landroid/media/AsyncPlayer$Thread;

    invoke-direct {v0, p0}, Landroid/media/AsyncPlayer$Thread;-><init>(Landroid/media/AsyncPlayer;)V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    .line 234
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer$Thread;->start()V

    .line 236
    :cond_18
    return-void
.end method

.method private greylist-max-o releaseWakeLock()V
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 273
    :cond_9
    return-void
.end method

.method private greylist-max-o startSound(Landroid/media/AsyncPlayer$Command;)V
    .registers 8
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    .line 60
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 61
    .local v0, "player":Landroid/media/MediaPlayer;
    iget-object v1, p1, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 62
    iget-object v1, p1, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    iget-object v2, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 63
    iget-boolean v1, p1, Landroid/media/AsyncPlayer$Command;->looping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 65
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 66
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_25

    .line 67
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 69
    :cond_25
    iput-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long/2addr v1, v3

    .line 71
    .local v1, "delay":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-lez v3, :cond_52

    .line 72
    iget-object v3, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 77
    .end local v0    # "player":Landroid/media/MediaPlayer;
    .end local v1    # "delay":J
    :cond_52
    goto :goto_6e

    .line 75
    :catch_53
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading sound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method


# virtual methods
.method public whitelist play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "stream"    # I

    .line 167
    const-string v0, "AsyncPlayer"

    const-string v1, "play()"

    invoke-static {p4, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_26

    if-nez p2, :cond_c

    goto :goto_26

    .line 172
    :cond_c
    :try_start_c
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 173
    invoke-virtual {v0, p4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 172
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 176
    goto :goto_25

    .line 174
    :catch_1d
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    const-string v2, "Call to deprecated AsyncPlayer.play() method caused:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_25
    return-void

    .line 169
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    if-eqz p4, :cond_2a

    .line 198
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer-IA;)V

    .line 199
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    .line 200
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    .line 201
    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    .line 202
    iput-object p2, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    .line 203
    iput-boolean p3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    .line 204
    iput-object p4, v0, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 205
    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 206
    :try_start_20
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 207
    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 208
    monitor-exit v2

    .line 209
    return-void

    .line 208
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1

    .line 196
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AsyncPlayer.play() argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setUsesWakeLock(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_1a

    .line 259
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 260
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    return-void

    .line 256
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failed mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .registers 6

    .line 216
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 219
    :try_start_3
    iget v1, p0, Landroid/media/AsyncPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    .line 220
    new-instance v1, Landroid/media/AsyncPlayer$Command;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer-IA;)V

    .line 221
    .local v1, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    .line 222
    iput v2, v1, Landroid/media/AsyncPlayer$Command;->code:I

    .line 223
    invoke-direct {p0, v1}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 224
    iput v2, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 226
    .end local v1    # "cmd":Landroid/media/AsyncPlayer$Command;
    :cond_1b
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
