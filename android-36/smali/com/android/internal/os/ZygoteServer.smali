.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_TIMESTAMP:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private blacklist mCloseSocketFd:Z

.field private blacklist mIsFirstPropertyCheck:Z

.field private blacklist mIsForkChild:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private blacklist mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field private blacklist mUsapPoolRefillDelayMs:I

.field private blacklist mUsapPoolRefillThreshold:I

.field private blacklist mUsapPoolRefillTriggerTimestamp:J

.field private blacklist mUsapPoolSizeMax:I

.field private blacklist mUsapPoolSizeMin:I

.field private final blacklist mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final blacklist mUsapPoolSupported:Z

.field private blacklist mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 48
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 107
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 112
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 118
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 282
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 140
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 141
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 144
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 5
    .param p1, "isPrimaryZygote"    # Z

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 107
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 112
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 118
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 282
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 153
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 155
    if-eqz p1, :cond_32

    .line 156
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 157
    nop

    .line 158
    const-string/jumbo v1, "usap_pool_primary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_45

    .line 161
    :cond_32
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 162
    nop

    .line 163
    const-string/jumbo v1, "usap_pool_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 167
    :goto_45
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 168
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 169
    return-void
.end method

.method private blacklist acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 5
    .param p1, "abiList"    # Ljava/lang/String;

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 202
    :catch_b
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist fetchUsapPoolPolicyProps()V
    .registers 5

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_56

    .line 247
    nop

    .line 248
    const-string/jumbo v0, "usap_pool_size_max"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 253
    nop

    .line 254
    const-string/jumbo v0, "usap_pool_size_min"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 253
    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 259
    nop

    .line 260
    const-string/jumbo v0, "usap_refill_threshold"

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 259
    invoke-static {v0, v3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 265
    const-string/jumbo v0, "usap_pool_refill_delay_ms"

    const/16 v3, 0xbb8

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 270
    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v0, v3, :cond_56

    .line 271
    const-string v0, "ZygoteServer"

    const-string v3, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 275
    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 276
    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 279
    :cond_56
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsIfUnfetched()V
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_a

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 298
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 300
    :cond_a
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsWithMinInterval()V
    .registers 7

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 287
    .local v0, "currentTimestamp":J
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_13

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    .line 289
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 290
    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 291
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 293
    :cond_1b
    return-void
.end method

.method private blacklist resetUsapRefillState()V
    .registers 3

    .line 384
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 385
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 386
    return-void
.end method


# virtual methods
.method blacklist closeServerSocket()V
    .registers 4

    .line 219
    const-string v0, "ZygoteServer"

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_28

    .line 220
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 221
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 222
    if-eqz v1, :cond_28

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_28

    .line 223
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_22
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_28

    .line 228
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_1b
    move-exception v1

    .line 229
    .local v1, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 226
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :catch_22
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_28
    :goto_28
    nop

    .line 232
    :goto_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 233
    return-void
.end method

.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist fillUsapPool([IZ)Ljava/lang/Runnable;
    .registers 10
    .param p1, "sessionSocketRawFDs"    # [I
    .param p2, "isPriorityRefill"    # Z

    .line 313
    const-string v0, "Zygote:FillUsapPool"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsIfUnfetched()V

    .line 318
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    .line 321
    .local v0, "usapPoolCount":I
    const-string/jumbo v3, "zygote"

    if-eqz p2, :cond_2d

    .line 323
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v0

    .line 325
    .local v4, "numUsapsToSpawn":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 329
    .end local v4    # "numUsapsToSpawn":I
    :cond_2d
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    .line 331
    .restart local v4    # "numUsapsToSpawn":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delayed USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_46
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 339
    :goto_49
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_57

    .line 340
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 341
    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 343
    .local v3, "caller":Ljava/lang/Runnable;
    if-eqz v3, :cond_56

    .line 344
    return-object v3

    .line 346
    .end local v3    # "caller":Ljava/lang/Runnable;
    :cond_56
    goto :goto_49

    .line 350
    :cond_57
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->resetUsapRefillState()V

    .line 354
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsapPoolEnabled()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return v0
.end method

.method blacklist registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .registers 6
    .param p1, "socketName"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_2f

    .line 186
    :try_start_4
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_f

    .line 191
    goto :goto_2f

    .line 188
    :catch_f
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method blacklist runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 20
    .param p1, "abiList"    # Ljava/lang/String;

    .line 395
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 396
    .local v2, "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 398
    .local v3, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 404
    :goto_1f
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsWithMinInterval()V

    .line 405
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 407
    const/4 v0, 0x0

    .line 413
    .local v0, "usapPipeFDs":[I
    iget-boolean v6, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3c

    .line 414
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v7

    array-length v8, v0

    add-int/2addr v6, v8

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    .local v6, "pollFDs":[Landroid/system/StructPollfd;
    goto :goto_44

    .line 417
    .end local v6    # "pollFDs":[Landroid/system/StructPollfd;
    :cond_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    .line 428
    .end local v0    # "usapPipeFDs":[I
    .local v6, "usapPipeFDs":[I
    .local v8, "pollFDs":[Landroid/system/StructPollfd;
    :goto_44
    const/4 v0, 0x0

    .line 429
    .local v0, "pollIndex":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_49
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    .line 430
    .local v10, "socketFD":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/system/StructPollfd;

    invoke-direct {v11}, Landroid/system/StructPollfd;-><init>()V

    aput-object v11, v8, v0

    .line 431
    aget-object v11, v8, v0

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 432
    aget-object v11, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v11, Landroid/system/StructPollfd;->events:S

    .line 433
    nop

    .end local v10    # "socketFD":Ljava/io/FileDescriptor;
    add-int/lit8 v0, v0, 0x1

    .line 434
    goto :goto_49

    .line 436
    :cond_6b
    move v9, v0

    .line 438
    .local v9, "usapPoolEventFDIndex":I
    iget-boolean v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_b1

    .line 439
    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v8, v0

    .line 440
    aget-object v10, v8, v0

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v10, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 441
    aget-object v10, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v10, Landroid/system/StructPollfd;->events:S

    .line 442
    add-int/lit8 v0, v0, 0x1

    .line 445
    nop

    .line 446
    array-length v10, v6

    move v12, v11

    :goto_8a
    if-ge v12, v10, :cond_af

    aget v13, v6, v12

    .line 447
    .local v13, "usapPipeFD":I
    new-instance v14, Ljava/io/FileDescriptor;

    invoke-direct {v14}, Ljava/io/FileDescriptor;-><init>()V

    .line 448
    .local v14, "managedFd":Ljava/io/FileDescriptor;
    invoke-virtual {v14, v13}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 450
    new-instance v15, Landroid/system/StructPollfd;

    invoke-direct {v15}, Landroid/system/StructPollfd;-><init>()V

    aput-object v15, v8, v0

    .line 451
    aget-object v15, v8, v0

    iput-object v14, v15, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 452
    aget-object v15, v8, v0

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v15, Landroid/system/StructPollfd;->events:S

    .line 453
    nop

    .end local v13    # "usapPipeFD":I
    .end local v14    # "managedFd":Ljava/io/FileDescriptor;
    add-int/lit8 v0, v0, 0x1

    .line 446
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_8a

    :cond_af
    move v7, v0

    goto :goto_b2

    .line 438
    :cond_b1
    move v7, v0

    .line 459
    .end local v0    # "pollIndex":I
    .local v7, "pollIndex":I
    :goto_b2
    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_bb

    .line 460
    const/4 v0, -0x1

    move v10, v0

    .local v0, "pollTimeoutMs":I
    goto :goto_e2

    .line 462
    .end local v0    # "pollTimeoutMs":I
    :cond_bb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sub-long/2addr v12, v14

    .line 464
    .local v12, "elapsedTimeMs":J
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-ltz v0, :cond_d2

    .line 468
    const/4 v0, 0x0

    .line 469
    .restart local v0    # "pollTimeoutMs":I
    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 470
    sget-object v10, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move v10, v0

    goto :goto_e2

    .line 472
    .end local v0    # "pollTimeoutMs":I
    :cond_d2
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_dc

    .line 477
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    move v10, v0

    .restart local v0    # "pollTimeoutMs":I
    goto :goto_e2

    .line 480
    .end local v0    # "pollTimeoutMs":I
    :cond_dc
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v14, v0

    sub-long/2addr v14, v12

    long-to-int v0, v14

    move v10, v0

    .line 486
    .end local v12    # "elapsedTimeMs":J
    .local v10, "pollTimeoutMs":I
    :goto_e2
    :try_start_e2
    invoke-static {v8, v10}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_e6
    .catch Landroid/system/ErrnoException; {:try_start_e2 .. :try_end_e6} :catch_264

    move v12, v0

    .line 489
    .local v12, "pollReturnValue":I
    nop

    .line 491
    if-nez v12, :cond_f2

    .line 497
    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 498
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto/16 :goto_227

    .line 501
    :cond_f2
    const/4 v0, 0x0

    move/from16 v17, v7

    move v7, v0

    move/from16 v0, v17

    .line 503
    .local v0, "pollIndex":I
    .local v7, "usapPoolFDRead":Z
    :goto_f8
    add-int/lit8 v13, v0, -0x1

    .end local v0    # "pollIndex":I
    .local v13, "pollIndex":I
    if-ltz v13, :cond_20a

    .line 504
    aget-object v0, v8, v13

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v14, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v14

    if-nez v0, :cond_107

    .line 505
    goto/16 :goto_205

    .line 508
    :cond_107
    if-nez v13, :cond_119

    .line 510
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    .line 511
    .local v0, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v0    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    goto/16 :goto_205

    :cond_119
    const-string v14, "ZygoteServer"

    if-ge v13, v9, :cond_18a

    .line 517
    :try_start_11d
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    .line 518
    .local v0, "connection":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v15

    if-nez v15, :cond_131

    .line 519
    invoke-static {}, Ldalvik/system/ZygoteHooks;->isIndefiniteThreadSuspensionSafe()Z

    move-result v15

    if-eqz v15, :cond_131

    const/4 v15, 0x1

    goto :goto_132

    :cond_131
    move v15, v11

    .line 520
    .local v15, "multipleForksOK":Z
    :goto_132
    nop

    .line 521
    invoke-virtual {v0, v1, v15}, Lcom/android/internal/os/ZygoteConnection;->processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v16

    .line 524
    .local v16, "command":Ljava/lang/Runnable;
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_139} :catch_168
    .catchall {:try_start_11d .. :try_end_139} :catchall_166

    if-eqz v4, :cond_149

    .line 527
    if-eqz v16, :cond_141

    .line 531
    nop

    .line 576
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 531
    return-object v16

    .line 528
    :cond_141
    :try_start_141
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v4

    .line 534
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :cond_149
    if-nez v16, :cond_15e

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_15a

    .line 543
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 544
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_15a} :catch_168
    .catchall {:try_start_141 .. :try_end_15a} :catchall_166

    .line 576
    .end local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v15    # "multipleForksOK":Z
    .end local v16    # "command":Ljava/lang/Runnable;
    :cond_15a
    :goto_15a
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 577
    goto/16 :goto_205

    .line 535
    .restart local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .restart local v15    # "multipleForksOK":Z
    .restart local v16    # "command":Ljava/lang/Runnable;
    :cond_15e
    :try_start_15e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command != null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v4
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_166} :catch_168
    .catchall {:try_start_15e .. :try_end_166} :catchall_166

    .line 576
    .end local v0    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v15    # "multipleForksOK":Z
    .end local v16    # "command":Ljava/lang/Runnable;
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :catchall_166
    move-exception v0

    goto :goto_187

    .line 548
    :catch_168
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    :try_start_169
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_180

    .line 555
    const-string v4, "Exception executing zygote command: "

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    .line 561
    .local v4, "conn":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 563
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    nop

    .end local v4    # "conn":Lcom/android/internal/os/ZygoteConnection;
    goto :goto_15a

    .line 569
    :cond_180
    const-string v4, "Caught post-fork exception in child process."

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    nop

    .end local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .end local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "usapPoolFDRead":Z
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    .end local v13    # "pollIndex":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "abiList":Ljava/lang/String;
    throw v0
    :try_end_187
    .catchall {:try_start_169 .. :try_end_187} :catchall_166

    .line 576
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "socketFDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    .restart local v3    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "usapPoolFDRead":Z
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    .restart local v12    # "pollReturnValue":I
    .restart local v13    # "pollIndex":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "abiList":Ljava/lang/String;
    :goto_187
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 577
    throw v0

    .line 590
    :cond_18a
    const/16 v0, 0x8

    :try_start_18c
    new-array v4, v0, [B

    .line 591
    .local v4, "buffer":[B
    aget-object v5, v8, v13

    iget-object v5, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    array-length v15, v4

    .line 592
    invoke-static {v5, v4, v11, v15}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 594
    .local v5, "readBytes":I
    if-ne v5, v0, :cond_1b5

    .line 595
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 598
    .local v0, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1a7} :catch_1cc

    .line 599
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .local v14, "messagePayload":J
    nop

    .line 614
    .end local v4    # "buffer":[B
    .end local v5    # "readBytes":I
    nop

    .line 616
    if-le v13, v9, :cond_1af

    .line 617
    long-to-int v0, v14

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    .line 620
    :cond_1af
    const/4 v7, 0x1

    .line 621
    .end local v14    # "messagePayload":J
    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_f8

    .line 600
    .restart local v4    # "buffer":[B
    .restart local v5    # "readBytes":I
    :cond_1b5
    :try_start_1b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1cb} :catch_1cc

    .line 602
    goto :goto_205

    .line 604
    .end local v4    # "buffer":[B
    .end local v5    # "readBytes":I
    :catch_1cc
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/lang/Exception;
    if-ne v13, v9, :cond_1ea

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP pool event FD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204

    .line 609
    :cond_1ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP reporting pipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_204
    nop

    .line 503
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_205
    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_f8

    .line 624
    :cond_20a
    if-eqz v7, :cond_226

    .line 625
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    .line 627
    .local v0, "usapPoolCount":I
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_219

    .line 629
    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_226

    .line 630
    :cond_219
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v5, :cond_226

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 637
    .end local v0    # "usapPoolCount":I
    .end local v7    # "usapPoolFDRead":Z
    :cond_226
    :goto_226
    move v7, v13

    .end local v13    # "pollIndex":I
    .local v7, "pollIndex":I
    :goto_227
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v0, v4, :cond_260

    .line 638
    nop

    .line 639
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;-><init>()V

    .line 641
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 644
    .local v0, "sessionSocketRawFDs":[I
    iget-object v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v5, v13, :cond_24f

    goto :goto_250

    :cond_24f
    move v4, v11

    .line 647
    .local v4, "isPriorityRefill":Z
    :goto_250
    nop

    .line 648
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v5

    .line 650
    .local v5, "command":Ljava/lang/Runnable;
    if-eqz v5, :cond_258

    .line 651
    return-object v5

    .line 652
    :cond_258
    if-eqz v4, :cond_260

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 657
    .end local v0    # "sessionSocketRawFDs":[I
    .end local v4    # "isPriorityRefill":Z
    .end local v5    # "command":Ljava/lang/Runnable;
    .end local v6    # "usapPipeFDs":[I
    .end local v7    # "pollIndex":I
    .end local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .end local v9    # "usapPoolEventFDIndex":I
    .end local v10    # "pollTimeoutMs":I
    .end local v12    # "pollReturnValue":I
    :cond_260
    const-wide/16 v4, -0x1

    goto/16 :goto_1f

    .line 487
    .restart local v6    # "usapPipeFDs":[I
    .restart local v7    # "pollIndex":I
    .restart local v8    # "pollFDs":[Landroid/system/StructPollfd;
    .restart local v9    # "usapPoolEventFDIndex":I
    .restart local v10    # "pollTimeoutMs":I
    :catch_264
    move-exception v0

    .line 488
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "poll failed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method blacklist setForkChild()V
    .registers 2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 173
    return-void
.end method

.method blacklist setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .registers 7
    .param p1, "newStatus"    # Z
    .param p2, "sessionSocket"    # Landroid/net/LocalSocket;

    .line 363
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 364
    const-string v0, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v2

    .line 367
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_12

    .line 368
    return-object v2

    .line 371
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USAP Pool status change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_22

    const-string v3, "ENABLED"

    goto :goto_24

    :cond_22
    const-string v3, "DISABLED"

    :goto_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 375
    if-eqz p1, :cond_45

    .line 376
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 378
    :cond_45
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    .line 379
    return-object v2
.end method
