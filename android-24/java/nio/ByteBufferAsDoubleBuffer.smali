.class Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final bb:Ljava/nio/ByteBuffer;

.field protected final offset:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    #@b
    .line 30
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;-><init>(IIII)V

    #@3
    .line 41
    iput-object p1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@5
    .line 42
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    #@7
    iput-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    #@9
    .line 50
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 51
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    #@f
    int-to-long v2, p6

    #@10
    add-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->address:J

    #@13
    .line 53
    :cond_0
    iput-object p7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    #@15
    .line 54
    iput p6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    #@17
    .line 39
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@7
    move-result-object v1

    #@8
    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    #@b
    move-result v2

    #@c
    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    #@f
    move-result v3

    #@10
    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    #@13
    move-result v4

    #@14
    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    #@17
    move-result v5

    #@18
    .line 83
    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    #@1a
    .line 84
    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    #@1c
    .line 78
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@1f
    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 9

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 132
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@7
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@a
    throw v0

    #@b
    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    #@e
    move-result v7

    #@f
    .line 135
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    #@12
    move-result v6

    #@13
    .line 136
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    #@15
    if-nez v0, :cond_2

    #@17
    if-gt v7, v6, :cond_1

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_0
    if-nez v0, :cond_2

    #@1c
    new-instance v0, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v0

    #@22
    :cond_1
    move v0, v1

    #@23
    goto :goto_0

    #@24
    .line 137
    :cond_2
    if-gt v7, v6, :cond_3

    #@26
    sub-int v8, v6, v7

    #@28
    .line 138
    .local v8, "rem":I
    :goto_1
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@2a
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@2c
    if-nez v0, :cond_4

    #@2e
    .line 139
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@37
    move-result v2

    #@38
    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@41
    move-result v1

    #@42
    shl-int/lit8 v4, v8, 0x3

    #@44
    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@47
    .line 143
    :goto_2
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsDoubleBuffer;->position(I)Ljava/nio/Buffer;

    #@4a
    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    #@4d
    move-result v0

    #@4e
    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    #@51
    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->discardMark()V

    #@54
    .line 146
    return-object p0

    #@55
    .line 137
    .end local v8    # "rem":I
    :cond_3
    const/4 v8, 0x0

    #@56
    .restart local v8    # "rem":I
    goto :goto_1

    #@57
    .line 141
    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@5a
    move-result v1

    #@5b
    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@5e
    move-result v3

    #@5f
    shl-int/lit8 v0, v8, 0x3

    #@61
    int-to-long v4, v0

    #@62
    move-object v0, p0

    #@63
    move-object v2, p0

    #@64
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    #@67
    goto :goto_2
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@4
    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 73
    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    #@16
    .line 74
    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    #@18
    .line 68
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@1b
    return-object v0
.end method

.method public get()D
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextGetIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->get(I)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDoubleUnchecked(I)D

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 100
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    #@4
    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 102
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 103
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@12
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[DII)V

    #@1b
    .line 104
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@1d
    add-int/2addr v0, p3

    #@1e
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@20
    .line 105
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 154
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 88
    shl-int/lit8 v0, p1, 0x3

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    #@2
    return-object v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 1
    .param p1, "x"    # D

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextPutIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    #@7
    .line 110
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 117
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDoubleUnchecked(ID)V

    #@17
    .line 118
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 122
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkBounds(III)V

    #@4
    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 124
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 125
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@12
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[DII)V

    #@1b
    .line 126
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@1d
    add-int/2addr v0, p3

    #@1e
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@20
    .line 127
    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    #@5
    move-result v9

    #@6
    .line 59
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    #@9
    move-result v8

    #@a
    .line 60
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    #@c
    if-nez v1, :cond_1

    #@e
    if-gt v9, v8, :cond_0

    #@10
    move v1, v0

    #@11
    :goto_0
    if-nez v1, :cond_1

    #@13
    new-instance v0, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v0

    #@19
    :cond_0
    move v1, v3

    #@1a
    goto :goto_0

    #@1b
    .line 61
    :cond_1
    if-gt v9, v8, :cond_2

    #@1d
    sub-int v4, v8, v9

    #@1f
    .line 62
    .local v4, "rem":I
    :goto_1
    shl-int/lit8 v1, v9, 0x3

    #@21
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->offset:I

    #@23
    add-int v6, v1, v2

    #@25
    .line 63
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/ByteBufferAsDoubleBuffer;->-assertionsDisabled:Z

    #@27
    if-nez v1, :cond_4

    #@29
    if-ltz v6, :cond_3

    #@2b
    :goto_2
    if-nez v0, :cond_4

    #@2d
    new-instance v0, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@32
    throw v0

    #@33
    .line 61
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_2
    const/4 v4, 0x0

    #@34
    .restart local v4    # "rem":I
    goto :goto_1

    #@35
    .restart local v6    # "off":I
    :cond_3
    move v0, v3

    #@36
    .line 63
    goto :goto_2

    #@37
    .line 64
    :cond_4
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@39
    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    #@3b
    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    #@3d
    const/4 v2, -0x1

    #@3e
    move v5, v4

    #@3f
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@42
    return-object v0
.end method
