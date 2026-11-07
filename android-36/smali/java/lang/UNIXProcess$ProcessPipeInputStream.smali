.class Ljava/lang/UNIXProcess$ProcessPipeInputStream;
.super Ljava/io/BufferedInputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeInputStream"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "fd"    # I

    .line 270
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    return-void
.end method

.method private static blacklist drainInputStream(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_4
    const/4 v0, 0x0

    .line 278
    .local v0, "n":I
    const/4 v1, 0x0

    .line 279
    .local v1, "a":[B
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    move v3, v2

    .local v3, "j":I
    if-lez v2, :cond_1f

    .line 280
    if-nez v1, :cond_12

    new-array v2, v3, [B

    goto :goto_18

    :cond_12
    add-int v2, v0, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :goto_18
    move-object v1, v2

    .line 281
    invoke-virtual {p0, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_6

    .line 283
    :cond_1f
    if-eqz v1, :cond_2a

    array-length v2, v1

    if-ne v0, v2, :cond_25

    goto :goto_2a

    :cond_25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    move-object v2, v1

    :goto_2b
    return-object v2
.end method


# virtual methods
.method declared-synchronized blacklist processExited()V
    .registers 4

    monitor-enter p0

    .line 291
    :try_start_1
    iget-object v0, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 292
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1f

    .line 293
    invoke-static {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->drainInputStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 294
    .local v1, "stragglers":[B
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 295
    if-nez v1, :cond_11

    .line 296
    sget-object v2, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    goto :goto_16

    .line 297
    .end local p0    # "this":Ljava/lang/UNIXProcess$ProcessPipeInputStream;
    :cond_11
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_16
    iput-object v2, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 298
    iget-object v2, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->buf:[B

    if-nez v2, :cond_1f

    .line 299
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_23
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    .line 303
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "stragglers":[B
    :cond_1f
    goto :goto_24

    .line 290
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 301
    :catch_23
    move-exception v0

    .line 304
    :goto_24
    monitor-exit p0

    return-void
.end method
