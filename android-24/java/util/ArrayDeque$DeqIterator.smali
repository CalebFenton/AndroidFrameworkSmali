.class Ljava/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ljava/util/ArrayDeque;)V
    .locals 1

    #@0
    .prologue
    .line 594
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 598
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@7
    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    #@9
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@b
    .line 604
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@d
    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    #@f
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@11
    .line 610
    const/4 v0, -0x1

    #@12
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@14
    .line 594
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ArrayDeque;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;)V

    #@3
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 642
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 643
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@5
    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@7
    .line 644
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    #@8
    add-int/lit8 v4, v5, -0x1

    #@a
    .local v4, "m":I
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@c
    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@e
    .line 645
    .local v3, "i":I
    iput v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@10
    .line 646
    :goto_0
    if-eq v3, v2, :cond_1

    #@12
    .line 647
    aget-object v1, v0, v3

    #@14
    .line 648
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    #@16
    and-int v3, v5, v4

    #@18
    .line 652
    if-nez v1, :cond_0

    #@1a
    .line 653
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@1c
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1f
    throw v5

    #@20
    .line 654
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@23
    goto :goto_0

    #@24
    .line 641
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 613
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 617
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 618
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 620
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@e
    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@10
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@12
    aget-object v0, v1, v2

    #@14
    .line 623
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@16
    iget v1, v1, Ljava/util/ArrayDeque;->tail:I

    #@18
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 624
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@20
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@23
    throw v1

    #@24
    .line 625
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@26
    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@28
    .line 626
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    iget-object v2, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@2e
    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@30
    array-length v2, v2

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    and-int/2addr v1, v2

    #@34
    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@36
    .line 627
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 631
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 633
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@c
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 634
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@1a
    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1c
    array-length v1, v1

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    and-int/2addr v0, v1

    #@20
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@22
    .line 635
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@24
    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    #@26
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@28
    .line 637
    :cond_1
    const/4 v0, -0x1

    #@29
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@2b
    .line 630
    return-void
.end method
