.class Ljava/util/ArrayList$ArrayListIterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private remaining:I

.field private removalIndex:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    #@0
    .prologue
    .line 555
    .local p0, "this":Ljava/util/ArrayList$ArrayListIterator;, "Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 557
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@7
    iget v0, v0, Ljava/util/ArrayList;->size:I

    #@9
    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    #@b
    .line 560
    const/4 v0, -0x1

    #@c
    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    #@e
    .line 563
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@10
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@12
    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    #@14
    .line 555
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$ArrayListIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ArrayList;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList$ArrayListIterator;, "Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList$ArrayListIterator;, "Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    const/4 v0, 0x0

    #@1
    .line 566
    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
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
    .line 570
    .local p0, "this":Ljava/util/ArrayList$ArrayListIterator;, "Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@2
    .line 571
    .local v0, "ourList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    #@4
    .line 572
    .local v1, "rem":I
    iget v2, v0, Ljava/util/ArrayList;->modCount:I

    #@6
    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 573
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v2

    #@10
    .line 575
    :cond_0
    if-nez v1, :cond_1

    #@12
    .line 576
    new-instance v2, Ljava/util/NoSuchElementException;

    #@14
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@17
    throw v2

    #@18
    .line 578
    :cond_1
    add-int/lit8 v2, v1, -0x1

    #@1a
    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    #@1c
    .line 579
    iget-object v2, v0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@1e
    iget v3, v0, Ljava/util/ArrayList;->size:I

    #@20
    sub-int/2addr v3, v1

    #@21
    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    #@23
    aget-object v2, v2, v3

    #@25
    return-object v2
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .line 583
    .local p0, "this":Ljava/util/ArrayList$ArrayListIterator;, "Ljava/util/ArrayList<TE;>.ArrayListIterator;"
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@2
    iget-object v0, v2, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@4
    .line 584
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    #@6
    .line 585
    .local v1, "removalIdx":I
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@8
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@a
    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 586
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@10
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@13
    throw v2

    #@14
    .line 588
    :cond_0
    if-gez v1, :cond_1

    #@16
    .line 589
    new-instance v2, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@1b
    throw v2

    #@1c
    .line 591
    :cond_1
    add-int/lit8 v2, v1, 0x1

    #@1e
    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    #@20
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 592
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@25
    iget v3, v2, Ljava/util/ArrayList;->size:I

    #@27
    add-int/lit8 v3, v3, -0x1

    #@29
    iput v3, v2, Ljava/util/ArrayList;->size:I

    #@2b
    const/4 v2, 0x0

    #@2c
    aput-object v2, v0, v3

    #@2e
    .line 593
    const/4 v2, -0x1

    #@2f
    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    #@31
    .line 594
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    #@33
    iget v3, v2, Ljava/util/ArrayList;->modCount:I

    #@35
    add-int/lit8 v3, v3, 0x1

    #@37
    iput v3, v2, Ljava/util/ArrayList;->modCount:I

    #@39
    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    #@3b
    .line 582
    return-void
.end method
