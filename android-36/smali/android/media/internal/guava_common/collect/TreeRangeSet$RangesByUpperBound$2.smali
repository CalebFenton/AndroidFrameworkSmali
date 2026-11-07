.class Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;
.super Landroid/media/internal/guava_common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->descendingEntryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Landroid/media/internal/guava_common/collect/Cut<",
        "TC;>;",
        "Landroid/media/internal/guava_common/collect/Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

.field final synthetic blacklist val$backingItr:Landroid/media/internal/guava_common/collect/PeekingIterator;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;Landroid/media/internal/guava_common/collect/PeekingIterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->this$0:Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

    iput-object p2, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Landroid/media/internal/guava_common/collect/PeekingIterator;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist computeNext()Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 422
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->computeNext()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist computeNext()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Landroid/media/internal/guava_common/collect/PeekingIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 427
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 429
    :cond_f
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Landroid/media/internal/guava_common/collect/PeekingIterator;

    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Range;

    .line 430
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;->this$0:Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

    # getter for: Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->access$000(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v2, v0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 431
    iget-object p0, v0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0

    .line 432
    :cond_2e
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method
