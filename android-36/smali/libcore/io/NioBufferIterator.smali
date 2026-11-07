.class public final Llibcore/io/NioBufferIterator;
.super Llibcore/io/BufferIterator;
.source "NioBufferIterator.java"


# instance fields
.field private final blacklist address:J

.field private final blacklist file:Llibcore/io/MemoryMappedFile;

.field private final blacklist length:I

.field private blacklist position:I

.field private final blacklist swap:Z


# direct methods
.method constructor blacklist <init>(Llibcore/io/MemoryMappedFile;JIZ)V
    .registers 12
    .param p1, "file"    # Llibcore/io/MemoryMappedFile;
    .param p2, "address"    # J
    .param p4, "length"    # I
    .param p5, "swap"    # Z

    .line 34
    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    .line 35
    invoke-virtual {p1}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 37
    iput-object p1, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    .line 38
    iput-wide p2, p0, Llibcore/io/NioBufferIterator;->address:J

    .line 40
    if-ltz p4, :cond_3c

    .line 43
    const-wide/16 v0, -0x1

    .line 44
    .local v0, "MAX_VALID_ADDRESS":J
    const-wide/16 v2, -0x1

    int-to-long v4, p4

    sub-long/2addr v2, v4

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gtz v2, :cond_1d

    .line 48
    iput p4, p0, Llibcore/io/NioBufferIterator;->length:I

    .line 50
    iput-boolean p5, p0, Llibcore/io/NioBufferIterator;->swap:Z

    .line 51
    return-void

    .line 45
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " would overflow 64-bit address space"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    .end local v0    # "MAX_VALID_ADDRESS":J
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkArrayBounds(III)V
    .registers 8
    .param p0, "arrayOffset"    # I
    .param p1, "arrayLength"    # I
    .param p2, "count"    # I

    .line 139
    const-string v0, ", count="

    if-ltz p0, :cond_38

    if-ltz p2, :cond_38

    .line 145
    add-int v1, p0, p2

    .line 146
    .local v1, "targetPos":I
    if-ltz v1, :cond_d

    if-gt v1, p1, :cond_d

    .line 151
    return-void

    .line 147
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write outside range: arrayLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arrayOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "targetPos":I
    :cond_38
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid args: arrayOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist checkReadBounds(III)V
    .registers 8
    .param p0, "position"    # I
    .param p1, "length"    # I
    .param p2, "byteCount"    # I

    .line 125
    const-string v0, ", byteCount="

    if-ltz p0, :cond_38

    if-ltz p2, :cond_38

    .line 130
    add-int v1, p0, p2

    .line 131
    .local v1, "finalReadPos":I
    if-ltz v1, :cond_d

    if-gt v1, p1, :cond_d

    .line 136
    return-void

    .line 132
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read outside range: position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v1    # "finalReadPos":I
    :cond_38
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid read args: position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist pos()I
    .registers 2

    .line 65
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    return v0
.end method

.method public blacklist readByte()B
    .registers 6

    .line 79
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 80
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->length:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 81
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v3, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    .line 82
    .local v0, "result":B
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 83
    return v0
.end method

.method public blacklist readByteArray([BII)V
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "arrayOffset"    # I
    .param p3, "byteCount"    # I

    .line 70
    array-length v0, p1

    invoke-static {p2, v0, p3}, Llibcore/io/NioBufferIterator;->checkArrayBounds(III)V

    .line 71
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 72
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->length:I

    invoke-static {v0, v1, p3}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 73
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 74
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 75
    return-void
.end method

.method public blacklist readInt()I
    .registers 6

    .line 88
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 89
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->length:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 90
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v3, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget-boolean v3, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v0, v1, v3}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 91
    .local v0, "result":I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 92
    return v0
.end method

.method public blacklist readIntArray([III)V
    .registers 15
    .param p1, "ints"    # [I
    .param p2, "arrayOffset"    # I
    .param p3, "intCount"    # I

    .line 97
    array-length v0, p1

    invoke-static {p2, v0, p3}, Llibcore/io/NioBufferIterator;->checkArrayBounds(III)V

    .line 98
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 99
    mul-int/lit8 v0, p3, 0x4

    .line 100
    .local v0, "byteCount":I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->length:I

    invoke-static {v1, v2, v0}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 101
    iget-wide v1, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v3, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v3, v3

    add-long v5, v1, v3

    iget-boolean v10, p0, Llibcore/io/NioBufferIterator;->swap:Z

    move-object v7, p1

    move v8, p2

    move v9, p3

    .end local p1    # "ints":[I
    .end local p2    # "arrayOffset":I
    .end local p3    # "intCount":I
    .local v7, "ints":[I
    .local v8, "arrayOffset":I
    .local v9, "intCount":I
    invoke-static/range {v5 .. v10}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 102
    iget p1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 103
    return-void
.end method

.method public blacklist readLongArray([JII)V
    .registers 15
    .param p1, "longs"    # [J
    .param p2, "arrayOffset"    # I
    .param p3, "longCount"    # I

    .line 107
    array-length v0, p1

    invoke-static {p2, v0, p3}, Llibcore/io/NioBufferIterator;->checkArrayBounds(III)V

    .line 108
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 109
    mul-int/lit8 v0, p3, 0x8

    .line 110
    .local v0, "byteCount":I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v2, p0, Llibcore/io/NioBufferIterator;->length:I

    invoke-static {v1, v2, v0}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 111
    iget-wide v1, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v3, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v3, v3

    add-long v5, v1, v3

    iget-boolean v10, p0, Llibcore/io/NioBufferIterator;->swap:Z

    move-object v7, p1

    move v8, p2

    move v9, p3

    .end local p1    # "longs":[J
    .end local p2    # "arrayOffset":I
    .end local p3    # "longCount":I
    .local v7, "longs":[J
    .local v8, "arrayOffset":I
    .local v9, "longCount":I
    invoke-static/range {v5 .. v10}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 112
    iget p1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 113
    return-void
.end method

.method public blacklist readShort()S
    .registers 6

    .line 117
    iget-object v0, p0, Llibcore/io/NioBufferIterator;->file:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 118
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    iget v1, p0, Llibcore/io/NioBufferIterator;->length:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Llibcore/io/NioBufferIterator;->checkReadBounds(III)V

    .line 119
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v3, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget-boolean v3, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v0, v1, v3}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    .line 120
    .local v0, "result":S
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 121
    return v0
.end method

.method public blacklist seek(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 55
    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 56
    return-void
.end method

.method public blacklist skip(I)V
    .registers 3
    .param p1, "byteCount"    # I

    .line 60
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 61
    return-void
.end method
