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
.field private bytes:[B

.field private count:I

.field private fd:Ljava/io/FileDescriptor;

.field private unknownLength:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    :try_start_0
    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    #@5
    invoke-static {p1, v4}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@8
    move-result-object v4

    #@9
    iput-object v4, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 214
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-interface {v4, v5}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@12
    move-result-object v3

    #@13
    .line 217
    .local v3, "stat":Landroid/system/StructStat;
    iget-wide v4, v3, Landroid/system/StructStat;->st_size:J

    #@15
    long-to-int v0, v4

    #@16
    .line 218
    .local v0, "capacity":I
    if-nez v0, :cond_0

    #@18
    .line 219
    const/4 v4, 0x1

    #@19
    iput-boolean v4, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 220
    const/16 v0, 0x2000

    #@1d
    .line 227
    :cond_0
    new-array v4, v0, [B

    #@1f
    iput-object v4, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@21
    .line 199
    return-void

    #@22
    .line 208
    .end local v0    # "capacity":I
    .end local v3    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v2

    #@23
    .line 209
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    throw v2

    #@24
    .line 222
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    #@25
    .line 223
    .local v1, "exception":Landroid/system/ErrnoException;
    iget-object v4, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    #@27
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@2a
    .line 224
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2d
    move-result-object v4

    #@2e
    throw v4
.end method


# virtual methods
.method public readFully()Llibcore/io/IoUtils$FileReader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@2
    array-length v0, v5

    #@3
    .line 234
    .local v0, "capacity":I
    :cond_0
    :goto_0
    :try_start_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5
    iget-object v6, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    #@7
    iget-object v7, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@9
    iget v8, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@b
    iget v9, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@d
    sub-int v9, v0, v9

    #@f
    invoke-interface {v5, v6, v7, v8, v9}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@12
    move-result v4

    #@13
    .local v4, "read":I
    if-eqz v4, :cond_1

    #@15
    .line 235
    iget v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@17
    add-int/2addr v5, v4

    #@18
    iput v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@1a
    .line 236
    iget v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@1c
    if-ne v5, v0, :cond_0

    #@1e
    .line 237
    iget-boolean v5, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 240
    mul-int/lit8 v3, v0, 0x2

    #@24
    .line 241
    .local v3, "newCapacity":I
    new-array v2, v3, [B

    #@26
    .line 242
    .local v2, "newBytes":[B
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@28
    const/4 v6, 0x0

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2d
    .line 243
    iput-object v2, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 244
    move v0, v3

    #@30
    goto :goto_0

    #@31
    .line 257
    .end local v2    # "newBytes":[B
    .end local v3    # "newCapacity":I
    :cond_1
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    #@33
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@36
    .line 253
    return-object p0

    #@37
    .line 254
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    #@38
    .line 255
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@3b
    move-result-object v5

    #@3c
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 256
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v5

    #@3e
    .line 257
    iget-object v6, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    #@40
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@43
    .line 256
    throw v5
.end method

.method public toByteArray()[B
    .locals 4
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@3
    iget-object v2, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@5
    array-length v2, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 264
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@a
    return-object v1

    #@b
    .line 266
    :cond_0
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@d
    new-array v0, v1, [B

    #@f
    .line 267
    .local v0, "result":[B
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@11
    iget v2, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@13
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 268
    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 272
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    #@4
    iget v2, p0, Llibcore/io/IoUtils$FileReader;->count:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@a
    return-object v0
.end method
