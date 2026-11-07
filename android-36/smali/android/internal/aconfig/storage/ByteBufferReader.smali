.class public Landroid/internal/aconfig/storage/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# instance fields
.field private blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mPosition:I


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 31
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method private blacklist getArray(I[BII)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 80
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 81
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 83
    add-int v0, p3, p4

    .line 84
    .local v0, "end":I
    move v1, p3

    .local v1, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_11
    if-ge v1, v0, :cond_20

    .line 85
    iget-object v3, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, p2, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 87
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_20
    return-void
.end method

.method private blacklist nextGetIndex(I)I
    .registers 4
    .param p1, "nb"    # I

    .line 74
    iget v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 75
    .local v0, "p":I
    iget v1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 76
    return v0
.end method


# virtual methods
.method public blacklist position()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    return v0
.end method

.method public blacklist position(I)V
    .registers 2
    .param p1, "newPosition"    # I

    .line 66
    iput p1, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mPosition:I

    .line 67
    return-void
.end method

.method public blacklist readByte()I
    .registers 3

    .line 35
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public blacklist readByte(I)I
    .registers 3
    .param p1, "i"    # I

    .line 62
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public blacklist readInt()I
    .registers 3

    .line 43
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist readLong()J
    .registers 3

    .line 47
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()I
    .registers 3

    .line 39
    iget-object v0, p0, Landroid/internal/aconfig/storage/ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 5

    .line 51
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v0

    .line 52
    .local v0, "length":I
    const/16 v1, 0x400

    if-gt v0, v1, :cond_1a

    .line 56
    new-array v1, v0, [B

    .line 57
    .local v1, "bytes":[B
    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->nextGetIndex(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->getArray(I[BII)V

    .line 58
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 53
    .end local v1    # "bytes":[B
    :cond_1a
    new-instance v1, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String length exceeds maximum allowed size (1024 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
