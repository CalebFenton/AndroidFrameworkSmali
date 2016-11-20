.class Ljava/util/SubList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final l:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final offset:I

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/SubList;)Ljava/util/AbstractList;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/SubList;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/SubList;->offset:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/SubList;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/SubList;->size:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/SubList;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/SubList;->size:I

    #@2
    return p1
.end method

.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 3
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 618
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p1, "list":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 619
    if-gez p2, :cond_0

    #@5
    .line 620
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "fromIndex = "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 621
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    #@22
    move-result v0

    #@23
    if-le p3, v0, :cond_1

    #@25
    .line 622
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "toIndex = "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 623
    :cond_1
    if-le p2, p3, :cond_2

    #@41
    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "fromIndex("

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 625
    const-string/jumbo v2, ") > toIndex("

    #@56
    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 625
    const-string/jumbo v2, ")"

    #@61
    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0

    #@6d
    .line 626
    :cond_2
    iput-object p1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@6f
    .line 627
    iput p2, p0, Ljava/util/SubList;->offset:I

    #@71
    .line 628
    sub-int v0, p3, p2

    #@73
    iput v0, p0, Ljava/util/SubList;->size:I

    #@75
    .line 629
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@77
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@79
    iput v0, p0, Ljava/util/SubList;->modCount:I

    #@7b
    .line 618
    return-void
.end method

.method private checkForComodification()V
    .locals 2

    #@0
    .prologue
    .line 768
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    iget v0, p0, Ljava/util/SubList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 769
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 767
    :cond_0
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 764
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Index: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ", Size: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Ljava/util/SubList;->size:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private rangeCheck(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 754
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/SubList;->size:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 755
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 753
    :cond_1
    return-void
.end method

.method private rangeCheckForAdd(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 759
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/SubList;->size:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 760
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 758
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 650
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    #@3
    .line 651
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@6
    .line 652
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@8
    iget v1, p0, Ljava/util/SubList;->offset:I

    #@a
    add-int/2addr v1, p1

    #@b
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@e
    .line 653
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@10
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@12
    iput v0, p0, Ljava/util/SubList;->modCount:I

    #@14
    .line 654
    iget v0, p0, Ljava/util/SubList;->size:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iput v0, p0, Ljava/util/SubList;->size:I

    #@1a
    .line 649
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    #@1
    .line 678
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    #@4
    .line 679
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@7
    move-result v0

    #@8
    .line 680
    .local v0, "cSize":I
    if-nez v0, :cond_0

    #@a
    .line 681
    return v1

    #@b
    .line 683
    :cond_0
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@e
    .line 684
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@10
    iget v2, p0, Ljava/util/SubList;->offset:I

    #@12
    add-int/2addr v2, p1

    #@13
    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    #@16
    .line 685
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@18
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@1a
    iput v1, p0, Ljava/util/SubList;->modCount:I

    #@1c
    .line 686
    iget v1, p0, Ljava/util/SubList;->size:I

    #@1e
    add-int/2addr v1, v0

    #@1f
    iput v1, p0, Ljava/util/SubList;->size:I

    #@21
    .line 687
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 674
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/SubList;->size:I

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/SubList;->addAll(ILjava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 639
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    #@3
    .line 640
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@6
    .line 641
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@8
    iget v1, p0, Ljava/util/SubList;->offset:I

    #@a
    add-int/2addr v1, p1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-virtual {p0}, Ljava/util/SubList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 695
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@3
    .line 696
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    #@6
    .line 698
    new-instance v0, Ljava/util/SubList$1;

    #@8
    invoke-direct {v0, p0, p1}, Ljava/util/SubList$1;-><init>(Ljava/util/SubList;I)V

    #@b
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 658
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    #@3
    .line 659
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@6
    .line 660
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@8
    iget v2, p0, Ljava/util/SubList;->offset:I

    #@a
    add-int/2addr v2, p1

    #@b
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 661
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@11
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@13
    iput v1, p0, Ljava/util/SubList;->modCount:I

    #@15
    .line 662
    iget v1, p0, Ljava/util/SubList;->size:I

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    iput v1, p0, Ljava/util/SubList;->size:I

    #@1b
    .line 663
    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 667
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@3
    .line 668
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@5
    iget v1, p0, Ljava/util/SubList;->offset:I

    #@7
    add-int/2addr v1, p1

    #@8
    iget v2, p0, Ljava/util/SubList;->offset:I

    #@a
    add-int/2addr v2, p2

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    #@e
    .line 669
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@10
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@12
    iput v0, p0, Ljava/util/SubList;->modCount:I

    #@14
    .line 670
    iget v0, p0, Ljava/util/SubList;->size:I

    #@16
    sub-int v1, p2, p1

    #@18
    sub-int/2addr v0, v1

    #@19
    iput v0, p0, Ljava/util/SubList;->size:I

    #@1b
    .line 666
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 633
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    #@3
    .line 634
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@6
    .line 635
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    #@8
    iget v1, p0, Ljava/util/SubList;->offset:I

    #@a
    add-int/2addr v1, p1

    #@b
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 645
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    #@3
    .line 646
    iget v0, p0, Ljava/util/SubList;->size:I

    #@5
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 750
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    new-instance v0, Ljava/util/SubList;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    #@5
    return-object v0
.end method
