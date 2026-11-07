.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final blacklist NO_OWNER:J

.field public static final whitelist test-api err:Ljava/io/FileDescriptor;

.field public static final whitelist test-api in:Ljava/io/FileDescriptor;

.field public static final whitelist test-api out:Ljava/io/FileDescriptor;


# instance fields
.field private blacklist append:Z

.field private greylist descriptor:I

.field private blacklist ownerId:J

.field private final blacklist releaseLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetappend(Ljava/io/FileDescriptor;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/io/FileDescriptor;->append:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdescriptor(Ljava/io/FileDescriptor;)I
    .registers 1

    iget p0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputdescriptor(Ljava/io/FileDescriptor;I)V
    .registers 2

    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 108
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 117
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 270
    new-instance v0, Ljava/io/FileDescriptor$1;

    invoke-direct {v0}, Ljava/io/FileDescriptor$1;-><init>()V

    invoke-static {v0}, Ljdk/internal/access/SharedSecrets;->setJavaIOFileDescriptorAccess(Ljdk/internal/access/JavaIOFileDescriptorAccess;)V

    .line 294
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileDescriptor;->releaseLock:Ljava/lang/Object;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 86
    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "fd"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileDescriptor;->releaseLock:Ljava/lang/Object;

    .line 89
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 90
    invoke-static {p1}, Ljava/io/FileDescriptor;->getAppend(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/io/FileDescriptor;->append:Z

    .line 91
    return-void
.end method

.method private static native blacklist getAppend(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o isSocket(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist cloneForFork()V
    .registers 3

    .line 206
    :try_start_0
    sget v0, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 207
    .local v0, "newDescriptor":I
    invoke-virtual {p0, v0}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_a} :catch_c

    .line 210
    .end local v0    # "newDescriptor":I
    nop

    .line 211
    return-void

    .line 208
    :catch_c
    move-exception v0

    .line 209
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final greylist test-api getInt$()I
    .registers 2

    .line 177
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method public blacklist getOwnerId$()J
    .registers 3

    .line 221
    iget-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    return-wide v0
.end method

.method public greylist-max-r isSocket$()Z
    .registers 2

    .line 263
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    invoke-static {v0}, Ljava/io/FileDescriptor;->isSocket(I)Z

    move-result v0

    return v0
.end method

.method public blacklist release$()Ljava/io/FileDescriptor;
    .registers 5

    .line 246
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 247
    .local v0, "result":Ljava/io/FileDescriptor;
    iget-object v1, p0, Ljava/io/FileDescriptor;->releaseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_8
    iget v2, p0, Ljava/io/FileDescriptor;->descriptor:I

    iput v2, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 249
    iget-wide v2, p0, Ljava/io/FileDescriptor;->ownerId:J

    iput-wide v2, v0, Ljava/io/FileDescriptor;->ownerId:J

    .line 250
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 251
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 252
    monitor-exit v1

    .line 254
    return-object v0

    .line 252
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public final greylist test-api setInt$(I)V
    .registers 3
    .param p1, "fd"    # I

    .line 188
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 189
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 190
    invoke-static {p1}, Ljava/io/FileDescriptor;->getAppend(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/io/FileDescriptor;->append:Z

    .line 192
    :cond_b
    return-void
.end method

.method public blacklist setOwnerId$(J)V
    .registers 3
    .param p1, "newOwnerId"    # J

    .line 234
    iput-wide p1, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 235
    return-void
.end method

.method public native whitelist test-api sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method

.method public whitelist test-api valid()Z
    .registers 3

    .line 127
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
