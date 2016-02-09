.class final Ljava/util/AbstractList$FullListIterator;
.super Ljava/util/AbstractList$SimpleListIterator;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FullListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Simple",
        "ListIterator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .locals 1
    .param p2, "start"    # I

    #@0
    .prologue
    .line 89
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@2
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    #@5
    .line 90
    if-ltz p2, :cond_0

    #@7
    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    #@a
    move-result v0

    #@b
    if-gt p2, v0, :cond_0

    #@d
    .line 91
    add-int/lit8 v0, p2, -0x1

    #@f
    iput v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@11
    .line 89
    return-void

    #@12
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    #@2
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@4
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 100
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@a
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@c
    add-int/lit8 v2, v2, 0x1

    #@e
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 104
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@17
    .line 105
    const/4 v1, -0x1

    #@18
    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    #@1a
    .line 106
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@1c
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@1e
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    #@20
    if-eq v1, v2, :cond_0

    #@22
    .line 107
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@24
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@26
    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    #@28
    .line 97
    :cond_0
    return-void

    #@29
    .line 101
    :catch_0
    move-exception v0

    #@2a
    .line 102
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    #@2c
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@2f
    throw v1

    #@30
    .line 110
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@32
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@35
    throw v1
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    const/4 v0, 0x0

    #@1
    .line 115
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@3
    if-ltz v1, :cond_0

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
    .line 119
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
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
    .line 123
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@4
    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 125
    :try_start_0
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@a
    iget v3, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@c
    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 126
    .local v1, "result":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@12
    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    #@14
    .line 127
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 128
    return-object v1

    #@1b
    .line 129
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    #@1c
    .line 130
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    #@1e
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@21
    throw v2

    #@22
    .line 133
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@24
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@27
    throw v2
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 137
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    #@2
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
    .line 141
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    #@2
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@4
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 143
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    #@a
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    #@c
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 140
    return-void

    #@10
    .line 144
    :catch_0
    move-exception v0

    #@11
    .line 145
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@16
    throw v1

    #@17
    .line 148
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@19
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1c
    throw v1
.end method
