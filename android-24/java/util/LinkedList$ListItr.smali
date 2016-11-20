.class Ljava/util/LinkedList$ListItr;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private lastReturned:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private next:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .locals 2
    .param p2, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 877
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 872
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@8
    .line 875
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@a
    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    #@c
    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@e
    .line 879
    iget v1, p1, Ljava/util/LinkedList;->size:I

    #@10
    if-ne p2, v1, :cond_0

    #@12
    :goto_0
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@14
    .line 880
    iput p2, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@16
    .line 877
    return-void

    #@17
    .line 879
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    .line 943
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@4
    .line 944
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@6
    .line 945
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 946
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    #@f
    .line 949
    :goto_0
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@15
    .line 950
    iget v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@1b
    .line 942
    return-void

    #@1c
    .line 948
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@1e
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@20
    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@23
    goto :goto_0
.end method

.method final checkForComodification()V
    .locals 2

    #@0
    .prologue
    .line 966
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@2
    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    #@4
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 967
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 965
    :cond_0
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 955
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 956
    :goto_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@5
    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    #@7
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@9
    if-ne v0, v1, :cond_0

    #@b
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@d
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@f
    iget v1, v1, Ljava/util/LinkedList;->size:I

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 957
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@15
    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@17
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1a
    .line 958
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@1c
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@1e
    .line 959
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@20
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@22
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@24
    .line 960
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@2a
    goto :goto_0

    #@2b
    .line 962
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@2e
    .line 954
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 884
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@2
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@4
    iget v1, v1, Ljava/util/LinkedList;->size:I

    #@6
    if-ge v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    const/4 v0, 0x0

    #@1
    .line 899
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 888
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@3
    .line 889
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasNext()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 890
    new-instance v0, Ljava/util/NoSuchElementException;

    #@b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@e
    throw v0

    #@f
    .line 892
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@11
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@13
    .line 893
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@15
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@17
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@19
    .line 894
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@1f
    .line 895
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@21
    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@23
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 913
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@2
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 903
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@3
    .line 904
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 905
    new-instance v0, Ljava/util/NoSuchElementException;

    #@b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@e
    throw v0

    #@f
    .line 907
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@11
    if-nez v0, :cond_1

    #@13
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@15
    iget-object v0, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@17
    :goto_0
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@19
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@1b
    .line 908
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@1d
    add-int/lit8 v0, v0, -0x1

    #@1f
    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@21
    .line 909
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@23
    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@25
    return-object v0

    #@26
    .line 907
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@28
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@2a
    goto :goto_0
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 917
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    const/4 v3, 0x0

    #@1
    .line 921
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@4
    .line 922
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 923
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 925
    :cond_0
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@10
    iget-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@12
    .line 926
    .local v0, "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    #@14
    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@16
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@19
    .line 927
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@1b
    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    .line 928
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    #@21
    .line 931
    :goto_0
    iput-object v3, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@23
    .line 932
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    #@29
    .line 920
    return-void

    #@2a
    .line 930
    :cond_1
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@2c
    add-int/lit8 v1, v1, -0x1

    #@2e
    iput v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    #@30
    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 937
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 938
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    #@d
    .line 939
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    #@f
    iput-object p1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@11
    .line 935
    return-void
.end method
