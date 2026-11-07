.class public final Landroid/icu/impl/UCharArrayIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "UCharArrayIterator.java"


# instance fields
.field private final blacklist limit:I

.field private blacklist pos:I

.field private final blacklist start:I

.field private final blacklist text:[C


# direct methods
.method public constructor blacklist <init>([CII)V
    .registers 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 28
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    .line 29
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p3, v0, :cond_13

    if-gt p2, p3, :cond_13

    .line 34
    iput-object p1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    .line 35
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    .line 36
    iput p3, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    .line 38
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    .line 39
    return-void

    .line 30
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 91
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 92
    :catch_5
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api current()I
    .registers 3

    .line 43
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    aget-char v0, v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 3

    .line 53
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 3

    .line 48
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getText([CI)I
    .registers 6
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    .line 78
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    .line 79
    .local v0, "len":I
    iget-object v1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    iget v2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return v0
.end method

.method public whitelist test-api next()I
    .registers 4

    .line 58
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    aget-char v0, v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api previous()I
    .registers 3

    .line 63
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    if-le v0, v1, :cond_11

    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    aget-char v0, v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api setIndex(I)V
    .registers 6
    .param p1, "index"    # I

    .line 68
    if-ltz p1, :cond_f

    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    .line 73
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    .line 74
    return-void

    .line 69
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    iget v3, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
