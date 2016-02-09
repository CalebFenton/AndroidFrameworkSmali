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
    .line 625
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 631
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@7
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get2(Ljava/util/ArrayDeque;)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@d
    .line 632
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@f
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get1(Ljava/util/ArrayDeque;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@15
    .line 633
    const/4 v0, -0x1

    #@16
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@18
    .line 625
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
    .line 636
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
    .line 640
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@2
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 641
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 642
    :cond_0
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iget-object v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@12
    invoke-static {v2}, Ljava/util/ArrayDeque;->-get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    array-length v2, v2

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    and-int/2addr v1, v2

    #@1a
    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@1c
    .line 643
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@1e
    invoke-static {v1}, Ljava/util/ArrayDeque;->-get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@24
    aget-object v0, v1, v2

    #@26
    .line 644
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@28
    invoke-static {v1}, Ljava/util/ArrayDeque;->-get1(Ljava/util/ArrayDeque;)I

    #@2b
    move-result v1

    #@2c
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@2e
    if-ne v1, v2, :cond_1

    #@30
    if-nez v0, :cond_2

    #@32
    .line 645
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@34
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@37
    throw v1

    #@38
    .line 646
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@3a
    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@3c
    .line 647
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 651
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 653
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@c
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@e
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->-wrap0(Ljava/util/ArrayDeque;I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 654
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@1a
    invoke-static {v1}, Ljava/util/ArrayDeque;->-get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    array-length v1, v1

    #@1f
    add-int/lit8 v1, v1, -0x1

    #@21
    and-int/2addr v0, v1

    #@22
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    #@24
    .line 655
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #@26
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get1(Ljava/util/ArrayDeque;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    #@2c
    .line 657
    :cond_1
    const/4 v0, -0x1

    #@2d
    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #@2f
    .line 650
    return-void
.end method
