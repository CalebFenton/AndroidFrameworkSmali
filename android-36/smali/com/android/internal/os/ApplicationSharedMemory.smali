.class public Lcom/android/internal/os/ApplicationSharedMemory;
.super Ljava/lang/Object;
.source "ApplicationSharedMemory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist INVALID_NETWORK_TIME:J = -0x1L

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApplicationSharedMemory"

.field public static blacklist sInstance:Lcom/android/internal/os/ApplicationSharedMemory;


# instance fields
.field private blacklist mFileDescriptor:Ljava/io/FileDescriptor;

.field private final blacklist mMutable:Z

.field private volatile blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;ZJ)V
    .registers 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "mutable"    # Z
    .param p3, "ptr"    # J

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 170
    iput-boolean p2, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    .line 171
    iput-wide p3, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    .line 172
    return-void
.end method

.method private blacklist checkFileOpen()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 274
    return-void

    .line 272
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "File descriptor is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMapped()V
    .registers 5

    .line 282
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 285
    return-void

    .line 283
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMutable()V
    .registers 3

    .line 293
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    .line 294
    iget-boolean v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    if-eqz v0, :cond_8

    .line 297
    return-void

    .line 295
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not mutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist create()Lcom/android/internal/os/ApplicationSharedMemory;
    .registers 7

    .line 92
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeCreate()I

    move-result v0

    .line 93
    .local v0, "fd":I
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 94
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 96
    const/4 v2, 0x1

    .line 97
    .local v2, "mutable":Z
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeMap(IZ)J

    move-result-wide v4

    .line 98
    .local v4, "ptr":J
    invoke-static {v4, v5}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeInit(J)V

    .line 100
    new-instance v6, Lcom/android/internal/os/ApplicationSharedMemory;

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/internal/os/ApplicationSharedMemory;-><init>(Ljava/io/FileDescriptor;ZJ)V

    return-object v6
.end method

.method public static blacklist fromFileDescriptor(Ljava/io/FileDescriptor;Z)Lcom/android/internal/os/ApplicationSharedMemory;
    .registers 5
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "mutable"    # Z

    .line 117
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeMap(IZ)J

    move-result-wide v0

    .line 118
    .local v0, "ptr":J
    new-instance v2, Lcom/android/internal/os/ApplicationSharedMemory;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;-><init>(Ljava/io/FileDescriptor;ZJ)V

    return-object v2
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/ApplicationSharedMemory;
    .registers 3

    .line 67
    sget-object v0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    .line 68
    .local v0, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    if-eqz v0, :cond_5

    .line 71
    return-object v0

    .line 69
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ApplicationSharedMemory not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist nativeCreate()I
.end method

.method private static native blacklist nativeDupAsReadOnly(I)I
.end method

.method public static native blacklist nativeGetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSystemNonceBlock(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeInit(J)V
.end method

.method private static native blacklist nativeMap(IZ)J
.end method

.method private static native blacklist nativeReadSystemFeaturesCache(J)[I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeUnmap(J)V
.end method

.method private static native blacklist nativeWriteSystemFeaturesCache(J[I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V
    .registers 3
    .param p0, "instance"    # Lcom/android/internal/os/ApplicationSharedMemory;

    .line 80
    sget-object v0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    if-nez v0, :cond_7

    .line 83
    sput-object p0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    .line 84
    return-void

    .line 81
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApplicationSharedMemory already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()V
    .registers 5

    .line 215
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    .line 216
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V

    .line 218
    return-void
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 259
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 260
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeUnmap(J)V

    .line 261
    iput-wide v2, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    .line 264
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1b

    .line 265
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 268
    :cond_1b
    return-void
.end method

.method public blacklist closeFileDescriptor()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_c

    .line 253
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 256
    :cond_c
    return-void
.end method

.method public blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 184
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkFileOpen()V

    .line 185
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/DateTimeException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    .line 232
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeGetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)J

    move-result-wide v0

    .line 233
    .local v0, "offset":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 236
    return-wide v0

    .line 234
    :cond_10
    new-instance v2, Ljava/time/DateTimeException;

    const-string v3, "No network time available"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getReadOnlyFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkFileOpen()V

    .line 198
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 199
    .local v0, "readOnlyFileDescriptor":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeDupAsReadOnly(I)I

    move-result v1

    .line 200
    .local v1, "readOnlyFd":I
    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 201
    return-object v0
.end method

.method public blacklist getSystemNonceBlock()J
    .registers 3

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeGetSystemNonceBlock(J)J

    move-result-wide v0

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    :goto_f
    return-wide v0
.end method

.method public blacklist isMapped()Z
    .registers 5

    .line 303
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMutable()Z
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist readSystemFeaturesCache()[I
    .registers 3

    .line 350
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    .line 351
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeReadSystemFeaturesCache(J)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist setLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)V
    .registers 5
    .param p1, "offset"    # J

    .line 209
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    .line 210
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V

    .line 211
    return-void
.end method

.method public blacklist writeSystemFeaturesCache([I)V
    .registers 4
    .param p1, "featureVersions"    # [I

    .line 337
    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    .line 338
    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeWriteSystemFeaturesCache(J[I)V

    .line 339
    return-void
.end method
