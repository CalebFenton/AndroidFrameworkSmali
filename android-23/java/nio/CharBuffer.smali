.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/Readable;"
    }
.end annotation


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    #@0
    .prologue
    .line 141
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 140
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .locals 3
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 51
    if-gez p0, :cond_0

    #@2
    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "capacity < 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 54
    :cond_0
    new-instance v0, Ljava/nio/CharArrayBuffer;

    #@1e
    new-array v1, p0, [C

    #@20
    invoke-direct {v0, v1}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    #@23
    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1
    .param p0, "chseq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    #@5
    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 131
    if-ltz p1, :cond_0

    #@2
    if-ge p2, p1, :cond_1

    #@4
    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "cs.length()="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ", start="

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, ", end="

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 131
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3b
    move-result v1

    #@3c
    if-gt p2, v1, :cond_0

    #@3e
    .line 134
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    #@40
    invoke-direct {v0, p0}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    #@43
    .line 135
    .local v0, "result":Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/CharBuffer;->position:I

    #@45
    .line 136
    iput p2, v0, Ljava/nio/CharBuffer;->limit:I

    #@47
    .line 137
    return-object v0
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C

    #@0
    .prologue
    .line 68
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "charCount"    # I

    #@0
    .prologue
    .line 90
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 91
    new-instance v0, Ljava/nio/CharArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/CharArrayBuffer;-><init>([C)V

    #@9
    .line 92
    .local v0, "buf":Ljava/nio/CharBuffer;
    iput p1, v0, Ljava/nio/CharBuffer;->position:I

    #@b
    .line 93
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/CharBuffer;->limit:I

    #@f
    .line 94
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 696
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 649
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 670
    if-eqz p1, :cond_0

    #@2
    .line 671
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 673
    :cond_0
    const-string/jumbo v0, "null"

    #@e
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 697
    if-nez p1, :cond_0

    #@2
    .line 698
    const-string/jumbo p1, "null"

    #@5
    .line 700
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    .line 701
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_1

    #@f
    .line 702
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 704
    :cond_1
    return-object p0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[C
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArray()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 172
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "index="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ", remaining()="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 175
    :cond_1
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    #@33
    add-int/2addr v0, p1

    #@34
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    #@37
    move-result v0

    #@38
    return v0
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
    check-cast p1, Ljava/nio/CharBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v5

    #@4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v6

    #@8
    if-ge v5, v6, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 206
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/CharBuffer;->position:I

    #@10
    .line 207
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/CharBuffer;->position:I

    #@12
    .line 209
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    #@14
    .line 210
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    #@17
    move-result v3

    #@18
    .line 211
    .local v3, "thisByte":C
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    #@1b
    move-result v1

    #@1c
    .line 212
    .local v1, "otherByte":C
    if-eq v3, v1, :cond_2

    #@1e
    .line 213
    if-ge v3, v1, :cond_1

    #@20
    const/4 v5, -0x1

    #@21
    :goto_2
    return v5

    #@22
    .line 205
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherByte":C
    .end local v2    # "otherPos":I
    .end local v3    # "thisByte":C
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@27
    .line 213
    .restart local v1    # "otherByte":C
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":C
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    #@28
    goto :goto_2

    #@29
    .line 215
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    .line 216
    add-int/lit8 v2, v2, 0x1

    #@2d
    .line 217
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 219
    .end local v1    # "otherByte":C
    .end local v3    # "thisByte":C
    :cond_3
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@37
    move-result v6

    #@38
    sub-int/2addr v5, v6

    #@39
    return v5
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 249
    instance-of v6, p1, Ljava/nio/CharBuffer;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 250
    return v8

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 252
    check-cast v3, Ljava/nio/CharBuffer;

    #@9
    .line 254
    .local v3, "otherBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@c
    move-result v6

    #@d
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    #@10
    move-result v7

    #@11
    if-eq v6, v7, :cond_1

    #@13
    .line 255
    return v8

    #@14
    .line 258
    :cond_1
    iget v1, p0, Ljava/nio/CharBuffer;->position:I

    #@16
    .line 259
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/CharBuffer;->position:I

    #@18
    .line 260
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    #@19
    .local v0, "equalSoFar":Z
    move v5, v4

    #@1a
    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    #@1b
    .line 261
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_0
    if-eqz v0, :cond_3

    #@1d
    iget v6, p0, Ljava/nio/CharBuffer;->limit:I

    #@1f
    if-ge v2, v6, :cond_3

    #@21
    .line 262
    add-int/lit8 v1, v2, 0x1

    #@23
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->get(I)C

    #@26
    move-result v6

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->get(I)C

    #@2c
    move-result v7

    #@2d
    if-ne v6, v7, :cond_2

    #@2f
    const/4 v0, 0x1

    #@30
    :goto_1
    move v5, v4

    #@31
    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    #@32
    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_0

    #@33
    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_2
    const/4 v0, 0x0

    #@34
    goto :goto_1

    #@35
    .line 265
    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    return v0
.end method

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C

    #@0
    .prologue
    .line 291
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 314
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 315
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 316
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 318
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 319
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    #@18
    move-result v1

    #@19
    aput-char v1, p1, v0

    #@1b
    .line 318
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 321
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 336
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 347
    iget v1, p0, Ljava/nio/CharBuffer;->position:I

    #@2
    .line 348
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 349
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/CharBuffer;->limit:I

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 350
    add-int/lit8 v2, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    #@c
    move-result v3

    #@d
    add-int/2addr v0, v3

    #@e
    move v1, v2

    #@f
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    #@10
    .line 352
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[C
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 564
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 566
    :cond_0
    if-ltz p2, :cond_1

    #@e
    if-ge p3, p2, :cond_2

    #@10
    .line 567
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "str.length()="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 568
    const-string/jumbo v3, ", start="

    #@29
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 568
    const-string/jumbo v3, ", end="

    #@34
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 566
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@47
    move-result v1

    #@48
    if-gt p3, v1, :cond_1

    #@4a
    .line 570
    sub-int v1, p3, p2

    #@4c
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@4f
    move-result v2

    #@50
    if-le v1, v2, :cond_3

    #@52
    .line 571
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@54
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@57
    throw v1

    #@58
    .line 573
    :cond_3
    move v0, p2

    #@59
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    #@5b
    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v1

    #@5f
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@62
    .line 573
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0

    #@65
    .line 576
    :cond_4
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 491
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 492
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 494
    :cond_0
    if-ne p1, p0, :cond_1

    #@e
    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "src == this"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 497
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 498
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@23
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@26
    throw v1

    #@27
    .line 501
    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [C

    #@2d
    .line 502
    .local v0, "contents":[C
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@30
    .line 503
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    #@33
    .line 504
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C

    #@0
    .prologue
    .line 439
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 464
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 465
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 466
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 468
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 469
    aget-char v1, p1, v0

    #@17
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@1a
    .line 468
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 471
    :cond_1
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 725
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@5
    move-result v1

    #@6
    .line 726
    .local v1, "remaining":I
    if-ne p1, p0, :cond_1

    #@8
    .line 727
    if-nez v1, :cond_0

    #@a
    .line 728
    return v3

    #@b
    .line 730
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v3, "target == this"

    #@10
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 732
    :cond_1
    if-nez v1, :cond_3

    #@16
    .line 733
    iget v4, p0, Ljava/nio/CharBuffer;->limit:I

    #@18
    if-lez v4, :cond_2

    #@1a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    :goto_0
    return v2

    #@21
    :cond_2
    move v2, v3

    #@22
    goto :goto_0

    #@23
    .line 735
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@26
    move-result v2

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v1

    #@2b
    .line 736
    if-lez v1, :cond_4

    #@2d
    .line 737
    new-array v0, v1, [C

    #@2f
    .line 738
    .local v0, "chars":[C
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@32
    .line 739
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    #@35
    .line 741
    .end local v0    # "chars":[C
    :cond_4
    return v1
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 622
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    #@4
    iget v3, p0, Ljava/nio/CharBuffer;->position:I

    #@6
    sub-int/2addr v2, v3

    #@7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 630
    .local v1, "result":Ljava/lang/StringBuilder;
    iget v0, p0, Ljava/nio/CharBuffer;->position:I

    #@c
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/nio/CharBuffer;->limit:I

    #@e
    if-ge v0, v2, :cond_0

    #@10
    .line 631
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 630
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 633
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method
