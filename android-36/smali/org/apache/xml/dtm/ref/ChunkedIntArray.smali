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
.field static final greylist chunkalloc:I = 0x400

.field static final greylist lowbits:I = 0xa

.field static final greylist lowmask:I = 0x3ff


# instance fields
.field greylist chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

.field final greylist fastArray:[I

.field greylist lastUsed:I

.field final greylist slotsize:I


# direct methods
.method constructor greylist <init>(I)V
    .registers 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 42
    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsize:I

    .line 49
    new-instance v1, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;-><init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v1, 0x400

    .line 50
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->fastArray:[I

    const/4 v2, 0x0

    .line 51
    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    if-lt v0, p1, :cond_44

    if-le v0, p1, :cond_3e

    .line 62
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****WARNING: ChunkedIntArray("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") wasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " words per slot"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_3e
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    return-void

    .line 60
    :cond_44
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    invoke-static {v0, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method greylist appendSlot(IIII)I
    .registers 9

    .line 87
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v0, 0xa

    and-int/lit16 v0, v0, 0x3ff

    .line 92
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1d

    .line 93
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v3, 0x400

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 94
    :cond_1d
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v1

    .line 95
    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 96
    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    .line 97
    aput p3, v1, p1

    add-int/lit8 v0, v0, 0x3

    .line 98
    aput p4, v1, v0

    .line 100
    iget p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return p1
.end method

.method greylist discardLast()V
    .registers 2

    .line 181
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return-void
.end method

.method greylist readEntry(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_12

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    .line 126
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    add-int/2addr p1, p2

    .line 127
    aget p0, p0, p1

    return p0

    .line 122
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist readSlot(I[I)V
    .registers 7

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    .line 261
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_19

    .line 262
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v3, 0x400

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 263
    :cond_19
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 264
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method greylist slotsUsed()I
    .registers 1

    .line 171
    iget p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->lastUsed:I

    return p0
.end method

.method greylist specialFind(II)I
    .registers 5

    :cond_0
    if-lez p1, :cond_14

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    .line 148
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 153
    aget p1, v0, p1

    if-ne p1, p2, :cond_0

    :cond_14
    if-gtz p1, :cond_17

    return p2

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method greylist writeEntry(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_12

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    .line 207
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    add-int/2addr p1, p2

    .line 208
    aput p3, p0, p1

    return-void

    .line 203
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist writeSlot(IIIII)V
    .registers 9

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    .line 228
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_19

    .line 229
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v2, 0x400

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    .line 230
    :cond_19
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->chunks:Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    .line 231
    aput p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    .line 232
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    .line 233
    aput p4, p0, p2

    add-int/lit8 p1, p1, 0x3

    .line 234
    aput p5, p0, p1

    return-void
.end method
