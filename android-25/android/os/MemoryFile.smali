.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$MemoryInputStream;,
        Landroid/os/MemoryFile$MemoryOutputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:J

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I


# direct methods
.method static synthetic -get0(Landroid/os/MemoryFile;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "MemoryFile"

    #@3
    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    #@5
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 60
    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    #@6
    .line 70
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    #@8
    .line 71
    if-ltz p2, :cond_0

    #@a
    .line 72
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@10
    .line 77
    if-lez p2, :cond_1

    #@12
    .line 78
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@14
    const/4 v1, 0x3

    #@15
    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    #@1b
    .line 69
    :goto_0
    return-void

    #@1c
    .line 74
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Invalid length: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 80
    :cond_1
    const-wide/16 v0, 0x0

    #@38
    iput-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    #@3a
    goto :goto_0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@2
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 4

    #@0
    .prologue
    .line 117
    iget-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;J[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;J[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .param p1, "allowPurging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 161
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    #@3
    .line 162
    .local v0, "oldValue":Z
    if-eq v0, p1, :cond_0

    #@5
    .line 163
    iget-object v2, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@7
    if-eqz p1, :cond_1

    #@9
    const/4 v1, 0x0

    #@a
    :goto_0
    invoke-static {v2, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    #@d
    .line 164
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 166
    return v0

    #@11
    .line 163
    :cond_1
    const/4 v1, 0x1

    #@12
    goto :goto_0

    #@13
    .end local v0    # "oldValue":Z
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    #@3
    .line 90
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 91
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@b
    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    #@e
    .line 88
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 4

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 105
    :try_start_0
    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    #@8
    iget v1, p0, Landroid/os/MemoryFile;->mLength:I

    #@a
    invoke-static {v2, v3, v1}, Landroid/os/MemoryFile;->native_munmap(JI)V

    #@d
    .line 106
    const-wide/16 v2, 0x0

    #@f
    iput-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 102
    :cond_0
    :goto_0
    return-void

    #@12
    .line 107
    :catch_0
    move-exception v0

    #@13
    .line 108
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    #@15
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 130
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    #@8
    const-string/jumbo v1, "MemoryFile.finalize() called while ashmem still open"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 131
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    #@11
    .line 128
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 175
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$MemoryInputStream;)V

    #@6
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    #@0
    .prologue
    .line 184
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$MemoryOutputStream;)V

    #@6
    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    #@2
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@2
    return v0
.end method

.method public readBytes([BIII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 201
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "Can\'t read from deactivated memory file."

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 203
    :cond_0
    if-ltz p3, :cond_1

    #@11
    array-length v0, p1

    #@12
    if-le p3, v0, :cond_2

    #@14
    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 203
    :cond_2
    if-ltz p4, :cond_1

    #@1c
    .line 204
    array-length v0, p1

    #@1d
    sub-int/2addr v0, p3

    #@1e
    if-gt p4, v0, :cond_1

    #@20
    .line 205
    if-ltz p2, :cond_1

    #@22
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@24
    if-gt p2, v0, :cond_1

    #@26
    .line 206
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@28
    sub-int/2addr v0, p2

    #@29
    if-gt p4, v0, :cond_1

    #@2b
    .line 209
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@2d
    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    #@2f
    iget-boolean v8, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    #@31
    move-object v4, p1

    #@32
    move v5, p2

    #@33
    move v6, p3

    #@34
    move v7, p4

    #@35
    invoke-static/range {v1 .. v8}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;J[BIIIZ)I

    #@38
    move-result v0

    #@39
    return v0
.end method

.method public writeBytes([BIII)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 225
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "Can\'t write to deactivated memory file."

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 227
    :cond_0
    if-ltz p2, :cond_1

    #@11
    array-length v0, p1

    #@12
    if-le p2, v0, :cond_2

    #@14
    .line 231
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 227
    :cond_2
    if-ltz p4, :cond_1

    #@1c
    .line 228
    array-length v0, p1

    #@1d
    sub-int/2addr v0, p2

    #@1e
    if-gt p4, v0, :cond_1

    #@20
    .line 229
    if-ltz p3, :cond_1

    #@22
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@24
    if-gt p3, v0, :cond_1

    #@26
    .line 230
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    #@28
    sub-int/2addr v0, p3

    #@29
    if-gt p4, v0, :cond_1

    #@2b
    .line 233
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    #@2d
    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    #@2f
    iget-boolean v8, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    #@31
    move-object v4, p1

    #@32
    move v5, p2

    #@33
    move v6, p3

    #@34
    move v7, p4

    #@35
    invoke-static/range {v1 .. v8}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;J[BIIIZ)V

    #@38
    .line 223
    return-void
.end method
