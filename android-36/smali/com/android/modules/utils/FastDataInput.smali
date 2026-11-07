.class public Lcom/android/modules/utils/FastDataInput;
.super Ljava/lang/Object;
.source "FastDataInput.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# static fields
.field protected static final blacklist DEFAULT_BUFFER_SIZE:I = 0x8000

.field protected static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff


# instance fields
.field protected final blacklist mBuffer:[B

.field protected final blacklist mBufferCap:I

.field protected blacklist mBufferLim:I

.field protected blacklist mBufferPos:I

.field private blacklist mIn:Ljava/io/InputStream;

.field private blacklist mStringRefCount:I

.field private blacklist mStringRefs:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    .line 54
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    .line 58
    const/16 v0, 0x8

    if-lt p2, v0, :cond_24

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/modules/utils/FastDataInput;->newByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    .line 63
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferCap:I

    .line 64
    return-void

    .line 59
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist obtain(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;

    .line 76
    new-instance v0, Lcom/android/modules/utils/FastDataInput;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/android/modules/utils/FastDataInput;-><init>(Ljava/io/InputStream;I)V

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

    .line 128
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->release()V

    .line 130
    return-void
.end method

.method protected blacklist fill(I)V
    .registers 8
    .param p1, "need"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    .line 110
    .local v0, "remain":I
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    iget-object v3, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    .line 112
    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    .line 113
    sub-int/2addr p1, v0

    .line 115
    :goto_14
    if-lez p1, :cond_35

    .line 116
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferCap:I

    iget v5, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 117
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 120
    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    .line 121
    sub-int/2addr p1, v1

    .line 123
    .end local v1    # "c":I
    goto :goto_14

    .line 118
    .restart local v1    # "c":I
    :cond_2f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 124
    .end local v1    # "c":I
    :cond_35
    return-void
.end method

.method public blacklist newByteArray(I)[B
    .registers 3
    .param p1, "bufferSize"    # I

    .line 91
    new-array v0, p1, [B

    return-object v0
.end method

.method public blacklist peekByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 234
    :cond_b
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/modules/utils/FastDataInput;->readFully([BII)V

    .line 135
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferCap:I

    if-lt v0, p3, :cond_1b

    .line 142
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_e

    invoke-virtual {p0, p3}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 143
    :cond_e
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    goto :goto_42

    .line 146
    :cond_1b
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    .line 147
    .local v0, "remain":I
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    .line 149
    add-int/2addr p2, v0

    .line 150
    sub-int/2addr p3, v0

    .line 152
    :goto_2e
    if-lez p3, :cond_42

    .line 153
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 154
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 157
    add-int/2addr p2, v1

    .line 158
    sub-int/2addr p3, v1

    .line 160
    .end local v1    # "c":I
    goto :goto_2e

    .line 155
    .restart local v1    # "c":I
    :cond_3c
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 162
    .end local v0    # "remain":I
    .end local v1    # "c":I
    :cond_42
    :goto_42
    return-void
.end method

.method public whitelist test-api readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist readInternedUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readUnsignedShort()I

    move-result v0

    .line 194
    .local v0, "ref":I
    const v1, 0xffff

    if-ne v0, v1, :cond_34

    .line 195
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "s":Ljava/lang/String;
    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    if-ge v3, v1, :cond_33

    .line 200
    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    iget-object v3, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    array-length v3, v3

    if-ne v1, v3, :cond_29

    .line 201
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    iget v4, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    .line 204
    :cond_29
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    aput-object v2, v1, v3

    .line 207
    :cond_33
    return-object v2

    .line 209
    .end local v2    # "s":Ljava/lang/String;
    :cond_34
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 213
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 210
    :cond_3e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid interned string reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefs:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interned strings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v0, v2

    .line 275
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    .line 279
    .local v1, "l":I
    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public whitelist test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readUnsignedShort()I

    move-result v0

    .line 169
    .local v0, "len":I
    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferCap:I

    if-le v1, v0, :cond_22

    .line 170
    iget v1, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/modules/utils/FastDataInput;->fill(I)V

    .line 171
    :cond_12
    iget-object v1, p0, Lcom/android/modules/utils/FastDataInput;->mBuffer:[B

    new-array v2, v0, [C

    iget v3, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    invoke-static {v1, v2, v3, v0}, Lcom/android/modules/utils/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "res":Ljava/lang/String;
    iget v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    .line 173
    return-object v1

    .line 175
    .end local v1    # "res":Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/modules/utils/FastDataInput;->newByteArray(I)[B

    move-result-object v1

    .line 176
    .local v1, "tmp":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/modules/utils/FastDataInput;->readFully([BII)V

    .line 177
    new-array v3, v0, [C

    invoke-static {v1, v3, v2, v0}, Lcom/android/modules/utils/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/modules/utils/FastDataInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public blacklist release()V
    .registers 2

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    .line 86
    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    .line 87
    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    .line 88
    return-void
.end method

.method protected blacklist setInput(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 98
    iget-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    if-nez v0, :cond_14

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/modules/utils/FastDataInput;->mIn:Ljava/io/InputStream;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferPos:I

    .line 104
    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mBufferLim:I

    .line 105
    iput v0, p0, Lcom/android/modules/utils/FastDataInput;->mStringRefCount:I

    .line 106
    return-void

    .line 99
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setInput() called before calling release()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
