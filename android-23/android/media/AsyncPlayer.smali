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
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final mDebug:Z


# instance fields
.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/AsyncPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Landroid/media/AsyncPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AsyncPlayer;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/AsyncPlayer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->releaseWakeLock()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V
    .locals 0
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    #@a
    .line 136
    const/4 v0, 0x2

    #@b
    iput v0, p0, Landroid/media/AsyncPlayer;->mState:I

    #@d
    .line 144
    if-eqz p1, :cond_0

    #@f
    .line 145
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@11
    .line 143
    :goto_0
    return-void

    #@12
    .line 147
    :cond_0
    const-string/jumbo v0, "AsyncPlayer"

    #@15
    iput-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@17
    goto :goto_0
.end method

.method private acquireWakeLock()V
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 262
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 260
    :cond_0
    return-void
.end method

.method private enqueueLocked(Landroid/media/AsyncPlayer$Command;)V
    .locals 1
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@5
    .line 229
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 230
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->acquireWakeLock()V

    #@c
    .line 231
    new-instance v0, Landroid/media/AsyncPlayer$Thread;

    #@e
    invoke-direct {v0, p0}, Landroid/media/AsyncPlayer$Thread;-><init>(Landroid/media/AsyncPlayer;)V

    #@11
    iput-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@13
    .line 232
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@15
    invoke-virtual {v0}, Landroid/media/AsyncPlayer$Thread;->start()V

    #@18
    .line 227
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 268
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@9
    .line 266
    :cond_0
    return-void
.end method

.method private startSound(Landroid/media/AsyncPlayer$Command;)V
    .locals 8
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    #@0
    .prologue
    .line 59
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    #@2
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    #@5
    .line 60
    .local v3, "player":Landroid/media/MediaPlayer;
    iget-object v4, p1, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    #@7
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@a
    .line 61
    iget-object v4, p1, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    #@c
    iget-object v5, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    #@e
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    #@11
    .line 62
    iget-boolean v4, p1, Landroid/media/AsyncPlayer$Command;->looping:Z

    #@13
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    #@16
    .line 63
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    #@19
    .line 64
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    #@1c
    .line 65
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 66
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    #@22
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    #@25
    .line 68
    :cond_0
    iput-object v3, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    #@27
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v4

    #@2b
    iget-wide v6, p1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    #@2d
    sub-long v0, v4, v6

    #@2f
    .line 70
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    #@31
    cmp-long v4, v0, v4

    #@33
    if-lez v4, :cond_1

    #@35
    .line 71
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Notification sound delayed by "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, "msecs"

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 53
    .end local v0    # "delay":J
    .end local v3    # "player":Landroid/media/MediaPlayer;
    :cond_1
    :goto_0
    return-void

    #@56
    .line 74
    :catch_0
    move-exception v2

    #@57
    .line 75
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "error loading sound for "

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    iget-object v6, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    goto :goto_0
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "stream"    # I

    #@0
    .prologue
    .line 166
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 167
    :cond_0
    return-void

    #@5
    .line 171
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@7
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@a
    invoke-virtual {v1, p4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@11
    move-result-object v1

    #@12
    .line 170
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 165
    :goto_0
    return-void

    #@16
    .line 172
    :catch_0
    move-exception v0

    #@17
    .line 173
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@19
    const-string/jumbo v2, "Call to deprecated AsyncPlayer.play() method caused:"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 193
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 194
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Illegal null AsyncPlayer.play() argument"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 193
    :cond_1
    if-eqz p4, :cond_0

    #@11
    .line 196
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    #@13
    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$Command;)V

    #@16
    .line 197
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19
    move-result-wide v2

    #@1a
    iput-wide v2, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    #@1c
    .line 198
    iput v4, v0, Landroid/media/AsyncPlayer$Command;->code:I

    #@1e
    .line 199
    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    #@20
    .line 200
    iput-object p2, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    #@22
    .line 201
    iput-boolean p3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    #@24
    .line 202
    iput-object p4, v0, Landroid/media/AsyncPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    #@26
    .line 203
    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    #@28
    monitor-enter v2

    #@29
    .line 204
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    #@2c
    .line 205
    const/4 v1, 0x1

    #@2d
    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 192
    return-void

    #@31
    .line 203
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 250
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 253
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "assertion failed mWakeLock="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 254
    const-string/jumbo v3, " mThread="

    #@1f
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 254
    iget-object v3, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    #@25
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 256
    :cond_1
    const-string/jumbo v1, "power"

    #@34
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/os/PowerManager;

    #@3a
    .line 257
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    #@3c
    const/4 v2, 0x1

    #@3d
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@40
    move-result-object v1

    #@41
    iput-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@43
    .line 249
    return-void
.end method

.method public stop()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 214
    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    #@3
    monitor-enter v2

    #@4
    .line 217
    :try_start_0
    iget v1, p0, Landroid/media/AsyncPlayer;->mState:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 218
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$Command;)V

    #@e
    .line 219
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v4

    #@12
    iput-wide v4, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    #@14
    .line 220
    const/4 v1, 0x2

    #@15
    iput v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    #@17
    .line 221
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    #@1a
    .line 222
    const/4 v1, 0x2

    #@1b
    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :cond_0
    monitor-exit v2

    #@1e
    .line 213
    return-void

    #@1f
    .line 214
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method
