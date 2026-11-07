.class Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;
.super Landroid/media/internal/guava_common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;
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

.field final synthetic blacklist val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V
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

    .line 388
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

    iput-object p2, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist computeNext()Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 388
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->computeNext()Ljava/util/Map$Entry;

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

    .line 392
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 393
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 395
    :cond_f
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Range;

    .line 396
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

    # getter for: Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->access$000(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    iget-object v2, v0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 397
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 399
    :cond_2e
    iget-object p0, v0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
