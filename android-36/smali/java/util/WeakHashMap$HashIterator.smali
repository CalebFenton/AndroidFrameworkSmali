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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o currentKey:Ljava/lang/Object;

.field private greylist-max-o entry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o index:I

.field private greylist-max-o lastReturned:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o nextKey:Ljava/lang/Object;

.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 787
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 788
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x0

    goto :goto_16

    :cond_13
    iget-object p1, p1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length p1, p1

    :goto_16
    iput p1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 789
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 792
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 794
    .local v0, "t":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_4
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v1, :cond_31

    .line 795
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 796
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v2, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 797
    .local v2, "i":I
    :goto_c
    if-nez v1, :cond_15

    if-lez v2, :cond_15

    .line 798
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    goto :goto_c

    .line 799
    :cond_15
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 800
    iput v2, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 801
    if-nez v1, :cond_20

    .line 802
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 803
    const/4 v3, 0x0

    return v3

    .line 805
    :cond_20
    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 806
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v3, :cond_30

    .line 807
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v3, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 808
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    :cond_30
    goto :goto_4

    .line 809
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method protected greylist-max-o nextEntry()Ljava/util/WeakHashMap$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 814
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2d

    .line 816
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_19

    .line 817
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 819
    :cond_19
    :goto_19
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 820
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 821
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    return-object v0

    .line 815
    :cond_2d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 827
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_25

    .line 829
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1f

    .line 832
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 835
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 836
    return-void

    .line 830
    :cond_1f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 828
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
