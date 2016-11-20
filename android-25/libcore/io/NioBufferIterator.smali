.class public final Llibcore/io/NioBufferIterator;
.super Llibcore/io/BufferIterator;
.source "NioBufferIterator.java"


# instance fields
.field private final address:J

.field private position:I

.field private final size:I

.field private final swap:Z


# direct methods
.method constructor <init>(JIZ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # I
    .param p4, "swap"    # Z

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    #@3
    .line 35
    iput-wide p1, p0, Llibcore/io/NioBufferIterator;->address:J

    #@5
    .line 36
    iput p3, p0, Llibcore/io/NioBufferIterator;->size:I

    #@7
    .line 37
    iput-boolean p4, p0, Llibcore/io/NioBufferIterator;->swap:Z

    #@9
    .line 34
    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 6

    #@0
    .prologue
    .line 54
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    #@2
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@4
    int-to-long v4, v1

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-static {v2, v3}, Llibcore/io/Memory;->peekByte(J)B

    #@9
    move-result v0

    #@a
    .line 55
    .local v0, "result":B
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@10
    .line 56
    return v0
.end method

.method public readByteArray([BII)V
    .locals 4
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 49
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    #@2
    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    #@4
    int-to-long v2, v2

    #@5
    add-long/2addr v0, v2

    #@6
    invoke-static {v0, v1, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    #@9
    .line 50
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@b
    add-int/2addr v0, p3

    #@c
    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@e
    .line 48
    return-void
.end method

.method public readInt()I
    .locals 6

    #@0
    .prologue
    .line 60
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    #@2
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@4
    int-to-long v4, v1

    #@5
    add-long/2addr v2, v4

    #@6
    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    #@8
    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    #@b
    move-result v0

    #@c
    .line 61
    .local v0, "result":I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@e
    add-int/lit8 v1, v1, 0x4

    #@10
    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@12
    .line 62
    return v0
.end method

.method public readIntArray([III)V
    .locals 6
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 66
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    #@2
    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    #@4
    int-to-long v2, v2

    #@5
    add-long/2addr v0, v2

    #@6
    iget-boolean v5, p0, Llibcore/io/NioBufferIterator;->swap:Z

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    #@e
    .line 67
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@10
    mul-int/lit8 v1, p3, 0x4

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@15
    .line 65
    return-void
.end method

.method public readShort()S
    .locals 6

    #@0
    .prologue
    .line 71
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    #@2
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@4
    int-to-long v4, v1

    #@5
    add-long/2addr v2, v4

    #@6
    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    #@8
    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekShort(JZ)S

    #@b
    move-result v0

    #@c
    .line 72
    .local v0, "result":S
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@e
    add-int/lit8 v1, v1, 0x2

    #@10
    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@12
    .line 73
    return v0
.end method

.method public seek(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 41
    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    #@2
    .line 40
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 45
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    #@5
    .line 44
    return-void
.end method
