.class public Landroid/icu/impl/CSCharacterIterator;
.super Ljava/lang/Object;
.source "CSCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private blacklist index:I

.field private blacklist seq:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_b

    .line 27
    iput-object p1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 29
    return-void

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 104
    new-instance v0, Landroid/icu/impl/CSCharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v0, "copy":Landroid/icu/impl/CSCharacterIterator;
    iget v1, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/CSCharacterIterator;->setIndex(I)C

    .line 106
    return-object v0
.end method

.method public whitelist test-api current()C
    .registers 3

    .line 48
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 49
    const v0, 0xffff

    return v0

    .line 51
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 35
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    return v0
.end method

.method public whitelist test-api last()C
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 42
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->previous()C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 3

    .line 57
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 58
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 60
    :cond_10
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 2

    .line 66
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    if-nez v0, :cond_8

    .line 67
    const v0, 0xffff

    return v0

    .line 69
    :cond_8
    iget v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 70
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 3
    .param p1, "position"    # I

    .line 76
    if-ltz p1, :cond_11

    iget-object v0, p0, Landroid/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_11

    .line 79
    iput p1, p0, Landroid/icu/impl/CSCharacterIterator;->index:I

    .line 80
    invoke-virtual {p0}, Landroid/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0

    .line 77
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
