.class public Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;
.super Ljava/lang/Object;
.source "FastDataOutput.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field protected static final blacklist DEFAULT_BUFFER_SIZE:I = 0x8000

.field protected static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff


# instance fields
.field protected final blacklist mBuffer:[B

.field protected final blacklist mBufferCap:I

.field protected blacklist mBufferPos:I

.field private blacklist mOut:Ljava/io/OutputStream;

.field private final blacklist mStringRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    .line 55
    const/16 v0, 0x8

    if-lt p2, v0, :cond_1d

    .line 59
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->newByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    .line 60
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    array-length v0, v0

    iput v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    .line 63
    return-void

    .line 56
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist obtain(Ljava/io/OutputStream;)Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 75
    new-instance v0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 125
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->release()V

    .line 126
    return-void
.end method

.method protected blacklist drain()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    if-lez v0, :cond_10

    .line 111
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    .line 114
    :cond_10
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 119
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 120
    return-void
.end method

.method public blacklist newByteArray(I)[B
    .registers 3
    .param p1, "bufferSize"    # I

    .line 93
    new-array v0, p1, [B

    return-object v0
.end method

.method public blacklist release()V
    .registers 3

    .line 83
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    if-gtz v0, :cond_10

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 90
    return-void

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lingering data, call flush() before releasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setOutput(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 100
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    if-nez v0, :cond_15

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    .line 106
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    return-void

    .line 101
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setOutput() called before calling release()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 131
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->write([BII)V

    .line 136
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    if-ge v0, p3, :cond_d

    .line 141
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 142
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_23

    .line 144
    :cond_d
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_17

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 145
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    .line 148
    :goto_23
    return-void
.end method

.method public whitelist test-api writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 203
    return-void
.end method

.method public whitelist test-api writeByte(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 208
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    return-void
.end method

.method public whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeChar(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 221
    return-void
.end method

.method public whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeLong(J)V

    .line 255
    return-void
.end method

.method public whitelist test-api writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeInt(I)V

    .line 250
    return-void
.end method

.method public whitelist test-api writeInt(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 226
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    return-void
.end method

.method public blacklist writeInternedUTF(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, "ref":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeShort(I)V

    goto :goto_30

    .line 188
    :cond_12
    const v1, 0xffff

    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_30

    .line 195
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_30
    :goto_30
    return-void
.end method

.method public whitelist test-api writeLong(J)V
    .registers 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 235
    :cond_c
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 236
    .local v0, "i":I
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 237
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 238
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 239
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 240
    long-to-int v0, p1

    .line 241
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 242
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 243
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 244
    iget-object v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 245
    return-void
.end method

.method public whitelist test-api writeShort(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 214
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 215
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v1, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 216
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/connectivity/com/android/modules/utils/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 153
    .local v1, "len":I
    const v2, 0xffff

    if-gt v1, v2, :cond_3d

    .line 159
    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    add-int/lit8 v3, v1, 0x2

    if-lt v2, v3, :cond_2d

    .line 160
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferCap:I

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_1d

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->drain()V

    .line 161
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 162
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBuffer:[B

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    invoke-static {v0, v2, p1}, Landroid/net/connectivity/com/android/modules/utils/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 163
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->mBufferPos:I

    goto :goto_3c

    .line 165
    :cond_2d
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->newByteArray(I)[B

    move-result-object v2

    .line 166
    .local v2, "tmp":[B
    invoke-static {v2, v0, p1}, Landroid/net/connectivity/com/android/modules/utils/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 167
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 168
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/connectivity/com/android/modules/utils/FastDataOutput;->write([BII)V

    .line 170
    .end local v2    # "tmp":[B
    :goto_3c
    return-void

    .line 154
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
