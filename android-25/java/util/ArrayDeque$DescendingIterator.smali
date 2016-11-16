.class Ljava/util/ArrayDeque$DescendingIterator;
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
    name = "DescendingIterator"
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
    .line 664
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 665
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@7
    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    #@9
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@b
    .line 666
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@d
    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    #@f
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@11
    .line 667
    const/4 v0, -0x1

    #@12
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@14
    .line 664
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ArrayDeque;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 670
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@2
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

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
    .line 674
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@2
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 675
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 676
    :cond_0
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iget-object v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@12
    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@14
    array-length v2, v2

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    and-int/2addr v1, v2

    #@18
    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@1a
    .line 678
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@1c
    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1e
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@20
    aget-object v0, v1, v2

    #@22
    .line 679
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@24
    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    #@26
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@28
    if-ne v1, v2, :cond_1

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 680
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2e
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@31
    throw v1

    #@32
    .line 681
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@34
    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@36
    .line 682
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 688
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@c
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 689
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@1a
    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1c
    array-length v1, v1

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    and-int/2addr v0, v1

    #@20
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@22
    .line 690
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@24
    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    #@26
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@28
    .line 692
    :cond_1
    const/4 v0, -0x1

    #@29
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@2b
    .line 685
    return-void
.end method
