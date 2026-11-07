.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api count:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 64
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 74
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 75
    if-ltz p1, :cond_a

    .line 79
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 80
    return-void

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .line 94
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_a

    .line 95
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;->grow(I)V

    .line 96
    :cond_a
    return-void
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 114
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    .line 115
    .local v0, "oldCapacity":I
    shl-int/lit8 v1, v0, 0x1

    .line 116
    .local v1, "newCapacity":I
    sub-int v2, v1, p1

    if-gez v2, :cond_a

    .line 117
    move v1, p1

    .line 118
    :cond_a
    const v2, 0x7ffffff7

    sub-int v2, v1, v2

    if-lez v2, :cond_15

    .line 119
    invoke-static {p1}, Ljava/io/ByteArrayOutputStream;->hugeCapacity(I)I

    move-result v1

    .line 120
    :cond_15
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 121
    return-void
.end method

.method private static greylist-max-o hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .line 124
    if-ltz p0, :cond_d

    .line 126
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_b

    .line 127
    const v0, 0x7fffffff

    goto :goto_c

    .line 128
    :cond_b
    nop

    .line 126
    :goto_c
    return v0

    .line 125
    :cond_d
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    return-void
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 199
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 200
    monitor-exit p0

    return-void

    .line 198
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized whitelist test-api size()I
    .registers 2

    monitor-enter p0

    .line 222
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 222
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api toByteArray()[B
    .registers 3

    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 211
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 241
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 241
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString(I)Ljava/lang/String;
    .registers 6
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Ljava/lang/String;-><init>([BIII)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 326
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "hibyte":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 278
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "charsetName":Ljava/lang/String;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    monitor-enter p0

    .line 298
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 298
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I

    monitor-enter p0

    .line 137
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 138
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 139
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 140
    monitor-exit p0

    return-void

    .line 136
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "b":I
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 155
    :try_start_1
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 156
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 157
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 159
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public whitelist test-api writeBytes([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 174
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 175
    return-void
.end method

.method public declared-synchronized whitelist test-api writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 188
    monitor-exit p0

    return-void

    .line 186
    .end local p0    # "this":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
