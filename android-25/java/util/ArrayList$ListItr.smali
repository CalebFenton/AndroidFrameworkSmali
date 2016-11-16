.class Ljava/util/ArrayList$ListItr;
.super Ljava/util/ArrayList$Itr;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "index"    # I

    #@0
    .prologue
    .line 888
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@2
    .line 889
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    #@6
    .line 890
    iput p2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@8
    .line 888
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 933
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@2
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 934
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v2

    #@e
    .line 937
    :cond_0
    :try_start_0
    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@10
    .line 938
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@15
    .line 939
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@19
    .line 940
    const/4 v2, -0x1

    #@1a
    iput v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    #@1c
    .line 941
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@1e
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@20
    iput v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    #@22
    .line 942
    iget v2, p0, Ljava/util/ArrayList$ListItr;->limit:I

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    iput v2, p0, Ljava/util/ArrayList$ListItr;->limit:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 932
    return-void

    #@29
    .line 943
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@2a
    .line 944
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@2c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2f
    throw v2
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    const/4 v0, 0x0

    #@1
    .line 894
    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 898
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@2
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 907
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@2
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@4
    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 908
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v2

    #@e
    .line 909
    :cond_0
    iget v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@10
    add-int/lit8 v1, v2, -0x1

    #@12
    .line 910
    .local v1, "i":I
    if-gez v1, :cond_1

    #@14
    .line 911
    new-instance v2, Ljava/util/NoSuchElementException;

    #@16
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 912
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@1c
    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1e
    .line 913
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v2, v0

    #@1f
    if-lt v1, v2, :cond_2

    #@21
    .line 914
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v2

    #@27
    .line 915
    :cond_2
    iput v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@29
    .line 916
    iput v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    #@2b
    aget-object v2, v0, v1

    #@2d
    return-object v2
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 902
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 920
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 921
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 922
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@c
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@e
    iget v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 923
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@14
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@17
    throw v1

    #@18
    .line 926
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    #@1a
    iget v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    #@1c
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 919
    return-void

    #@20
    .line 927
    :catch_0
    move-exception v0

    #@21
    .line 928
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v1
.end method
