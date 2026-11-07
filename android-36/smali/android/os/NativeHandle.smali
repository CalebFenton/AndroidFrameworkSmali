.class public final Landroid/os/NativeHandle;
.super Ljava/lang/Object;
.source "NativeHandle.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mFds:[Ljava/io/FileDescriptor;

.field private blacklist mInts:[I

.field private blacklist mOwn:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 46
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/io/FileDescriptor;

    new-array v2, v0, [I

    invoke-direct {p0, v1, v2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .param p2, "own"    # Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-array v1, v1, [I

    invoke-direct {p0, v0, v1, p2}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 55
    return-void
.end method

.method private constructor blacklist <init>([I[IZ)V
    .registers 5
    .param p1, "fds"    # [I
    .param p2, "ints"    # [I
    .param p3, "own"    # Z

    .line 79
    invoke-static {p1}, Landroid/os/NativeHandle;->createFileDescriptorArray([I)[Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 80
    return-void
.end method

.method public constructor whitelist <init>([Ljava/io/FileDescriptor;[IZ)V
    .registers 5
    .param p1, "fds"    # [Ljava/io/FileDescriptor;
    .param p2, "ints"    # [I
    .param p3, "own"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    .line 88
    invoke-virtual {p1}, [Ljava/io/FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    .line 89
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    .line 90
    iput-boolean p3, p0, Landroid/os/NativeHandle;->mOwn:Z

    .line 91
    return-void
.end method

.method private blacklist checkOpen()V
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 130
    return-void

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is invalidated after close."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createFileDescriptorArray([I)[Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "fds"    # [I

    .line 63
    array-length v0, p0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    .line 64
    .local v0, "list":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 65
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 66
    .local v2, "descriptor":Ljava/io/FileDescriptor;
    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 67
    aput-object v2, v0, v1

    .line 64
    .end local v2    # "descriptor":Ljava/io/FileDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 69
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private blacklist getFdsAsIntArray()[I
    .registers 5

    .line 183
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 185
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    .line 186
    .local v0, "numFds":I
    new-array v1, v0, [I

    .line 188
    .local v1, "fds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_18

    .line 189
    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    aput v3, v1, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 192
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 141
    iget-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    if-eqz v0, :cond_1d

    .line 143
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v1

    move v3, v0

    :goto_c
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 144
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_13} :catch_17

    .line 143
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 148
    :cond_16
    goto :goto_1b

    .line 146
    :catch_17
    move-exception v1

    .line 147
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 150
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_1b
    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    .line 153
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    .line 154
    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    .line 155
    return-void
.end method

.method public whitelist dup()Landroid/os/NativeHandle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    .line 114
    .local v0, "fds":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget-object v2, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 115
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 116
    .local v2, "newFd":Ljava/io/FileDescriptor;
    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v1

    sget v4, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v3

    .line 117
    .local v3, "fdint":I
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 118
    aput-object v2, v0, v1
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_20} :catch_24

    .line 114
    .end local v2    # "newFd":Ljava/io/FileDescriptor;
    .end local v3    # "fdint":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 122
    .end local v1    # "i":I
    :cond_23
    goto :goto_28

    .line 120
    :catch_24
    move-exception v1

    .line 121
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 123
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_28
    new-instance v1, Landroid/os/NativeHandle;

    iget-object v2, p0, Landroid/os/NativeHandle;->mInts:[I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-object v1
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    .line 165
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 167
    invoke-virtual {p0}, Landroid/os/NativeHandle;->hasSingleFileDescriptor()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 168
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is not single file descriptor. Contents must be retreived through getFileDescriptors and getInts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2

    .line 201
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 203
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getInts()[I
    .registers 2

    .line 212
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 214
    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-object v0
.end method

.method public whitelist hasSingleFileDescriptor()Z
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    .line 102
    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    array-length v0, v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
