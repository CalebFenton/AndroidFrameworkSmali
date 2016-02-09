.class public final Llibcore/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/IoUtils$FileReader;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canOpenReadOnly(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 163
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    #@5
    const/4 v4, 0x0

    #@6
    invoke-interface {v2, p0, v3, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@9
    move-result-object v1

    #@a
    .line 164
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@c
    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 165
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 166
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@12
    .line 167
    .local v0, "errnoException":Landroid/system/ErrnoException;
    return v5
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    if-eqz p0, :cond_0

    #@2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 43
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@a
    invoke-interface {v1, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 40
    :cond_0
    return-void

    #@e
    .line 45
    :catch_0
    move-exception v0

    #@f
    .line 46
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 69
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 67
    :goto_0
    return-void

    #@4
    .line 70
    :catch_0
    move-exception v0

    #@5
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    #@0
    .prologue
    .line 54
    if-eqz p0, :cond_0

    #@2
    .line 56
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 53
    :cond_0
    :goto_0
    return-void

    #@6
    .line 59
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 57
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 58
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 78
    if-eqz p0, :cond_0

    #@2
    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 77
    :cond_0
    :goto_0
    return-void

    #@6
    .line 81
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static createTemporaryDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    invoke-static {}, Ljava/lang/Math;->randomIntInternal()I

    #@c
    move-result v3

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 144
    .local v0, "candidateName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@17
    const-string/jumbo v2, "java.io.tmpdir"

    #@1a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 145
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 146
    return-object v1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 128
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    #@6
    .line 129
    const/4 v2, 0x0

    #@7
    array-length v3, v1

    #@8
    :goto_0
    if-ge v2, v3, :cond_1

    #@a
    aget-object v0, v1, v2

    #@c
    .line 130
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 131
    invoke-static {v0}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    #@15
    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@18
    .line 129
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 126
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static readFileAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    #@2
    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->toByteArray()[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    #@2
    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@b
    invoke-virtual {v0, v1}, Llibcore/io/IoUtils$FileReader;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget v3, Landroid/system/OsConstants;->F_GETFL:I

    #@4
    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    #@7
    move-result v1

    #@8
    .line 92
    .local v1, "flags":I
    if-nez p1, :cond_0

    #@a
    .line 93
    sget v2, Landroid/system/OsConstants;->O_NONBLOCK:I

    #@c
    or-int/2addr v1, v2

    #@d
    .line 97
    :goto_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@f
    sget v3, Landroid/system/OsConstants;->F_SETFL:I

    #@11
    invoke-interface {v2, p0, v3, v1}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    #@14
    .line 89
    return-void

    #@15
    .line 95
    :cond_0
    sget v2, Landroid/system/OsConstants;->O_NONBLOCK:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    not-int v2, v2

    #@18
    and-int/2addr v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 98
    .end local v1    # "flags":I
    :catch_0
    move-exception v0

    #@1b
    .line 99
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@1e
    move-result-object v2

    #@1f
    throw v2
.end method

.method public static throwInterruptedIoException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 177
    new-instance v0, Ljava/io/InterruptedIOException;

    #@9
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    #@c
    throw v0
.end method
