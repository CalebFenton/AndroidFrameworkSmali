.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field final _elementSizeShift:I

.field address:J

.field private capacity:I

.field private limit:I

.field private mark:I

.field position:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 3
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "elementSizeShift"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 185
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@7
    .line 186
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@9
    .line 206
    if-gez p4, :cond_0

    #@b
    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Negative capacity: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 208
    :cond_0
    iput p4, p0, Ljava/nio/Buffer;->capacity:I

    #@27
    .line 209
    invoke-virtual {p0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@2a
    .line 210
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@2d
    .line 211
    if-ltz p1, :cond_2

    #@2f
    .line 212
    if-le p1, p2, :cond_1

    #@31
    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "mark > position: ("

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 214
    const-string/jumbo v2, " > "

    #@46
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 214
    const-string/jumbo v2, ")"

    #@51
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 215
    :cond_1
    iput p1, p0, Ljava/nio/Buffer;->mark:I

    #@5f
    .line 217
    :cond_2
    iput p5, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@61
    .line 205
    return-void
.end method

.method static checkBounds(III)V
    .locals 3
    .param p0, "off"    # I
    .param p1, "len"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 557
    or-int v0, p0, p1

    #@2
    add-int v1, p0, p1

    #@4
    or-int/2addr v0, v1

    #@5
    add-int v1, p0, p1

    #@7
    sub-int v1, p2, v1

    #@9
    or-int/2addr v0, v1

    #@a
    if-gez v0, :cond_0

    #@c
    .line 559
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@e
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "off="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, ", len="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " out of bounds (size="

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, ")"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 559
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 556
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract array()Ljava/lang/Object;
.end method

.method public abstract arrayOffset()I
.end method

.method public final capacity()I
    .locals 1

    #@0
    .prologue
    .line 226
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@2
    return v0
.end method

.method final checkIndex(I)I
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 526
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "index="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " out of bounds (limit="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, ")"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 528
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 530
    :cond_1
    return p1
.end method

.method final checkIndex(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "nb"    # I

    #@0
    .prologue
    .line 534
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    sub-int/2addr v0, p1

    #@5
    if-le p2, v0, :cond_1

    #@7
    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "index="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " out of bounds (limit="

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ", nb="

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, ")"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 536
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 538
    :cond_1
    return p1
.end method

.method public final clear()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 328
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@3
    .line 329
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@5
    iput v0, p0, Ljava/nio/Buffer;->limit:I

    #@7
    .line 330
    const/4 v0, -0x1

    #@8
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@a
    .line 331
    return-object p0
.end method

.method final discardMark()V
    .locals 1

    #@0
    .prologue
    .line 553
    const/4 v0, -0x1

    #@1
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@3
    .line 552
    return-void
.end method

.method public final flip()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 356
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iput v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    .line 357
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@7
    .line 358
    const/4 v0, -0x1

    #@8
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@a
    .line 359
    return-object p0
.end method

.method public getElementSizeShift()I
    .locals 1

    #@0
    .prologue
    .line 569
    iget v0, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@2
    return v0
.end method

.method public abstract hasArray()Z
.end method

.method public final hasRemaining()Z
    .locals 2

    #@0
    .prologue
    .line 401
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public final limit()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@2
    return v0
.end method

.method public final limit(I)Ljava/nio/Buffer;
    .locals 2
    .param p1, "newLimit"    # I

    #@0
    .prologue
    .line 275
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 277
    :cond_1
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    #@e
    .line 278
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@10
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@12
    if-le v0, v1, :cond_2

    #@14
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@16
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@18
    .line 279
    :cond_2
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@1a
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@1c
    if-le v0, v1, :cond_3

    #@1e
    const/4 v0, -0x1

    #@1f
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@21
    .line 280
    :cond_3
    return-object p0
.end method

.method public final mark()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 289
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@4
    .line 290
    return-object p0
.end method

.method final markValue()I
    .locals 1

    #@0
    .prologue
    .line 542
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@2
    return v0
.end method

.method final nextGetIndex()I
    .locals 2

    #@0
    .prologue
    .line 486
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 487
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 488
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@12
    return v0
.end method

.method final nextGetIndex(I)I
    .locals 3
    .param p1, "nb"    # I

    #@0
    .prologue
    .line 492
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@2
    iget v2, p0, Ljava/nio/Buffer;->position:I

    #@4
    sub-int/2addr v1, v2

    #@5
    if-ge v1, p1, :cond_0

    #@7
    .line 493
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@9
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@c
    throw v1

    #@d
    .line 494
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@f
    .line 495
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@11
    add-int/2addr v1, p1

    #@12
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@14
    .line 496
    return v0
.end method

.method final nextPutIndex()I
    .locals 2

    #@0
    .prologue
    .line 507
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 508
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 509
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@12
    return v0
.end method

.method final nextPutIndex(I)I
    .locals 3
    .param p1, "nb"    # I

    #@0
    .prologue
    .line 513
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@2
    iget v2, p0, Ljava/nio/Buffer;->position:I

    #@4
    sub-int/2addr v1, v2

    #@5
    if-ge v1, p1, :cond_0

    #@7
    .line 514
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@9
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@c
    throw v1

    #@d
    .line 515
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@f
    .line 516
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@11
    add-int/2addr v1, p1

    #@12
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@14
    .line 517
    return v0
.end method

.method public final position()I
    .locals 1

    #@0
    .prologue
    .line 235
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    return v0
.end method

.method public final position(I)Ljava/nio/Buffer;
    .locals 3
    .param p1, "newPosition"    # I

    #@0
    .prologue
    .line 248
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad position "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "/"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 250
    :cond_1
    iput p1, p0, Ljava/nio/Buffer;->position:I

    #@2f
    .line 251
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@31
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@33
    if-le v0, v1, :cond_2

    #@35
    const/4 v0, -0x1

    #@36
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@38
    .line 252
    :cond_2
    return-object p0
.end method

.method public final remaining()I
    .locals 2

    #@0
    .prologue
    .line 390
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final reset()Ljava/nio/Buffer;
    .locals 2

    #@0
    .prologue
    .line 303
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@2
    .line 304
    .local v0, "m":I
    if-gez v0, :cond_0

    #@4
    .line 305
    new-instance v1, Ljava/nio/InvalidMarkException;

    #@6
    invoke-direct {v1}, Ljava/nio/InvalidMarkException;-><init>()V

    #@9
    throw v1

    #@a
    .line 306
    :cond_0
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@c
    .line 307
    return-object p0
.end method

.method public final rewind()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@3
    .line 379
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@6
    .line 380
    return-object p0
.end method

.method final truncate()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 546
    const/4 v0, -0x1

    #@2
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@4
    .line 547
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@6
    .line 548
    iput v1, p0, Ljava/nio/Buffer;->limit:I

    #@8
    .line 549
    iput v1, p0, Ljava/nio/Buffer;->capacity:I

    #@a
    .line 545
    return-void
.end method
