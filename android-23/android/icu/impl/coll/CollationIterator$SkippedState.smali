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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final newBuffer:Ljava/lang/StringBuilder;

.field private final oldBuffer:Ljava/lang/StringBuilder;

.field private pos:I

.field private skipLengthAtMatch:I

.field private state:Landroid/icu/util/CharsTrie$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->-assertionsDisabled:Z

    #@b
    .line 82
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@a
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@11
    .line 169
    new-instance v0, Landroid/icu/util/CharsTrie$State;

    #@13
    invoke-direct {v0}, Landroid/icu/util/CharsTrie$State;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    #@18
    .line 84
    return-void
.end method


# virtual methods
.method backwardNumCodePoints(I)I
    .locals 6
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 112
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    .line 113
    .local v1, "length":I
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@9
    sub-int v0, v2, v1

    #@b
    .line 114
    .local v0, "beyond":I
    if-lez v0, :cond_1

    #@d
    .line 115
    if-lt v0, p1, :cond_0

    #@f
    .line 117
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@11
    sub-int/2addr v2, p1

    #@12
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@14
    .line 118
    return p1

    #@15
    .line 121
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@17
    sub-int v3, v0, p1

    #@19
    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    #@1c
    move-result v2

    #@1d
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@1f
    .line 122
    return v0

    #@20
    .line 126
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@22
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@24
    neg-int v4, p1

    #@25
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    #@28
    move-result v2

    #@29
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@2b
    .line 127
    return v5
.end method

.method clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 87
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@8
    .line 85
    return-void
.end method

.method hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method incBeyond()V
    .locals 1

    #@0
    .prologue
    .line 104
    sget-boolean v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 105
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@1b
    .line 103
    return-void
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method next()I
    .locals 3

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@2
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@7
    move-result v0

    #@8
    .line 98
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@11
    .line 99
    return v0
.end method

.method recordMatch()V
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    #@8
    return-void
.end method

.method replaceMatch()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 146
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    .line 147
    .local v0, "oldLength":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@9
    if-le v1, v0, :cond_0

    #@b
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@d
    .line 148
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    #@f
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@11
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@17
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    #@19
    invoke-virtual {v1, v4, v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1c
    .line 149
    iput v4, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    #@1e
    .line 144
    return-void
.end method

.method resetToTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 1
    .param p1, "trie"    # Landroid/icu/util/CharsTrie;

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    #@2
    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    #@5
    return-void
.end method

.method saveTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 1
    .param p1, "trie"    # Landroid/icu/util/CharsTrie;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    #@2
    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    #@5
    return-void
.end method

.method setFirstSkipped(I)V
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    #@3
    .line 133
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8
    .line 134
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@d
    .line 131
    return-void
.end method

.method skip(I)V
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@5
    .line 137
    return-void
.end method
