.class public Landroid/icu/impl/ReplaceableUCharacterIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private currentIndex:I

.field private replaceable:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;)V
    .locals 1
    .param p1, "replaceable"    # Landroid/icu/text/Replaceable;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 33
    if-nez p1, :cond_0

    #@5
    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 36
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@d
    .line 37
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@10
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 45
    if-nez p1, :cond_0

    #@5
    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 48
    :cond_0
    new-instance v0, Landroid/icu/text/ReplaceableString;

    #@d
    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    #@10
    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@12
    .line 49
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@15
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 57
    if-nez p1, :cond_0

    #@5
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 60
    :cond_0
    new-instance v0, Landroid/icu/text/ReplaceableString;

    #@d
    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V

    #@10
    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@12
    .line 61
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@15
    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 73
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 74
    :catch_0
    move-exception v0

    #@6
    .line 75
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public current()I
    .locals 2

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@4
    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 85
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@c
    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@e
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 87
    :cond_0
    const/4 v0, -0x1

    #@14
    return v0
.end method

.method public currentCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    #@3
    move-result v0

    #@4
    .line 100
    .local v0, "ch":I
    int-to-char v2, v0

    #@5
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 102
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->next()I

    #@e
    .line 105
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    #@11
    move-result v1

    #@12
    .line 107
    .local v1, "ch2":I
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->previous()I

    #@15
    .line 109
    int-to-char v2, v1

    #@16
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 112
    int-to-char v2, v0

    #@1d
    int-to-char v3, v1

    #@1e
    .line 111
    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 116
    .end local v1    # "ch2":I
    :cond_0
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@2
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText([CI)I
    .locals 4
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 184
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@3
    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    #@6
    move-result v0

    #@7
    .line 185
    .local v0, "length":I
    if-ltz p2, :cond_0

    #@9
    add-int v1, p2, v0

    #@b
    array-length v2, p1

    #@c
    if-le v1, v2, :cond_1

    #@e
    .line 186
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 188
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@1a
    invoke-interface {v1, v3, v0, p1, p2}, Landroid/icu/text/Replaceable;->getChars(II[CI)V

    #@1d
    .line 189
    return v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@4
    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 145
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@c
    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@12
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 147
    :cond_0
    const/4 v0, -0x1

    #@18
    return v0
.end method

.method public previous()I
    .locals 2

    #@0
    .prologue
    .line 160
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 161
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@6
    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@c
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 163
    :cond_0
    const/4 v0, -0x1

    #@12
    return v0
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    #@4
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v0

    #@10
    .line 180
    :cond_1
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    #@12
    .line 176
    return-void
.end method
