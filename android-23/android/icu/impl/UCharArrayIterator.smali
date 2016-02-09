.class public final Landroid/icu/impl/UCharArrayIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "UCharArrayIterator.java"


# instance fields
.field private final limit:I

.field private pos:I

.field private final start:I

.field private final text:[C


# direct methods
.method public constructor <init>([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 25
    if-ltz p2, :cond_0

    #@5
    array-length v0, p1

    #@6
    if-le p3, v0, :cond_1

    #@8
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "start: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " or limit: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 27
    const-string/jumbo v2, " out of range [0, "

    #@28
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 28
    array-length v2, p1

    #@2d
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 28
    const-string/jumbo v2, ")"

    #@34
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 25
    :cond_1
    if-gt p2, p3, :cond_0

    #@42
    .line 30
    iput-object p1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    #@44
    .line 31
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@46
    .line 32
    iput p3, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@48
    .line 34
    iput p2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@4a
    .line 24
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 79
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 80
    :catch_0
    move-exception v0

    #@6
    .line 81
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public current()I
    .locals 2

    #@0
    .prologue
    .line 38
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    #@8
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@a
    aget-char v0, v0, v1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, -0x1

    #@e
    goto :goto_0
.end method

.method public getIndex()I
    .locals 2

    #@0
    .prologue
    .line 46
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 42
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@2
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getText([CI)I
    .locals 3
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 67
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@2
    iget v2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 68
    .local v0, "len":I
    iget-object v1, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    #@8
    iget v2, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@a
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@d
    .line 69
    return v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 50
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    #@8
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@e
    aget-char v0, v0, v1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, -0x1

    #@12
    goto :goto_0
.end method

.method public previous()I
    .locals 2

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/icu/impl/UCharArrayIterator;->text:[C

    #@8
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    iput v1, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@e
    aget-char v0, v0, v1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, -0x1

    #@12
    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 58
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@4
    iget v1, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@6
    sub-int/2addr v0, v1

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "index: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 60
    const-string/jumbo v2, " out of range [0, "

    #@1e
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 61
    iget v2, p0, Landroid/icu/impl/UCharArrayIterator;->limit:I

    #@24
    iget v3, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@26
    sub-int/2addr v2, v3

    #@27
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 61
    const-string/jumbo v2, ")"

    #@2e
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 63
    :cond_1
    iget v0, p0, Landroid/icu/impl/UCharArrayIterator;->start:I

    #@3c
    add-int/2addr v0, p1

    #@3d
    iput v0, p0, Landroid/icu/impl/UCharArrayIterator;->pos:I

    #@3f
    .line 57
    return-void
.end method
