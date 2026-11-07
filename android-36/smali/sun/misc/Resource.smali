.class public abstract Lsun/misc/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private greylist-max-o cis:Ljava/io/InputStream;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized greylist-max-o cachedInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    if-nez v0, :cond_b

    .line 77
    invoke-virtual {p0}, Lsun/misc/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    .line 79
    .end local p0    # "this":Lsun/misc/Resource;
    :cond_b
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method public blacklist getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 161
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Lsun/nio/ByteBuffered;

    if-eqz v1, :cond_10

    .line 162
    move-object v1, v0

    check-cast v1, Lsun/nio/ByteBuffered;

    invoke-interface {v1}, Lsun/nio/ByteBuffered;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 164
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getBytes()[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 96
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 100
    .local v1, "isInterrupted":Z
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lsun/misc/Resource;->getContentLength()I

    move-result v2
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_c} :catch_81

    .line 101
    .local v2, "len":I
    nop

    .line 109
    const/4 v3, 0x0

    :try_start_e
    new-array v3, v3, [B

    .line 110
    .local v3, "b":[B
    const/4 v4, -0x1

    if-ne v2, v4, :cond_16

    const v2, 0x7fffffff

    .line 111
    :cond_16
    const/4 v4, 0x0

    .line 112
    .local v4, "pos":I
    :goto_17
    if-ge v4, v2, :cond_5a

    .line 114
    array-length v5, v3

    if-lt v4, v5, :cond_32

    .line 115
    sub-int v5, v2, v4

    array-length v6, v3

    add-int/lit16 v6, v6, 0x400

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 116
    .local v5, "bytesToRead":I
    array-length v6, v3

    add-int v7, v4, v5

    if-ge v6, v7, :cond_34

    .line 117
    add-int v6, v4, v5

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object v3, v6

    .end local v3    # "b":[B
    .local v6, "b":[B
    goto :goto_34

    .line 120
    .end local v5    # "bytesToRead":I
    .end local v6    # "b":[B
    .restart local v3    # "b":[B
    :cond_32
    array-length v5, v3
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_6d

    sub-int/2addr v5, v4

    .line 122
    .restart local v5    # "bytesToRead":I
    :cond_34
    :goto_34
    const/4 v6, 0x0

    .line 124
    .local v6, "cc":I
    :try_start_35
    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_39
    .catch Ljava/io/InterruptedIOException; {:try_start_35 .. :try_end_39} :catch_3b
    .catchall {:try_start_35 .. :try_end_39} :catchall_6d

    move v6, v7

    .line 128
    goto :goto_40

    .line 125
    :catch_3b
    move-exception v7

    .line 126
    .local v7, "iioe":Ljava/io/InterruptedIOException;
    :try_start_3c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 127
    const/4 v1, 0x1

    .line 129
    .end local v7    # "iioe":Ljava/io/InterruptedIOException;
    :goto_40
    if-gez v6, :cond_58

    .line 130
    const v7, 0x7fffffff

    if-ne v2, v7, :cond_50

    .line 133
    array-length v7, v3

    if-eq v7, v4, :cond_5a

    .line 134
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    move-object v3, v7

    goto :goto_5a

    .line 131
    :cond_50
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "Detect premature EOF"

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "isInterrupted":Z
    .end local v2    # "len":I
    .end local p0    # "this":Lsun/misc/Resource;
    throw v7
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_6d

    .line 139
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "isInterrupted":Z
    .restart local v2    # "len":I
    .restart local p0    # "this":Lsun/misc/Resource;
    :cond_58
    add-int/2addr v4, v6

    .line 140
    .end local v5    # "bytesToRead":I
    .end local v6    # "cc":I
    goto :goto_17

    .line 143
    .end local v4    # "pos":I
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/InterruptedIOException; {:try_start_5a .. :try_end_5d} :catch_60
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    .line 146
    :catch_5e
    move-exception v4

    goto :goto_62

    .line 144
    :catch_60
    move-exception v4

    .line 145
    .local v4, "iioe":Ljava/io/InterruptedIOException;
    const/4 v1, 0x1

    .line 146
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    :goto_62
    nop

    .line 148
    if-eqz v1, :cond_6c

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 152
    :cond_6c
    return-object v3

    .line 142
    .end local v3    # "b":[B
    :catchall_6d
    move-exception v3

    .line 143
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/InterruptedIOException; {:try_start_6e .. :try_end_71} :catch_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    .line 146
    :catch_72
    move-exception v4

    goto :goto_76

    .line 144
    :catch_74
    move-exception v4

    .line 145
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    const/4 v1, 0x1

    .line 146
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    :goto_76
    nop

    .line 148
    if-eqz v1, :cond_80

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 151
    :cond_80
    throw v3

    .line 102
    .end local v2    # "len":I
    :catch_81
    move-exception v2

    .line 103
    .local v2, "iioe":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 104
    const/4 v1, 0x1

    .line 105
    .end local v2    # "iioe":Ljava/io/InterruptedIOException;
    goto :goto_8
.end method

.method public blacklist getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getCodeSourceURL()Ljava/net/URL;
.end method

.method public abstract blacklist getContentLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getURL()Ljava/net/URL;
.end method
