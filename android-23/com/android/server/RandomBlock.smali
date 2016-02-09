.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/16 v0, 0x200

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    #@9
    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    #@0
    .prologue
    .line 93
    if-nez p0, :cond_0

    #@2
    .line 94
    return-void

    #@3
    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 91
    :goto_0
    return-void

    #@7
    .line 97
    :catch_0
    move-exception v0

    #@8
    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "RandomBlock"

    #@b
    const-string/jumbo v2, "IOException thrown while closing Closeable"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    .line 45
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@3
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 46
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9
    .end local v0    # "stream":Ljava/io/InputStream;
    move-result-object v2

    #@a
    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    #@d
    .line 46
    return-object v2

    #@e
    .line 47
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    #@f
    .line 48
    .end local v0    # "stream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    #@12
    .line 47
    throw v2

    #@13
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    #@14
    move-object v0, v1

    #@15
    .end local v1    # "stream":Ljava/io/InputStream;
    .local v0, "stream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    new-instance v1, Lcom/android/server/RandomBlock;

    #@2
    invoke-direct {v1}, Lcom/android/server/RandomBlock;-><init>()V

    #@5
    .line 54
    .local v1, "retval":Lcom/android/server/RandomBlock;
    const/4 v2, 0x0

    #@6
    .line 55
    .local v2, "total":I
    :goto_0
    const/16 v3, 0x200

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 56
    iget-object v3, v1, Lcom/android/server/RandomBlock;->block:[B

    #@c
    rsub-int v4, v2, 0x200

    #@e
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    #@11
    move-result v0

    #@12
    .line 57
    .local v0, "result":I
    const/4 v3, -0x1

    #@13
    if-ne v0, v3, :cond_0

    #@15
    .line 58
    new-instance v3, Ljava/io/EOFException;

    #@17
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@1a
    throw v3

    #@1b
    .line 60
    :cond_0
    add-int/2addr v2, v0

    #@1c
    goto :goto_0

    #@1d
    .line 62
    .end local v0    # "result":I
    :cond_1
    return-object v1
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    #@2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    #@5
    .line 87
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p0, "f"    # Ljava/io/RandomAccessFile;

    #@0
    .prologue
    .line 79
    const-wide/16 v2, 0x200

    #@2
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 77
    :goto_0
    return-void

    #@6
    .line 80
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    .line 69
    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    #@3
    if-eqz p2, :cond_0

    #@5
    const-string/jumbo v2, "rws"

    #@8
    :goto_0
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 70
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    #@e
    .line 71
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@11
    .line 73
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    #@14
    .line 65
    return-void

    #@15
    .line 69
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :cond_0
    :try_start_2
    const-string/jumbo v2, "rw"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 72
    :catchall_0
    move-exception v2

    #@1a
    .line 73
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    :goto_1
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    #@1d
    .line 72
    throw v2

    #@1e
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    #@1f
    move-object v0, v1

    #@20
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v0, "out":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
