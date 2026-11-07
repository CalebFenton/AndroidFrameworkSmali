.class final Landroid/icu/impl/coll/CollationIterator$SkippedState;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SkippedState"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist newBuffer:Ljava/lang/StringBuilder;

.field private final blacklist oldBuffer:Ljava/lang/StringBuilder;

.field private blacklist pos:I

.field private blacklist skipLengthAtMatch:I

.field private blacklist state:Landroid/icu/util/CharsTrie$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-class v0, Landroid/icu/impl/coll/CollationIterator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    .line 173
    new-instance v0, Landroid/icu/util/CharsTrie$State;

    invoke-direct {v0}, Landroid/icu/util/CharsTrie$State;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    .line 88
    return-void
.end method


# virtual methods
.method blacklist backwardNumCodePoints(I)I
    .registers 7
    .param p1, "n"    # I

    .line 116
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 117
    .local v0, "length":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    sub-int/2addr v1, v0

    .line 118
    .local v1, "beyond":I
    if-lez v1, :cond_1e

    .line 119
    if-lt v1, p1, :cond_13

    .line 121
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 122
    return p1

    .line 125
    :cond_13
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    sub-int v3, v1, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 126
    return v1

    .line 130
    :cond_1e
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 131
    const/4 v2, 0x0

    return v2
.end method

.method blacklist clear()V
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 93
    return-void
.end method

.method blacklist hasNext()Z
    .registers 3

    .line 97
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist incBeyond()V
    .registers 2

    .line 108
    nop

    .line 109
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 110
    return-void
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist next()I
    .registers 4

    .line 101
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 102
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 103
    return v0
.end method

.method blacklist recordMatch()V
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    return-void
.end method

.method blacklist replaceMatch()V
    .registers 6

    .line 150
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 151
    .local v0, "oldLength":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    if-le v1, v0, :cond_c

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 152
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    invoke-virtual {v1, v3, v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 153
    iput v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    .line 154
    return-void
.end method

.method blacklist resetToTrieState(Landroid/icu/util/CharsTrie;)V
    .registers 3
    .param p1, "trie"    # Landroid/icu/util/CharsTrie;

    .line 157
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method blacklist saveTrieState(Landroid/icu/util/CharsTrie;)V
    .registers 3
    .param p1, "trie"    # Landroid/icu/util/CharsTrie;

    .line 156
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method blacklist setFirstSkipped(I)V
    .registers 4
    .param p1, "c"    # I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    .line 137
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method

.method blacklist skip(I)V
    .registers 3
    .param p1, "c"    # I

    .line 142
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 143
    return-void
.end method
