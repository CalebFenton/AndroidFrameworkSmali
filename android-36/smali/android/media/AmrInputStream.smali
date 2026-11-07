.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final greylist-max-o SAMPLES_PER_FRAME:I = 0xa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final greylist-max-o mBuf:[B

.field private greylist-max-o mBufIn:I

.field private greylist-max-o mBufOut:I

.field greylist-max-o mCodec:Landroid/media/MediaCodec;

.field greylist-max-o mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mOneByte:[B

.field greylist-max-o mSawInputEOS:Z

.field greylist-max-o mSawOutputEOS:Z


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 49
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 52
    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 59
    const-string v2, "AmrInputStream"

    const-string v3, "@@@@ AmrInputStream is not a public API @@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 62
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 63
    .local v2, "format":Landroid/media/MediaFormat;
    const-string v3, "mime"

    const-string v4, "audio/3gpp"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "sample-rate"

    const/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string v3, "channel-count"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    const-string v3, "bitrate"

    const/16 v4, 0x2fa8

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    new-instance v3, Landroid/media/MediaCodecList;

    invoke-direct {v3, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 69
    .local v3, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v3, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 72
    const/4 v4, 0x0

    :try_start_47
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 73
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 77
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_57} :catch_58

    .line 83
    goto :goto_64

    .line 78
    :catch_58
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_62

    .line 80
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 82
    :cond_62
    iput-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :cond_64
    :goto_64
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 181
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    .line 184
    :cond_a
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 186
    :try_start_c
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_15

    .line 187
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1a

    .line 190
    :cond_15
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    nop

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :catchall_1a
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    throw v1

    .line 184
    :catchall_1e
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 186
    :try_start_21
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2a

    .line 187
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 190
    :cond_2a
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    nop

    .line 192
    throw v1

    .line 190
    :catchall_2e
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 191
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    .line 198
    const-string v0, "AmrInputStream"

    const-string v1, "AmrInputStream wasn\'t closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 201
    :cond_10
    return-void
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .line 94
    .local v0, "rtn":I
    if-ne v0, v2, :cond_11

    iget-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 18
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_b5

    .line 114
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_82

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-nez v0, :cond_82

    .line 116
    iput v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 117
    iput v3, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 120
    :goto_14
    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    const/4 v1, 0x1

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    if-nez v0, :cond_57

    .line 121
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 122
    .local v8, "index":I
    if-gez v8, :cond_25

    .line 124
    goto :goto_57

    .line 127
    :cond_25
    const/4 v0, 0x0

    move v10, v0

    .local v10, "numRead":I
    :goto_27
    const/16 v0, 0x140

    if-ge v10, v0, :cond_3c

    .line 128
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v6, v10, 0x140

    invoke-virtual {v0, v5, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 129
    .local v0, "n":I
    if-ne v0, v2, :cond_3a

    .line 130
    iput-boolean v1, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    .line 131
    goto :goto_3c

    .line 133
    :cond_3a
    add-int/2addr v10, v0

    .line 134
    .end local v0    # "n":I
    goto :goto_27

    .line 135
    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-virtual {v0, v1, v3, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v7, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 141
    iget-boolean v1, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v1, :cond_4f

    move v13, v4

    goto :goto_50

    :cond_4f
    move v13, v3

    .line 137
    :goto_50
    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 143
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "index":I
    .end local v10    # "numRead":I
    goto :goto_14

    .line 146
    :cond_57
    :goto_57
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v7, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v7, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 147
    .local v0, "index":I
    if-ltz v0, :cond_82

    .line 148
    iget-object v5, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v5, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 149
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 150
    .local v5, "out":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/AmrInputStream;->mBufIn:I

    invoke-virtual {v5, v6, v3, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v6, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 152
    iget-object v6, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_82

    .line 153
    iput-boolean v1, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    .line 158
    .end local v0    # "index":I
    .end local v5    # "out":Ljava/nio/ByteBuffer;
    :cond_82
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v0, v1, :cond_a7

    .line 160
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    move/from16 v1, p3

    if-le v1, v0, :cond_97

    .line 161
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v0, v2

    .end local p3    # "length":I
    .local v0, "length":I
    goto :goto_98

    .line 160
    .end local v0    # "length":I
    .restart local p3    # "length":I
    :cond_97
    move v0, v1

    .line 163
    .end local p3    # "length":I
    .restart local v0    # "length":I
    :goto_98
    iget-object v1, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    move/from16 v4, p2

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 165
    return v0

    .line 168
    .end local v0    # "length":I
    .restart local p3    # "length":I
    :cond_a7
    move/from16 v4, p2

    move/from16 v1, p3

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz v0, :cond_b4

    .line 170
    return v2

    .line 174
    :cond_b4
    return v3

    .line 111
    :cond_b5
    move/from16 v4, p2

    move/from16 v1, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not open"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
