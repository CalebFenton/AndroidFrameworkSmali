.class Ljava/nio/ByteBufferAsFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "ByteBufferAsFloatBuffer.java"


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
    const-class v0, Ljava/nio/ByteBufferAsFloatBuffer;

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
    sput-boolean v0, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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
    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/FloatBuffer;-><init>(IIII)V

    #@3
    .line 40
    iput-object p1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@5
    .line 41
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    #@7
    iput-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    #@9
    .line 49
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 50
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    #@f
    int-to-long v2, p6

    #@10
    add-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->address:J

    #@13
    .line 52
    :cond_0
    iput-object p7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    #@15
    .line 53
    iput p6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    #@17
    .line 38
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@7
    move-result-object v1

    #@8
    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    #@b
    move-result v2

    #@c
    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    #@f
    move-result v3

    #@10
    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    #@13
    move-result v4

    #@14
    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    #@17
    move-result v5

    #@18
    .line 82
    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    #@1a
    .line 83
    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    #@1c
    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@1f
    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 9

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 131
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@7
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@a
    throw v0

    #@b
    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    #@e
    move-result v7

    #@f
    .line 134
    .local v7, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    #@12
    move-result v6

    #@13
    .line 135
    .local v6, "lim":I
    sget-boolean v0, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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
    .line 136
    :cond_2
    if-gt v7, v6, :cond_3

    #@26
    sub-int v8, v6, v7

    #@28
    .line 137
    .local v8, "rem":I
    :goto_1
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@2a
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@2c
    if-nez v0, :cond_4

    #@2e
    .line 138
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@37
    move-result v2

    #@38
    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@41
    move-result v1

    #@42
    shl-int/lit8 v4, v8, 0x2

    #@44
    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@47
    .line 142
    :goto_2
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsFloatBuffer;->position(I)Ljava/nio/Buffer;

    #@4a
    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    #@4d
    move-result v0

    #@4e
    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit(I)Ljava/nio/Buffer;

    #@51
    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->discardMark()V

    #@54
    .line 145
    return-object p0

    #@55
    .line 136
    .end local v8    # "rem":I
    :cond_3
    const/4 v8, 0x0

    #@56
    .restart local v8    # "rem":I
    goto :goto_1

    #@57
    .line 140
    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@5a
    move-result v1

    #@5b
    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@5e
    move-result v3

    #@5f
    shl-int/lit8 v0, v8, 0x2

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

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@4
    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 72
    iget v6, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    #@16
    .line 73
    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    #@18
    .line 67
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@1b
    return-object v0
.end method

.method public get()F
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextGetIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->get(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloatUnchecked(I)F

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 99
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    #@4
    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 101
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 102
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@12
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[FII)V

    #@1b
    .line 103
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@1d
    add-int/2addr v0, p3

    #@1e
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@20
    .line 104
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

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
    .line 153
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 87
    shl-int/lit8 v0, p1, 0x2

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    #@2
    return-object v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 1
    .param p1, "x"    # F

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->nextPutIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    #@7
    .line 109
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 114
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 116
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putFloatUnchecked(IF)V

    #@17
    .line 117
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 121
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsFloatBuffer;->checkBounds(III)V

    #@4
    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 123
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 124
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@12
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;->ix(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[FII)V

    #@1b
    .line 125
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@1d
    add-int/2addr v0, p3

    #@1e
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@20
    .line 126
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->position()I

    #@5
    move-result v9

    #@6
    .line 58
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->limit()I

    #@9
    move-result v8

    #@a
    .line 59
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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
    .line 60
    :cond_1
    if-gt v9, v8, :cond_2

    #@1d
    sub-int v4, v8, v9

    #@1f
    .line 61
    .local v4, "rem":I
    :goto_1
    shl-int/lit8 v1, v9, 0x2

    #@21
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->offset:I

    #@23
    add-int v6, v1, v2

    #@25
    .line 62
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/ByteBufferAsFloatBuffer;->-assertionsDisabled:Z

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
    .line 60
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
    .line 62
    goto :goto_2

    #@37
    .line 63
    :cond_4
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@39
    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->bb:Ljava/nio/ByteBuffer;

    #@3b
    iget-object v7, p0, Ljava/nio/ByteBufferAsFloatBuffer;->order:Ljava/nio/ByteOrder;

    #@3d
    const/4 v2, -0x1

    #@3e
    move v5, v4

    #@3f
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@42
    return-object v0
.end method
