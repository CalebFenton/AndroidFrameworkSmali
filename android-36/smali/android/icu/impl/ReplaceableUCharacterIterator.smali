.class public Landroid/icu/impl/ReplaceableUCharacterIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private blacklist currentIndex:I

.field private blacklist replaceable:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/Replaceable;)V
    .registers 3
    .param p1, "replaceable"    # Landroid/icu/text/Replaceable;

    .line 36
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    .line 37
    if-eqz p1, :cond_b

    .line 40
    iput-object p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 42
    return-void

    .line 38
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    .line 49
    if-eqz p1, :cond_10

    .line 52
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 54
    return-void

    .line 50
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 60
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    .line 61
    if-eqz p1, :cond_10

    .line 64
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 66
    return-void

    .line 62
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 78
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 79
    :catch_5
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api current()I
    .registers 3

    .line 90
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 91
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 93
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api currentCodePoint()I
    .registers 5

    .line 106
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v0

    .line 107
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 109
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->next()I

    .line 112
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v1

    .line 114
    .local v1, "ch2":I
    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->previous()I

    .line 116
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 118
    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 121
    .end local v1    # "ch2":I
    :cond_21
    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getText([CI)I
    .registers 6
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    .line 195
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    .line 196
    .local v0, "length":I
    if-ltz p2, :cond_14

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_14

    .line 199
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/icu/text/Replaceable;->getChars(II[CI)V

    .line 200
    return v0

    .line 197
    :cond_14
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api next()I
    .registers 4

    .line 152
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 153
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 155
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 3

    .line 169
    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_11

    .line 170
    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 172
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api setIndex(I)V
    .registers 3
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 187
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 190
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    .line 191
    return-void

    .line 188
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
