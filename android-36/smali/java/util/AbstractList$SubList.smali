.class Ljava/util/AbstractList$SubList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist offset:I

.field private final blacklist parent:Ljava/util/AbstractList$SubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList$SubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist root:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected blacklist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetoffset(Ljava/util/AbstractList$SubList;)I
    .registers 1

    iget p0, p0, Ljava/util/AbstractList$SubList;->offset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetroot(Ljava/util/AbstractList$SubList;)Ljava/util/AbstractList;
    .registers 1

    iget-object p0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSizeAndModCount(Ljava/util/AbstractList$SubList;I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/AbstractList$SubList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList$SubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 771
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "parent":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 772
    iget-object v0, p1, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iput-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    .line 773
    iput-object p1, p0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 774
    iget v0, p1, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Ljava/util/AbstractList$SubList;->offset:I

    .line 775
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/AbstractList$SubList;->size:I

    .line 776
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 777
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/AbstractList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 760
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "root":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 761
    iput-object p1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 763
    iput p2, p0, Ljava/util/AbstractList$SubList;->offset:I

    .line 764
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/AbstractList$SubList;->size:I

    .line 765
    iget v0, p1, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 766
    return-void
.end method

.method private blacklist checkForComodification()V
    .registers 3

    .line 905
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList$SubList;->modCount:I

    if-ne v0, v1, :cond_9

    .line 907
    return-void

    .line 906
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private blacklist outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 901
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 896
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    if-gt p1, v0, :cond_7

    .line 898
    return-void

    .line 897
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateSizeAndModCount(I)V
    .registers 4
    .param p1, "sizeChange"    # I

    .line 910
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    move-object v0, p0

    .line 912
    .local v0, "slist":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    :cond_1
    iget v1, v0, Ljava/util/AbstractList$SubList;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/util/AbstractList$SubList;->size:I

    .line 913
    iget-object v1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 914
    iget-object v0, v0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 915
    if-nez v0, :cond_1

    .line 916
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 797
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 798
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 799
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 800
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 801
    return-void
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 822
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 823
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 824
    .local v0, "cSize":I
    if-nez v0, :cond_b

    .line 825
    const/4 v1, 0x0

    return v1

    .line 826
    :cond_b
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 827
    iget-object v1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 828
    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 829
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 786
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 787
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 788
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 833
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 838
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 840
    new-instance v0, Ljava/util/AbstractList$SubList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$SubList$1;-><init>(Ljava/util/AbstractList$SubList;I)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 804
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 805
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 806
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 807
    .local v0, "result":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 808
    return-object v0
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 812
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 813
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    .line 814
    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 815
    return-void
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 780
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 781
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 782
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 792
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 793
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 891
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/AbstractList$SubList;->subListRangeCheck(III)V

    .line 892
    new-instance v0, Ljava/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubList;-><init>(Ljava/util/AbstractList$SubList;II)V

    return-object v0
.end method
