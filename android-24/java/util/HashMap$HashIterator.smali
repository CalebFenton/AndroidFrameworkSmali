.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 3

    #@0
    .prologue
    .line 836
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator<TE;>;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 837
    iget v1, p1, Ljava/util/HashMap;->modCount:I

    #@7
    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@9
    .line 838
    iget v1, p1, Ljava/util/HashMap;->size:I

    #@b
    if-lez v1, :cond_1

    #@d
    .line 839
    iget-object v0, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@f
    .line 840
    .local v0, "t":[Ljava/util/HashMap$HashMapEntry;
    :cond_0
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@11
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_1

    #@14
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@16
    add-int/lit8 v2, v1, 0x1

    #@18
    iput v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@1a
    aget-object v1, v0, v1

    #@1c
    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 836
    .end local v0    # "t":[Ljava/util/HashMap$HashMapEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 846
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method final nextEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 850
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@2
    iget v2, v2, Ljava/util/HashMap;->modCount:I

    #@4
    iget v3, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 851
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v2

    #@e
    .line 852
    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    #@10
    .line 853
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_1

    #@12
    .line 854
    new-instance v2, Ljava/util/NoSuchElementException;

    #@14
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@17
    throw v2

    #@18
    .line 856
    :cond_1
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@1a
    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    #@1c
    if-nez v2, :cond_3

    #@1e
    .line 857
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@20
    iget-object v1, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@22
    .line 858
    .local v1, "t":[Ljava/util/HashMap$HashMapEntry;
    :cond_2
    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@24
    array-length v3, v1

    #@25
    if-ge v2, v3, :cond_3

    #@27
    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@29
    add-int/lit8 v3, v2, 0x1

    #@2b
    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    #@2d
    aget-object v2, v1, v2

    #@2f
    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 861
    .end local v1    # "t":[Ljava/util/HashMap$HashMapEntry;
    :cond_3
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@35
    .line 862
    return-object v0
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 866
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 867
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 868
    :cond_0
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@d
    iget v1, v1, Ljava/util/HashMap;->modCount:I

    #@f
    iget v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 869
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@15
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@18
    throw v1

    #@19
    .line 870
    :cond_1
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@1b
    iget-object v0, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1d
    .line 871
    .local v0, "k":Ljava/lang/Object;
    iput-object v3, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@1f
    .line 872
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@21
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@24
    .line 873
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@26
    iget v1, v1, Ljava/util/HashMap;->modCount:I

    #@28
    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@2a
    .line 865
    return-void
.end method
