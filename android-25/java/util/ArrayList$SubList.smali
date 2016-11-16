.class Ljava/util/ArrayList$SubList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final offset:I

.field private final parent:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final parentOffset:I

.field size:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V
    .locals 1
    .param p3, "offset"    # I
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 999
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "parent":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    .line 1001
    iput-object p2, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@7
    .line 1002
    iput p4, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@9
    .line 1003
    add-int v0, p3, p4

    #@b
    iput v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@d
    .line 1004
    sub-int v0, p5, p4

    #@f
    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@11
    .line 1005
    iget v0, p1, Ljava/util/ArrayList;->modCount:I

    #@13
    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@15
    .line 1000
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1214
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
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
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

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
    .line 1033
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 1034
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1035
    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@12
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@14
    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@16
    if-eq v0, v1, :cond_2

    #@18
    .line 1036
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 1037
    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@20
    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@22
    add-int/2addr v1, p1

    #@23
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@26
    .line 1038
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@28
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@2a
    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@2c
    .line 1039
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@32
    .line 1032
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
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1067
    if-ltz p1, :cond_0

    #@3
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@5
    if-le p1, v1, :cond_1

    #@7
    .line 1068
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1069
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@14
    move-result v0

    #@15
    .line 1070
    .local v0, "cSize":I
    if-nez v0, :cond_2

    #@17
    .line 1071
    return v2

    #@18
    .line 1073
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@1a
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@1c
    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@1e
    if-eq v1, v2, :cond_3

    #@20
    .line 1074
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@22
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@25
    throw v1

    #@26
    .line 1075
    :cond_3
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@28
    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@2a
    add-int/2addr v2, p1

    #@2b
    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    #@2e
    .line 1076
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@30
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@32
    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@34
    .line 1077
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@36
    add-int/2addr v1, v0

    #@37
    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@39
    .line 1078
    const/4 v1, 0x1

    #@3a
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
    .line 1063
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList$SubList;->addAll(ILjava/util/Collection;)Z

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
    .line 1019
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 1020
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1021
    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@12
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@14
    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@16
    if-eq v0, v1, :cond_2

    #@18
    .line 1022
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 1023
    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@20
    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@22
    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@24
    add-int/2addr v1, p1

    #@25
    aget-object v0, v0, v1

    #@27
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
    .line 1082
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
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
    .line 1086
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@2
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 1087
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v1

    #@e
    .line 1088
    :cond_0
    if-ltz p1, :cond_1

    #@10
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@12
    if-le p1, v1, :cond_2

    #@14
    .line 1089
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 1090
    :cond_2
    iget v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@20
    .line 1092
    .local v0, "offset":I
    new-instance v1, Ljava/util/ArrayList$SubList$1;

    #@22
    invoke-direct {v1, p0, p1, v0}, Ljava/util/ArrayList$SubList$1;-><init>(Ljava/util/ArrayList$SubList;II)V

    #@25
    return-object v1
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
    .line 1043
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_0

    #@2
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@4
    if-lt p1, v1, :cond_1

    #@6
    .line 1044
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1045
    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@12
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@14
    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 1046
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 1047
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@20
    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@22
    add-int/2addr v2, p1

    #@23
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    .line 1048
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@29
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@2b
    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@2d
    .line 1049
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@2f
    add-int/lit8 v1, v1, -0x1

    #@31
    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@33
    .line 1050
    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1054
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@2
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1055
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 1056
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@10
    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@12
    add-int/2addr v1, p1

    #@13
    .line 1057
    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    #@15
    add-int/2addr v2, p2

    #@16
    .line 1056
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    #@19
    .line 1058
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    #@1b
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@1d
    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@1f
    .line 1059
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@21
    sub-int v1, p2, p1

    #@23
    sub-int/2addr v0, v1

    #@24
    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@26
    .line 1053
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1009
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    #@2
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    #@4
    if-lt p1, v1, :cond_1

    #@6
    .line 1010
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1011
    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@12
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@14
    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 1012
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 1013
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@20
    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@22
    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@24
    add-int/2addr v2, p1

    #@25
    aget-object v0, v1, v2

    #@27
    .line 1014
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@29
    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2b
    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@2d
    add-int/2addr v2, p1

    #@2e
    aput-object p2, v1, v2

    #@30
    .line 1015
    return-object v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 1027
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@2
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1028
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 1029
    :cond_0
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@10
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1218
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@4
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1219
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 1220
    :cond_0
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@12
    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@14
    .line 1221
    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@16
    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    #@18
    add-int/2addr v3, v4

    #@19
    iget v4, p0, Ljava/util/ArrayList$SubList;->modCount:I

    #@1b
    .line 1220
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    #@1e
    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
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
    .line 1209
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    #@2
    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    #@5
    .line 1210
    new-instance v0, Ljava/util/ArrayList$SubList;

    #@7
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@9
    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    #@b
    move-object v2, p0

    #@c
    move v4, p1

    #@d
    move v5, p2

    #@e
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    #@11
    return-object v0
.end method
