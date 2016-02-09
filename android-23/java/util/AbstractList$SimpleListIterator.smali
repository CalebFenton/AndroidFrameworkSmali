.class Ljava/util/AbstractList$SimpleListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastPosition:I

.field pos:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;)V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList$SimpleListIterator;, "Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, -0x1

    #@1
    .line 44
    iput-object p1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 38
    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@8
    .line 42
    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    #@a
    .line 45
    iget v0, p1, Ljava/util/AbstractList;->modCount:I

    #@c
    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    #@e
    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 49
    .local p0, "this":Ljava/util/AbstractList$SimpleListIterator;, "Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@6
    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "this":Ljava/util/AbstractList$SimpleListIterator;, "Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@4
    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 55
    :try_start_0
    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@a
    iget v3, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@c
    add-int/lit8 v3, v3, 0x1

    #@e
    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 56
    .local v1, "result":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@18
    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 57
    return-object v1

    #@1b
    .line 58
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    #@1c
    .line 59
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    #@1e
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@21
    throw v2

    #@22
    .line 62
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@24
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@27
    throw v2
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList$SimpleListIterator;, "Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    const/4 v3, -0x1

    #@1
    .line 66
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    #@3
    if-ne v1, v3, :cond_0

    #@5
    .line 67
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 70
    :cond_0
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    #@d
    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@f
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 71
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@15
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@18
    throw v1

    #@19
    .line 75
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@1b
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 80
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    #@22
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@24
    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    #@26
    .line 81
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@28
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    #@2a
    if-ne v1, v2, :cond_2

    #@2c
    .line 82
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    #@32
    .line 84
    :cond_2
    iput v3, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    #@34
    .line 65
    return-void

    #@35
    .line 76
    :catch_0
    move-exception v0

    #@36
    .line 77
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@38
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@3b
    throw v1
.end method
