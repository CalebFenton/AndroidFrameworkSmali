.class Landroid/media/internal/guava_common/collect/CompactHashSet$1;
.super Ljava/lang/Object;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist currentIndex:I

.field blacklist expectedMetadata:I

.field blacklist indexToRemove:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 543
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    # getter for: Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->access$000(Landroid/media/internal/guava_common/collect/CompactHashSet;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->expectedMetadata:I

    .line 545
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    const/4 p1, -0x1

    .line 546
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    return-void
.end method

.method private blacklist checkForConcurrentModification()V
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    # getter for: Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->access$000(Landroid/media/internal/guava_common/collect/CompactHashSet;)I

    move-result v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->expectedMetadata:I

    if-ne v0, p0, :cond_b

    return-void

    .line 582
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 1

    .line 550
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method blacklist incrementExpectedModCount()V
    .registers 2

    .line 577
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->expectedMetadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->expectedMetadata:I

    return-void
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 557
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 560
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    .line 561
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashSet;->element(I)Ljava/lang/Object;
    invoke-static {v1, v0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->access$100(Landroid/media/internal/guava_common/collect/CompactHashSet;I)Ljava/lang/Object;

    move-result-object v0

    .line 562
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    return-object v0

    .line 558
    :cond_1e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 568
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 569
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 570
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->incrementExpectedModCount()V

    .line 571
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashSet;->element(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->access$100(Landroid/media/internal/guava_common/collect/CompactHashSet;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->remove(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->this$0:Landroid/media/internal/guava_common/collect/CompactHashSet;

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->currentIndex:I

    const/4 v0, -0x1

    .line 573
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;->indexToRemove:I

    return-void
.end method
