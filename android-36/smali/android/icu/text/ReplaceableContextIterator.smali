.class Landroid/icu/text/ReplaceableContextIterator;
.super Ljava/lang/Object;
.source "ReplaceableContextIterator.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# instance fields
.field protected blacklist contextLimit:I

.field protected blacklist contextStart:I

.field protected blacklist cpLimit:I

.field protected blacklist cpStart:I

.field protected blacklist dir:I

.field protected blacklist index:I

.field protected blacklist limit:I

.field protected blacklist reachedLimit:Z

.field protected blacklist rep:Landroid/icu/text/Replaceable;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 40
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 41
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist didReachLimit()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return v0
.end method

.method public blacklist getCaseMapCPStart()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    return v0
.end method

.method public blacklist next()I
    .registers 4

    .line 177
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_20

    .line 178
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    if-ge v0, v2, :cond_1d

    .line 179
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 180
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 181
    return v0

    .line 184
    .end local v0    # "c":I
    :cond_1d
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    goto :goto_3d

    .line 186
    :cond_20
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    if-gez v0, :cond_3d

    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-le v0, v2, :cond_3d

    .line 187
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 188
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 189
    return v0

    .line 191
    .end local v0    # "c":I
    :cond_3d
    :goto_3d
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist nextCaseMapCP()I
    .registers 4

    .line 122
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    if-ge v0, v1, :cond_1c

    .line 123
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 124
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 125
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    .line 126
    return v0

    .line 128
    .end local v0    # "c":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist replace(Ljava/lang/String;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 141
    .local v0, "delta":I
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iget v3, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-interface {v1, v2, v3, p1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 142
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    .line 143
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 144
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    .line 145
    return v0
.end method

.method public blacklist reset(I)V
    .registers 4
    .param p1, "direction"    # I

    .line 158
    const/4 v0, 0x0

    if-lez p1, :cond_b

    .line 160
    const/4 v1, 0x1

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 161
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_19

    .line 162
    :cond_b
    if-gez p1, :cond_15

    .line 164
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 165
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_19

    .line 168
    :cond_15
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 169
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 171
    :goto_19
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 172
    return-void
.end method

.method public blacklist setContextLimits(II)V
    .registers 5
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I

    .line 97
    const/4 v0, 0x0

    if-gez p1, :cond_6

    .line 98
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_19

    .line 99
    :cond_6
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-gt p1, v1, :cond_11

    .line 100
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_19

    .line 102
    :cond_11
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    .line 104
    :goto_19
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-ge p2, v1, :cond_22

    .line 105
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_35

    .line 106
    :cond_22
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-gt p2, v1, :cond_2d

    .line 107
    iput p2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_35

    .line 109
    :cond_2d
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    .line 111
    :goto_35
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 112
    return-void
.end method

.method public blacklist setIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 61
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    .line 63
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 64
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 65
    return-void
.end method

.method public blacklist setLimit(I)V
    .registers 3
    .param p1, "lim"    # I

    .line 83
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 84
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    goto :goto_15

    .line 86
    :cond_d
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 88
    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 89
    return-void
.end method

.method public blacklist setText(Landroid/icu/text/Replaceable;)V
    .registers 3
    .param p1, "rep"    # Landroid/icu/text/Replaceable;

    .line 49
    iput-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    .line 50
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 52
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    .line 53
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    .line 54
    return-void
.end method
