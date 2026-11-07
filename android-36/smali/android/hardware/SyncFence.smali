.class public final Landroid/hardware/SyncFence;
.super Ljava/lang/Object;
.source "SyncFence.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/SyncFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SIGNAL_TIME_INVALID:J = -0x1L

.field public static final whitelist SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mCloser:Ljava/lang/Runnable;

.field private blacklist mNativePtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 81
    nop

    .line 82
    const-class v0, Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 83
    invoke-static {}, Landroid/hardware/SyncFence;->nGetDestructor()J

    move-result-wide v1

    .line 82
    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 312
    new-instance v0, Landroid/hardware/SyncFence$1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$1;-><init>()V

    sput-object v0, Landroid/hardware/SyncFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 142
    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "fileDescriptor"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 95
    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 6
    .param p1, "nativeFencePtr"    # J

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_16

    .line 121
    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_1d

    .line 123
    :cond_16
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 125
    :goto_1d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/SyncFence;)V
    .registers 6
    .param p1, "other"    # Landroid/hardware/SyncFence;

    .line 133
    iget-wide v0, p1, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;-><init>(J)V

    .line 135
    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 136
    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/hardware/SyncFence;->nIncRef(J)V

    .line 138
    :cond_12
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 100
    .local v0, "valid":Z
    const/4 v1, 0x0

    .line 101
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_e

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 104
    :cond_e
    if-eqz v1, :cond_25

    .line 105
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 106
    sget-object v2, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_2c

    .line 108
    :cond_25
    new-instance v2, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;-><init>()V

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 110
    :goto_2c
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/SyncFence-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/SyncFence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist adopt(I)Landroid/hardware/SyncFence;
    .registers 2
    .param p0, "fileDescriptor"    # I

    .line 174
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p0}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method private blacklist await(J)Z
    .registers 8
    .param p1, "timeoutNanos"    # J

    .line 235
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/hardware/SyncFence;->nWait(JJ)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    monitor-exit v0

    return v1

    .line 237
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static blacklist create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;
    .registers 3
    .param p0, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .line 163
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SyncFence;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createEmpty()Landroid/hardware/SyncFence;
    .registers 1

    .line 151
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0}, Landroid/hardware/SyncFence;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0()V
    .registers 0

    .line 108
    return-void
.end method

.method static synthetic blacklist lambda$new$1()V
    .registers 0

    .line 123
    return-void
.end method

.method static synthetic blacklist lambda$new$2()V
    .registers 0

    .line 141
    return-void
.end method

.method private static native blacklist nCreate(I)J
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private static native blacklist nGetFd(J)I
.end method

.method private static native blacklist nGetSignalTime(J)J
.end method

.method private static native blacklist nIncRef(J)V
.end method

.method private static native blacklist nIsValid(J)Z
.end method

.method private static native blacklist nWait(JJ)Z
.end method


# virtual methods
.method public whitelist await(Ljava/time/Duration;)Z
    .registers 5
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 214
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    const-wide/16 v0, -0x1

    .local v0, "timeoutNanos":J
    goto :goto_d

    .line 217
    .end local v0    # "timeoutNanos":J
    :cond_9
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 219
    .restart local v0    # "timeoutNanos":J
    :goto_d
    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v2

    return v2
.end method

.method public whitelist awaitForever()Z
    .registers 3

    .line 231
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 266
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_d
    iput-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 271
    iget-object v1, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-eqz v1, :cond_13

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v2

    .line 184
    .local v1, "fd":I
    :goto_14
    if-eq v1, v2, :cond_1c

    .line 187
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 185
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot dup the FD of an invalid SyncFence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/SyncFence;
    throw v2

    .line 188
    .end local v1    # "fd":I
    .restart local p0    # "this":Landroid/hardware/SyncFence;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist getLock()Ljava/lang/Object;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist getNativeFence()J
    .registers 3

    .line 287
    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getSignalTime()J
    .registers 6

    .line 255
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetSignalTime(J)J

    move-result-wide v1

    goto :goto_14

    :cond_12
    const-wide/16 v1, -0x1

    :goto_14
    monitor-exit v0

    return-wide v1

    .line 257
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist isValid()Z
    .registers 6

    .line 198
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    monitor-exit v0

    return v1

    .line 200
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-eqz v1, :cond_13

    iget-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v2

    .line 301
    .local v1, "fd":I
    :goto_14
    if-ne v1, v2, :cond_1b

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_2a

    .line 304
    :cond_1b
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 306
    .local v2, "temp":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 309
    .end local v1    # "fd":I
    .end local v2    # "temp":Ljava/io/FileDescriptor;
    :goto_2a
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
