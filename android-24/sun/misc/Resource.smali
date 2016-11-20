.class public abstract Lsun/misc/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private cis:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized cachedInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 76
    :try_start_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 77
    invoke-virtual {p0}, Lsun/misc/Resource;->getInputStream()Ljava/io/InputStream;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    #@b
    .line 79
    :cond_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    .line 161
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Lsun/nio/ByteBuffered;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 162
    check-cast v0, Lsun/nio/ByteBuffered;

    #@a
    .end local v0    # "in":Ljava/io/InputStream;
    invoke-interface {v0}, Lsun/nio/ByteBuffered;->getByteBuffer()Ljava/nio/ByteBuffer;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 164
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method public getBytes()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    #@3
    move-result-object v5

    #@4
    .line 96
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@7
    move-result v6

    #@8
    .line 100
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lsun/misc/Resource;->getContentLength()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v7

    #@c
    .line 109
    .local v7, "len":I
    const/4 v9, 0x0

    #@d
    :try_start_1
    new-array v0, v9, [B

    #@f
    .line 110
    .local v0, "b":[B
    const/4 v9, -0x1

    #@10
    if-ne v7, v9, :cond_0

    #@12
    const v7, 0x7fffffff

    #@15
    .line 111
    :cond_0
    const/4 v8, 0x0

    #@16
    .line 112
    .local v8, "pos":I
    :goto_1
    if-ge v8, v7, :cond_5

    #@18
    .line 114
    array-length v9, v0

    #@19
    if-lt v8, v9, :cond_3

    #@1b
    .line 115
    sub-int v9, v7, v8

    #@1d
    array-length v10, v0

    #@1e
    add-int/lit16 v10, v10, 0x400

    #@20
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v1

    #@24
    .line 116
    .local v1, "bytesToRead":I
    array-length v9, v0

    #@25
    add-int v10, v8, v1

    #@27
    if-ge v9, v10, :cond_1

    #@29
    .line 117
    add-int v9, v8, v1

    #@2b
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v0

    #@2f
    .line 122
    :cond_1
    :goto_2
    const/4 v2, 0x0

    #@30
    .line 124
    .local v2, "cc":I
    :try_start_2
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    move-result v2

    #@34
    .line 129
    :goto_3
    if-gez v2, :cond_7

    #@36
    .line 130
    const v9, 0x7fffffff

    #@39
    if-eq v7, v9, :cond_4

    #@3b
    .line 131
    :try_start_3
    new-instance v9, Ljava/io/EOFException;

    #@3d
    const-string/jumbo v10, "Detect premature EOF"

    #@40
    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@43
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    .line 141
    .end local v0    # "b":[B
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    .end local v8    # "pos":I
    :catchall_0
    move-exception v9

    #@45
    .line 143
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@48
    .line 148
    :goto_4
    if-eqz v6, :cond_2

    #@4a
    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4d
    move-result-object v10

    #@4e
    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    #@51
    .line 141
    :cond_2
    throw v9

    #@52
    .line 102
    .end local v7    # "len":I
    :catch_0
    move-exception v4

    #@53
    .line 103
    .local v4, "iioe":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@56
    .line 104
    const/4 v6, 0x1

    #@57
    .local v6, "isInterrupted":Z
    goto :goto_0

    #@58
    .line 120
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    .restart local v0    # "b":[B
    .restart local v7    # "len":I
    .restart local v8    # "pos":I
    :cond_3
    :try_start_5
    array-length v9, v0

    #@59
    sub-int v1, v9, v8

    #@5b
    .restart local v1    # "bytesToRead":I
    goto :goto_2

    #@5c
    .line 125
    .restart local v2    # "cc":I
    :catch_1
    move-exception v4

    #@5d
    .line 126
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@60
    .line 127
    const/4 v6, 0x1

    #@61
    .restart local v6    # "isInterrupted":Z
    goto :goto_3

    #@62
    .line 133
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    :cond_4
    array-length v9, v0

    #@63
    if-eq v9, v8, :cond_5

    #@65
    .line 134
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@68
    move-result-object v0

    #@69
    .line 143
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@6c
    .line 148
    :goto_5
    if-eqz v6, :cond_6

    #@6e
    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    #@75
    .line 152
    :cond_6
    return-object v0

    #@76
    .line 139
    .restart local v1    # "bytesToRead":I
    .restart local v2    # "cc":I
    :cond_7
    add-int/2addr v8, v2

    #@77
    goto :goto_1

    #@78
    .line 146
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    :catch_2
    move-exception v3

    #@79
    .local v3, "ignore":Ljava/io/IOException;
    goto :goto_5

    #@7a
    .line 144
    .end local v3    # "ignore":Ljava/io/IOException;
    :catch_3
    move-exception v4

    #@7b
    .line 145
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    const/4 v6, 0x1

    #@7c
    .restart local v6    # "isInterrupted":Z
    goto :goto_5

    #@7d
    .line 146
    .end local v0    # "b":[B
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    .end local v8    # "pos":I
    :catch_4
    move-exception v3

    #@7e
    .restart local v3    # "ignore":Ljava/io/IOException;
    goto :goto_4

    #@7f
    .line 144
    .end local v3    # "ignore":Ljava/io/IOException;
    :catch_5
    move-exception v4

    #@80
    .line 145
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    const/4 v6, 0x1

    #@81
    .restart local v6    # "isInterrupted":Z
    goto :goto_4
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 178
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getCodeSourceURL()Ljava/net/URL;
.end method

.method public abstract getContentLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/net/URL;
.end method
