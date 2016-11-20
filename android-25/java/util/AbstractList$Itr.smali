.class Ljava/util/AbstractList$Itr;
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
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method private constructor <init>(Ljava/util/AbstractList;)V
    .locals 1

    #@0
    .prologue
    .line 330
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 334
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@8
    .line 341
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@b
    .line 348
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@d
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@f
    iput v0, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    #@11
    .line 330
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/AbstractList;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;)V

    #@3
    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .locals 2

    #@0
    .prologue
    .line 385
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@2
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@4
    iget v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 386
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 384
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@4
    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    #@7
    move-result v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
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
    .line 355
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    #@3
    .line 357
    :try_start_0
    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@5
    .line 358
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@7
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    .line 359
    .local v2, "next":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@d
    .line 360
    add-int/lit8 v3, v1, 0x1

    #@f
    iput v3, p0, Ljava/util/AbstractList$Itr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 361
    return-object v2

    #@12
    .line 362
    .end local v1    # "i":I
    .end local v2    # "next":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    #@13
    .line 363
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    #@16
    .line 364
    new-instance v3, Ljava/util/NoSuchElementException;

    #@18
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@1b
    throw v3
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 369
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 371
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    #@d
    .line 374
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@f
    iget v2, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@11
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    #@14
    .line 375
    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@16
    iget v2, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@18
    if-ge v1, v2, :cond_1

    #@1a
    .line 376
    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@1c
    add-int/lit8 v1, v1, -0x1

    #@1e
    iput v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    #@20
    .line 377
    :cond_1
    const/4 v1, -0x1

    #@21
    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    #@23
    .line 378
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    #@25
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@27
    iput v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 368
    return-void

    #@2a
    .line 379
    :catch_0
    move-exception v0

    #@2b
    .line 380
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2d
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@30
    throw v1
.end method
