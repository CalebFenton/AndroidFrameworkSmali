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
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o lastReturned:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o next:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o nextIndex:I

.field final synthetic blacklist this$0:Ljava/util/LinkedList;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedList;I)V
    .registers 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 888
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 890
    iget v0, p1, Ljava/util/LinkedList;->size:I

    if-ne p2, v0, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object p1

    :goto_15
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 891
    iput p2, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 892
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 954
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 956
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_10

    .line 957
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    goto :goto_17

    .line 959
    :cond_10
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 960
    :goto_17
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 961
    iget v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 962
    return-void
.end method

.method final greylist-max-o checkForComodification()V
    .registers 3

    .line 976
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 978
    return-void

    .line 977
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 965
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :goto_3
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_2b

    .line 967
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 969
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 970
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    goto :goto_3

    .line 972
    :cond_2b
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 973
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 895
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 910
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 899
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 900
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 903
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 904
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 905
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 906
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0

    .line 901
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 924
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 914
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 915
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 918
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_16

    :cond_12
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    :goto_16
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 919
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 920
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0

    .line 916
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 928
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 932
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 933
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-eqz v0, :cond_2b

    .line 936
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 937
    .local v0, "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 938
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-ne v1, v2, :cond_1b

    .line 939
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    goto :goto_21

    .line 941
    :cond_1b
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 942
    :goto_21
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 943
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 944
    return-void

    .line 934
    .end local v0    # "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 947
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-eqz v0, :cond_c

    .line 949
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 950
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iput-object p1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 951
    return-void

    .line 948
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
