.class public Landroid/text/CharSequenceCharacterIterator;
.super Ljava/lang/Object;
.source "CharSequenceCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private final greylist-max-o mBeginIndex:I

.field private final greylist-max-o mCharSeq:Ljava/lang/CharSequence;

.field private final greylist-max-o mEndIndex:I

.field private greylist-max-o mIndex:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    .line 39
    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    .line 40
    iput p3, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 104
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 105
    :catch_5
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public whitelist test-api current()C
    .registers 3

    .line 59
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_a

    const v0, 0xffff

    goto :goto_12

    :cond_a
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_12
    return v0
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 44
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 45
    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    return v0
.end method

.method public whitelist test-api last()C
    .registers 3

    .line 49
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_e

    .line 50
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 51
    const v0, 0xffff

    return v0

    .line 53
    :cond_e
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 54
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 3

    .line 63
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 64
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-lt v0, v1, :cond_14

    .line 65
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 66
    const v0, 0xffff

    return v0

    .line 68
    :cond_14
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 3

    .line 73
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, v1, :cond_a

    .line 74
    const v0, 0xffff

    return v0

    .line 76
    :cond_a
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 77
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 82
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, p1, :cond_f

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-gt p1, v0, :cond_f

    .line 83
    iput p1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 84
    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0

    .line 86
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
