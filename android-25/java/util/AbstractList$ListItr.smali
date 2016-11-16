.class Ljava/util/AbstractList$ListItr;
.super Ljava/util/AbstractList$Itr;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .locals 1
    .param p2, "index"    # I

    #@0
    .prologue
    .line 391
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V

    #@6
    .line 392
    iput p2, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    #@8
    .line 391
    return-void
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
    .line 434
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    #@3
    .line 437
    :try_start_0
    iget v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    #@5
    .line 438
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@7
    invoke-virtual {v2, v1, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@a
    .line 439
    const/4 v2, -0x1

    #@b
    iput v2, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    #@d
    .line 440
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    #@11
    .line 441
    iget-object v2, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@13
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@15
    iput v2, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 433
    return-void

    #@18
    .line 442
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@19
    .line 443
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@1b
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1e
    throw v2
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    const/4 v0, 0x0

    #@1
    .line 396
    iget v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

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
    .line 413
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

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
    .line 400
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    #@3
    .line 402
    :try_start_0
    iget v3, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 403
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@9
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    .line 404
    .local v2, "previous":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    #@f
    iput v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 405
    return-object v2

    #@12
    .line 406
    .end local v1    # "i":I
    .end local v2    # "previous":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    #@13
    .line 407
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    #@16
    .line 408
    new-instance v3, Ljava/util/NoSuchElementException;

    #@18
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@1b
    throw v3
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 417
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

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
    .line 421
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 423
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    #@d
    .line 426
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@f
    iget v2, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    #@11
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 427
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    #@16
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@18
    iput v1, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 420
    return-void

    #@1b
    .line 428
    :catch_0
    move-exception v0

    #@1c
    .line 429
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@1e
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@21
    throw v1
.end method
