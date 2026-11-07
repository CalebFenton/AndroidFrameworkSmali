.class final Ljava/util/ArrayList$ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayListSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/ArrayList;III)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/ArrayList;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1674
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    iput-object p1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1675
    iput p2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1676
    iput p3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    .line 1677
    iput p4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1678
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 3

    .line 1682
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_14

    .line 1683
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1684
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v1, v0

    .line 1686
    :cond_14
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1739
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1735
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1713
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3c

    .line 1715
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_36

    .line 1716
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v2, v0

    .local v2, "hi":I
    if-gez v0, :cond_19

    .line 1717
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    .line 1718
    .local v0, "mc":I
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v2

    goto :goto_1b

    .line 1721
    .end local v0    # "mc":I
    :cond_19
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1722
    .restart local v0    # "mc":I
    :goto_1b
    iget v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    move v4, v3

    .local v4, "i":I
    if-ltz v3, :cond_36

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    array-length v3, v1

    if-gt v2, v3, :cond_36

    .line 1723
    :goto_25
    if-ge v4, v2, :cond_2f

    .line 1724
    aget-object v3, v1, v4

    .line 1725
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1723
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1727
    :cond_2f
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_36

    .line 1728
    return-void

    .line 1731
    .end local v0    # "mc":I
    .end local v2    # "hi":I
    .end local v4    # "i":I
    :cond_36
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1714
    .end local v1    # "a":[Ljava/lang/Object;
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1696
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_29

    .line 1698
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1699
    .local v1, "i":I
    if-ge v1, v0, :cond_27

    .line 1700
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1701
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1702
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1703
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_21

    .line 1705
    const/4 v3, 0x1

    return v3

    .line 1704
    :cond_21
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1707
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_27
    const/4 v2, 0x0

    return v2

    .line 1697
    .end local v0    # "hi":I
    .end local v1    # "i":I
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/ArrayList$ArrayListSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TE;>.Array",
            "ListSpliterator;"
        }
    .end annotation

    .line 1690
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1691
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 1692
    :cond_e
    new-instance v3, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->this$0:Ljava/util/ArrayList;

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    .line 1691
    :goto_19
    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1637
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator;"
    invoke-virtual {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->trySplit()Ljava/util/ArrayList$ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
