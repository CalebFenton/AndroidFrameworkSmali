.class Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;
.super Landroid/media/internal/guava_common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient blacklist firstEntry:I

.field private transient blacklist lastEntry:I

.field private transient blacklist predecessor:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist successor:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;-><init>(I)V

    return-void
.end method

.method public static blacklist createWithExpectedSize(I)Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/media/internal/guava_common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private blacklist getPredecessor(I)I
    .registers 2

    .line 165
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requirePredecessors()[I

    move-result-object p0

    aget p0, p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private blacklist requirePredecessors()[I
    .registers 1

    .line 265
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireSuccessors()[I
    .registers 1

    .line 269
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist setPredecessor(II)V
    .registers 3

    .line 178
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requirePredecessors()[I

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    return-void
.end method

.method private blacklist setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 183
    iput p2, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_9

    .line 185
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSuccessor(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    .line 189
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->lastEntry:I

    return-void

    .line 191
    :cond_e
    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setPredecessor(II)V

    return-void
.end method

.method private blacklist setSuccessor(II)V
    .registers 3

    .line 174
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requireSuccessors()[I

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method blacklist adjustAfterRemove(II)I
    .registers 3

    .line 230
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result p0

    if-lt p1, p0, :cond_7

    return p2

    :cond_7
    return p1
.end method

.method blacklist allocArrays()I
    .registers 3

    .line 143
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->allocArrays()I

    move-result v0

    .line 144
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 145
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 246
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x2

    .line 249
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 250
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 252
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->predecessor:[I

    if-eqz v0, :cond_25

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    if-eqz v1, :cond_25

    .line 253
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 254
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 256
    :cond_25
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->clear()V

    return-void
.end method

.method blacklist convertToHashFloodingResistantImplementation()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 152
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->convertToHashFloodingResistantImplementation()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 154
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    return-object v0
.end method

.method blacklist firstEntryIndex()I
    .registers 1

    .line 225
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->firstEntry:I

    return p0
.end method

.method blacklist getSuccessor(I)I
    .registers 2

    .line 170
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requireSuccessors()[I

    move-result-object p0

    aget p0, p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method blacklist init(I)V
    .registers 2

    .line 136
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->init(I)V

    const/4 p1, -0x2

    .line 137
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 138
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->lastEntry:I

    return-void
.end method

.method blacklist insertEntry(ILjava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 198
    iget p2, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    return-void
.end method

.method blacklist moveLastEntry(II)V
    .registers 5

    .line 204
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 205
    invoke-super {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 207
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    if-ge p1, v0, :cond_24

    .line 209
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->getPredecessor(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 210
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->getSuccessor(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->setSucceeds(II)V

    .line 212
    :cond_24
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requirePredecessors()[I

    move-result-object p1

    const/4 p2, 0x0

    aput p2, p1, v0

    .line 213
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requireSuccessors()[I

    move-result-object p0

    aput p2, p0, v0

    return-void
.end method

.method blacklist resizeEntries(I)V
    .registers 3

    .line 218
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->resizeEntries(I)V

    .line 219
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requirePredecessors()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 220
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->requireSuccessors()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->successor:[I

    return-void
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 1

    .line 235
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 241
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
