.class Llibcore/io/IoUtils$FileReader;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/IoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileReader"
.end annotation


# instance fields
.field private blacklist bytes:[B

.field private blacklist count:I

.field private blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist unknownLength:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    :try_start_3
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_b} :catch_2f

    .line 381
    nop

    .line 385
    :try_start_c
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 388
    .local v0, "stat":Landroid/system/StructStat;
    iget-wide v1, v0, Landroid/system/StructStat;->st_size:J

    long-to-int v1, v1

    .line 389
    .local v1, "capacity":I
    if-nez v1, :cond_1e

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1c} :catch_24

    .line 391
    const/16 v1, 0x2000

    .line 396
    .end local v0    # "stat":Landroid/system/StructStat;
    :cond_1e
    nop

    .line 398
    new-array v0, v1, [B

    iput-object v0, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    .line 399
    return-void

    .line 393
    .end local v1    # "capacity":I
    :catch_24
    move-exception v0

    .line 394
    .local v0, "exception":Landroid/system/ErrnoException;
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 395
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 379
    .end local v0    # "exception":Landroid/system/ErrnoException;
    :catch_2f
    move-exception v0

    .line 380
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    throw v0
.end method


# virtual methods
.method public blacklist readFully()Llibcore/io/IoUtils$FileReader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    array-length v0, v0

    .line 405
    .local v0, "capacity":I
    :cond_3
    :goto_3
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    iget v4, p0, Llibcore/io/IoUtils$FileReader;->count:I

    iget v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    sub-int v5, v0, v5

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    if-eqz v1, :cond_31

    .line 406
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    .line 407
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    if-ne v1, v0, :cond_3

    .line 408
    iget-boolean v1, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z

    if-eqz v1, :cond_31

    .line 411
    mul-int/lit8 v1, v0, 0x2

    .line 412
    .local v1, "newCapacity":I
    new-array v3, v1, [B

    .line 413
    .local v3, "newBytes":[B
    iget-object v4, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iput-object v3, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_2f} :catch_3a
    .catchall {:try_start_3 .. :try_end_2f} :catchall_38

    .line 415
    move v0, v1

    .line 416
    .end local v1    # "newCapacity":I
    .end local v3    # "newBytes":[B
    goto :goto_3

    .line 424
    :cond_31
    nop

    .line 428
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 424
    return-object p0

    .line 428
    .end local v2    # "read":I
    :catchall_38
    move-exception v1

    goto :goto_40

    .line 425
    :catch_3a
    move-exception v1

    .line 426
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_3b
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "capacity":I
    .end local p0    # "this":Llibcore/io/IoUtils$FileReader;
    throw v2
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 428
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "capacity":I
    .restart local p0    # "this":Llibcore/io/IoUtils$FileReader;
    :goto_40
    iget-object v2, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 429
    throw v1
.end method

.method public blacklist toByteArray()[B
    .registers 5

    .line 434
    iget v0, p0, Llibcore/io/IoUtils$FileReader;->count:I

    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 435
    iget-object v0, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    return-object v0

    .line 437
    :cond_a
    iget v0, p0, Llibcore/io/IoUtils$FileReader;->count:I

    new-array v0, v0, [B

    .line 438
    .local v0, "result":[B
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    iget v2, p0, Llibcore/io/IoUtils$FileReader;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    return-object v0
.end method

.method public blacklist toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 443
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Llibcore/io/IoUtils$FileReader;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
