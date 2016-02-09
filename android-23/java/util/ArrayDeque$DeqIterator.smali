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
    .line 579
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 583
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@7
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get1(Ljava/util/ArrayDeque;)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@d
    .line 589
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@f
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get2(Ljava/util/ArrayDeque;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@15
    .line 595
    const/4 v0, -0x1

    #@16
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@18
    .line 579
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
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 598
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
    .line 602
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 603
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 604
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@e
    invoke-static {v1}, Ljava/util/ArrayDeque;->-get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@14
    aget-object v0, v1, v2

    #@16
    .line 607
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@18
    invoke-static {v1}, Ljava/util/ArrayDeque;->-get2(Ljava/util/ArrayDeque;)I

    #@1b
    move-result v1

    #@1c
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@1e
    if-ne v1, v2, :cond_1

    #@20
    if-nez v0, :cond_2

    #@22
    .line 608
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@24
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@27
    throw v1

    #@28
    .line 609
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2a
    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@2c
    .line 610
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    iget-object v2, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@32
    invoke-static {v2}, Ljava/util/ArrayDeque;->-get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    array-length v2, v2

    #@37
    add-int/lit8 v2, v2, -0x1

    #@39
    and-int/2addr v1, v2

    #@3a
    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@3c
    .line 611
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 615
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 617
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@c
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@e
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->-wrap0(Ljava/util/ArrayDeque;I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 618
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

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
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    #@24
    .line 619
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #@26
    invoke-static {v0}, Ljava/util/ArrayDeque;->-get2(Ljava/util/ArrayDeque;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    #@2c
    .line 621
    :cond_1
    const/4 v0, -0x1

    #@2d
    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #@2f
    .line 614
    return-void
.end method
