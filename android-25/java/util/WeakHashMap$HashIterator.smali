.class abstract Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private currentKey:Ljava/lang/Object;

.field private entry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private index:I

.field private lastReturned:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;

.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 761
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 745
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@8
    .line 746
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    #@a
    .line 747
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@c
    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    #@e
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@10
    .line 753
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@12
    .line 759
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    #@14
    .line 762
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_0
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    #@1d
    .line 761
    return-void

    #@1e
    .line 762
    :cond_0
    iget-object v0, p1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@20
    array-length v0, v0

    #@21
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 766
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@4
    iget-object v2, v3, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@6
    .line 768
    .local v2, "t":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@8
    if-nez v3, :cond_3

    #@a
    .line 769
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@c
    .line 770
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    #@e
    .line 771
    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_1

    #@10
    if-lez v1, :cond_1

    #@12
    .line 772
    add-int/lit8 v1, v1, -0x1

    #@14
    aget-object v0, v2, v1

    #@16
    goto :goto_1

    #@17
    .line 773
    :cond_1
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@19
    .line 774
    iput v1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    #@1b
    .line 775
    if-nez v0, :cond_2

    #@1d
    .line 776
    iput-object v4, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    #@1f
    .line 777
    return v5

    #@20
    .line 779
    :cond_2
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@26
    .line 780
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 781
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@2c
    iget-object v3, v3, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@2e
    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@30
    goto :goto_0

    #@31
    .line 783
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "i":I
    :cond_3
    const/4 v3, 0x1

    #@32
    return v3
.end method

.method protected nextEntry()Ljava/util/WeakHashMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 788
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@3
    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    #@5
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 789
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@b
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@e
    throw v0

    #@f
    .line 790
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@11
    if-nez v0, :cond_1

    #@13
    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 793
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@1b
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    #@1d
    .line 794
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@1f
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@21
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    #@23
    .line 795
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@25
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    #@27
    .line 796
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@29
    .line 797
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    #@2b
    return-object v0

    #@2c
    .line 791
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@31
    throw v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 801
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 803
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@d
    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    #@f
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 804
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@15
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@18
    throw v0

    #@19
    .line 806
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@1b
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 807
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@22
    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    #@24
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@26
    .line 808
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    #@28
    .line 809
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    #@2a
    .line 800
    return-void
.end method
