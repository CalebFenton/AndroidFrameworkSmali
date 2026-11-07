.class abstract Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist currentIndex:I

.field blacklist expectedMetadata:I

.field blacklist indexToRemove:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 626
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    # getter for: Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$000(Landroid/media/internal/guava_common/collect/CompactHashMap;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 628
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 p1, -0x1

    .line 629
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;Landroid/media/internal/guava_common/collect/CompactHashMap$1;)V
    .registers 3

    .line 626
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-void
.end method

.method private blacklist checkForConcurrentModification()V
    .registers 2

    .line 667
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # getter for: Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$000(Landroid/media/internal/guava_common/collect/CompactHashMap;)I

    move-result v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v0, p0, :cond_b

    return-void

    .line 668
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method abstract blacklist getOutput(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public whitelist test-api hasNext()Z
    .registers 1

    .line 633
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method blacklist incrementExpectedModCount()V
    .registers 2

    .line 663
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->expectedMetadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->expectedMetadata:I

    return-void
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 643
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 646
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 647
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    .line 648
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v0

    .line 644
    :cond_1c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 654
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 655
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 656
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->incrementExpectedModCount()V

    .line 657
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$100(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 v0, -0x1

    .line 659
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method
