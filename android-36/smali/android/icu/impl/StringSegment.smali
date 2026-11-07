.class public Landroid/icu/impl/StringSegment;
.super Ljava/lang/Object;
.source "StringSegment.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist end:I

.field private blacklist foldCase:Z

.field private blacklist start:I

.field private final blacklist str:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "foldCase"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/StringSegment;->start:I

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/StringSegment;->end:I

    .line 32
    iput-boolean p2, p0, Landroid/icu/impl/StringSegment;->foldCase:Z

    .line 33
    return-void
.end method

.method private static final blacklist codePointsEqual(IIZ)Z
    .registers 5
    .param p0, "cp1"    # I
    .param p1, "cp2"    # I
    .param p2, "foldCase"    # Z

    .line 195
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 196
    return v0

    .line 198
    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 199
    return v1

    .line 201
    :cond_8
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    .line 202
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    .line 203
    if-ne p0, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method private blacklist getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I
    .registers 7
    .param p1, "other"    # Ljava/lang/CharSequence;
    .param p2, "foldCase"    # Z

    .line 180
    nop

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "offset":I
    :goto_2
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 184
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 185
    .local v1, "cp1":I
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 186
    .local v2, "cp2":I
    invoke-static {v1, v2, p2}, Landroid/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 187
    goto :goto_25

    .line 189
    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 190
    .end local v1    # "cp1":I
    .end local v2    # "cp2":I
    goto :goto_2

    .line 191
    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public blacklist adjustOffset(I)V
    .registers 3
    .param p1, "delta"    # I

    .line 54
    nop

    .line 55
    nop

    .line 56
    iget v0, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/StringSegment;->start:I

    .line 57
    return-void
.end method

.method public blacklist adjustOffsetByCodePoint()V
    .registers 3

    .line 63
    iget v0, p0, Landroid/icu/impl/StringSegment;->start:I

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->getCodePoint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/StringSegment;->start:I

    .line 64
    return-void
.end method

.method public blacklist asString()Ljava/lang/String;
    .registers 4

    .line 224
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    iget v2, p0, Landroid/icu/impl/StringSegment;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .line 83
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist codePointAt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 114
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist contentEquals(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 213
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCaseSensitivePrefixLength(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/StringSegment;->getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I

    move-result v0

    return v0
.end method

.method public blacklist getCodePoint()I
    .registers 4

    .line 99
    nop

    .line 100
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 102
    .local v0, "lead":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/icu/impl/StringSegment;->end:I

    if-ge v1, v2, :cond_2d

    iget-object v1, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/lit8 v2, v2, 0x1

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 105
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 107
    .end local v2    # "trail":C
    :cond_2d
    return v0
.end method

.method public blacklist getCommonPrefixLength(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 168
    iget-boolean v0, p0, Landroid/icu/impl/StringSegment;->foldCase:Z

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/StringSegment;->getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I

    move-result v0

    return v0
.end method

.method public blacklist getOffset()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/icu/impl/StringSegment;->start:I

    return v0
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 78
    iget v0, p0, Landroid/icu/impl/StringSegment;->end:I

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist resetLength()V
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/StringSegment;->end:I

    .line 74
    return-void
.end method

.method public blacklist setLength(I)V
    .registers 3
    .param p1, "length"    # I

    .line 67
    nop

    .line 68
    nop

    .line 69
    iget v0, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/StringSegment;->end:I

    .line 70
    return-void
.end method

.method public blacklist setOffset(I)V
    .registers 2
    .param p1, "start"    # I

    .line 40
    nop

    .line 41
    iput p1, p0, Landroid/icu/impl/StringSegment;->start:I

    .line 42
    return-void
.end method

.method public blacklist startsWith(I)Z
    .registers 4
    .param p1, "otherCp"    # I

    .line 124
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    iget-boolean v1, p0, Landroid/icu/impl/StringSegment;->foldCase:Z

    invoke-static {v0, p1, v1}, Landroid/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result v0

    return v0
.end method

.method public blacklist startsWith(Landroid/icu/text/UnicodeSet;)Z
    .registers 4
    .param p1, "uniset"    # Landroid/icu/text/UnicodeSet;

    .line 133
    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    .line 134
    .local v0, "cp":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_9
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    return v1
.end method

.method public blacklist startsWith(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 145
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/icu/impl/StringSegment;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1f

    .line 148
    :cond_10
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 149
    .local v1, "cp1":I
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 150
    .local v0, "cp2":I
    iget-boolean v2, p0, Landroid/icu/impl/StringSegment;->foldCase:Z

    invoke-static {v1, v0, v2}, Landroid/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result v2

    return v2

    .line 146
    .end local v0    # "cp2":I
    .end local v1    # "cp1":I
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 88
    iget-object v0, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/icu/impl/StringSegment;->start:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/impl/StringSegment;->start:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Landroid/icu/impl/StringSegment;->start:I

    iget v3, p0, Landroid/icu/impl/StringSegment;->end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Landroid/icu/impl/StringSegment;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
