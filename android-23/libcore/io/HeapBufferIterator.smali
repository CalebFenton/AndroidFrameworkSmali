.class public final Llibcore/io/HeapBufferIterator;
.super Llibcore/io/BufferIterator;
.source "HeapBufferIterator.java"


# instance fields
.field private final buffer:[B

.field private final byteCount:I

.field private final offset:I

.field private final order:Ljava/nio/ByteOrder;

.field private position:I


# direct methods
.method constructor <init>([BIILjava/nio/ByteOrder;)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@5
    .line 37
    iput p2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@7
    .line 38
    iput p3, p0, Llibcore/io/HeapBufferIterator;->byteCount:I

    #@9
    .line 39
    iput-object p4, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    #@b
    .line 35
    return-void
.end method

.method public static iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 84
    new-instance v0, Llibcore/io/HeapBufferIterator;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Llibcore/io/HeapBufferIterator;-><init>([BIILjava/nio/ByteOrder;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public readByte()B
    .locals 4

    #@0
    .prologue
    .line 56
    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@2
    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@4
    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@6
    add-int/2addr v2, v3

    #@7
    aget-byte v0, v1, v2

    #@9
    .line 57
    .local v0, "result":B
    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@f
    .line 58
    return v0
.end method

.method public readByteArray([BII)V
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@2
    iget v1, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@4
    iget v2, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@6
    add-int/2addr v1, v2

    #@7
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 52
    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@c
    add-int/2addr v0, p3

    #@d
    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@f
    .line 50
    return-void
.end method

.method public readInt()I
    .locals 4

    #@0
    .prologue
    .line 62
    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@2
    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@4
    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@6
    add-int/2addr v2, v3

    #@7
    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    #@9
    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@c
    move-result v0

    #@d
    .line 63
    .local v0, "result":I
    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@f
    add-int/lit8 v1, v1, 0x4

    #@11
    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@13
    .line 64
    return v0
.end method

.method public readIntArray([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 68
    mul-int/lit8 v2, p3, 0x4

    #@2
    .line 69
    .local v2, "byteCount":I
    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@4
    iget v0, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@6
    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@8
    add-int v4, v0, v1

    #@a
    iget-object v0, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    #@c
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@e
    const/4 v5, 0x4

    #@f
    move-object v0, p1

    #@10
    move v1, p2

    #@11
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@14
    .line 70
    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@16
    add-int/2addr v0, v2

    #@17
    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@19
    .line 67
    return-void
.end method

.method public readShort()S
    .locals 4

    #@0
    .prologue
    .line 74
    iget-object v1, p0, Llibcore/io/HeapBufferIterator;->buffer:[B

    #@2
    iget v2, p0, Llibcore/io/HeapBufferIterator;->offset:I

    #@4
    iget v3, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@6
    add-int/2addr v2, v3

    #@7
    iget-object v3, p0, Llibcore/io/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    #@9
    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@c
    move-result v0

    #@d
    .line 75
    .local v0, "result":S
    iget v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@f
    add-int/lit8 v1, v1, 0x2

    #@11
    iput v1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@13
    .line 76
    return v0
.end method

.method public seek(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 43
    iput p1, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@2
    .line 42
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 47
    iget v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Llibcore/io/HeapBufferIterator;->position:I

    #@5
    .line 46
    return-void
.end method
