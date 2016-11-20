.class final Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
    }
.end annotation


# static fields
.field static final chunkalloc:I = 0x400

.field static final lowbits:I = 0xa

.field static final lowmask:I = 0x3ff


# instance fields
.field chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

.field final fastArray:[I

.field lastUsed:I

.field final slotsize:I


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "slotsize"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsize:I

    #@7
    .line 49
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@9
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;-><init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V

    #@c
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@e
    .line 50
    const/16 v0, 0x400

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    #@14
    .line 51
    iput v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@16
    .line 59
    if-ge v1, p1, :cond_0

    #@18
    .line 60
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1a
    const-string/jumbo v1, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    #@1d
    const/4 v2, 0x1

    #@1e
    new-array v2, v2, [Ljava/lang/Object;

    #@20
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    aput-object v3, v2, v4

    #@26
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 61
    :cond_0
    if-le v1, p1, :cond_1

    #@30
    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "*****WARNING: ChunkedIntArray("

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, ") wasting "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    rsub-int/lit8 v2, p1, 0x4

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, " words per slot"

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 63
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@5f
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    #@61
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    #@64
    .line 57
    return-void
.end method


# virtual methods
.method appendSlot(IIII)I
    .locals 7
    .param p1, "w0"    # I
    .param p2, "w1"    # I
    .param p3, "w2"    # I
    .param p4, "w3"    # I

    #@0
    .prologue
    .line 86
    const/4 v4, 0x4

    #@1
    .line 87
    .local v4, "slotsize":I
    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@3
    add-int/lit8 v5, v5, 0x1

    #@5
    mul-int/lit8 v2, v5, 0x4

    #@7
    .line 88
    .local v2, "newoffset":I
    shr-int/lit8 v1, v2, 0xa

    #@9
    .line 89
    .local v1, "chunkpos":I
    and-int/lit16 v3, v2, 0x3ff

    #@b
    .line 92
    .local v3, "slotpos":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@d
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    #@10
    move-result v5

    #@11
    add-int/lit8 v5, v5, -0x1

    #@13
    if-le v1, v5, :cond_0

    #@15
    .line 93
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@17
    const/16 v6, 0x400

    #@19
    new-array v6, v6, [I

    #@1b
    invoke-virtual {v5, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    #@1e
    .line 94
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@20
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@23
    move-result-object v0

    #@24
    .line 95
    .local v0, "chunk":[I
    aput p1, v0, v3

    #@26
    .line 96
    add-int/lit8 v5, v3, 0x1

    #@28
    aput p2, v0, v5

    #@2a
    .line 97
    add-int/lit8 v5, v3, 0x2

    #@2c
    aput p3, v0, v5

    #@2e
    .line 98
    add-int/lit8 v5, v3, 0x3

    #@30
    aput p4, v0, v5

    #@32
    .line 100
    iget v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@34
    add-int/lit8 v5, v5, 0x1

    #@36
    iput v5, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@38
    return v5
.end method

.method discardLast()V
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@6
    .line 179
    return-void
.end method

.method readEntry(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    const/4 v3, 0x4

    #@1
    if-lt p2, v3, :cond_0

    #@3
    .line 122
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    const-string/jumbo v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    #@8
    const/4 v5, 0x0

    #@9
    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 123
    :cond_0
    mul-int/lit8 p1, p1, 0x4

    #@13
    .line 124
    shr-int/lit8 v1, p1, 0xa

    #@15
    .line 125
    .local v1, "chunkpos":I
    and-int/lit16 v2, p1, 0x3ff

    #@17
    .line 126
    .local v2, "slotpos":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@19
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@1c
    move-result-object v0

    #@1d
    .line 127
    .local v0, "chunk":[I
    add-int v3, v2, p2

    #@1f
    aget v3, v0, v3

    #@21
    return v3
.end method

.method readSlot(I[I)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "buffer"    # [I

    #@0
    .prologue
    .line 256
    mul-int/lit8 p1, p1, 0x4

    #@2
    .line 257
    shr-int/lit8 v1, p1, 0xa

    #@4
    .line 258
    .local v1, "chunkpos":I
    and-int/lit16 v2, p1, 0x3ff

    #@6
    .line 261
    .local v2, "slotpos":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@8
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    if-le v1, v3, :cond_0

    #@10
    .line 262
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@12
    const/16 v4, 0x400

    #@14
    new-array v4, v4, [I

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    #@19
    .line 263
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@1b
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@1e
    move-result-object v0

    #@1f
    .line 264
    .local v0, "chunk":[I
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x4

    #@21
    invoke-static {v0, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@24
    .line 245
    return-void
.end method

.method slotsUsed()I
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    #@2
    return v0
.end method

.method specialFind(II)I
    .locals 5
    .param p1, "startPos"    # I
    .param p2, "position"    # I

    #@0
    .prologue
    .line 141
    move v0, p1

    #@1
    .line 142
    .local v0, "ancestor":I
    :cond_0
    if-lez v0, :cond_1

    #@3
    .line 145
    mul-int/lit8 v0, v0, 0x4

    #@5
    .line 146
    shr-int/lit8 v2, v0, 0xa

    #@7
    .line 147
    .local v2, "chunkpos":I
    and-int/lit16 v3, v0, 0x3ff

    #@9
    .line 148
    .local v3, "slotpos":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@b
    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@e
    move-result-object v1

    #@f
    .line 153
    .local v1, "chunk":[I
    add-int/lit8 v4, v3, 0x1

    #@11
    aget v0, v1, v4

    #@13
    .line 155
    if-ne v0, p2, :cond_0

    #@15
    .line 159
    .end local v1    # "chunk":[I
    .end local v2    # "chunkpos":I
    .end local v3    # "slotpos":I
    :cond_1
    if-gtz v0, :cond_2

    #@17
    .line 161
    return p2

    #@18
    .line 163
    :cond_2
    const/4 v4, -0x1

    #@19
    return v4
.end method

.method writeEntry(III)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    const/4 v3, 0x4

    #@1
    if-lt p2, v3, :cond_0

    #@3
    .line 203
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    const-string/jumbo v4, "ER_OFFSET_BIGGER_THAN_SLOT"

    #@8
    const/4 v5, 0x0

    #@9
    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 204
    :cond_0
    mul-int/lit8 p1, p1, 0x4

    #@13
    .line 205
    shr-int/lit8 v1, p1, 0xa

    #@15
    .line 206
    .local v1, "chunkpos":I
    and-int/lit16 v2, p1, 0x3ff

    #@17
    .line 207
    .local v2, "slotpos":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@19
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@1c
    move-result-object v0

    #@1d
    .line 208
    .local v0, "chunk":[I
    add-int v3, v2, p2

    #@1f
    aput p3, v0, v3

    #@21
    .line 192
    return-void
.end method

.method writeSlot(IIIII)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "w0"    # I
    .param p3, "w1"    # I
    .param p4, "w2"    # I
    .param p5, "w3"    # I

    #@0
    .prologue
    .line 223
    mul-int/lit8 p1, p1, 0x4

    #@2
    .line 224
    shr-int/lit8 v1, p1, 0xa

    #@4
    .line 225
    .local v1, "chunkpos":I
    and-int/lit16 v2, p1, 0x3ff

    #@6
    .line 228
    .local v2, "slotpos":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@8
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    if-le v1, v3, :cond_0

    #@10
    .line 229
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@12
    const/16 v4, 0x400

    #@14
    new-array v4, v4, [I

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    #@19
    .line 230
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    #@1b
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    #@1e
    move-result-object v0

    #@1f
    .line 231
    .local v0, "chunk":[I
    aput p2, v0, v2

    #@21
    .line 232
    add-int/lit8 v3, v2, 0x1

    #@23
    aput p3, v0, v3

    #@25
    .line 233
    add-int/lit8 v3, v2, 0x2

    #@27
    aput p4, v0, v3

    #@29
    .line 234
    add-int/lit8 v3, v2, 0x3

    #@2b
    aput p5, v0, v3

    #@2d
    .line 221
    return-void
.end method
