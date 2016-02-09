.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 4

    #@0
    .prologue
    .line 770
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 766
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@7
    iget-object v2, v2, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@9
    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@b
    .line 768
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@d
    iget v2, v2, Ljava/util/HashMap;->modCount:I

    #@f
    iput v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@11
    .line 771
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 772
    iget-object v1, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@17
    .line 773
    .local v1, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@18
    .line 774
    :goto_0
    if-nez v0, :cond_0

    #@1a
    iget v2, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@1c
    array-length v3, v1

    #@1d
    if-ge v2, v3, :cond_0

    #@1f
    .line 775
    iget v2, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@21
    add-int/lit8 v3, v2, 0x1

    #@23
    iput v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@25
    aget-object v0, v1, v2

    #@27
    .local v0, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    goto :goto_0

    #@28
    .line 777
    .end local v0    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@2a
    .line 770
    .end local v1    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 782
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

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

.method nextEntry()Ljava/util/HashMap$HashMapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 786
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@2
    iget v3, v3, Ljava/util/HashMap;->modCount:I

    #@4
    iget v4, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 787
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v3

    #@e
    .line 788
    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@10
    if-nez v3, :cond_1

    #@12
    .line 789
    new-instance v3, Ljava/util/NoSuchElementException;

    #@14
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@17
    throw v3

    #@18
    .line 791
    :cond_1
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@1a
    .line 792
    .local v0, "entryToReturn":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@1c
    iget-object v2, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@1e
    .line 793
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@20
    .line 794
    .local v1, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-nez v1, :cond_2

    #@22
    iget v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@24
    array-length v4, v2

    #@25
    if-ge v3, v4, :cond_2

    #@27
    .line 795
    iget v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@29
    add-int/lit8 v4, v3, 0x1

    #@2b
    iput v4, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    #@2d
    aget-object v1, v2, v3

    #@2f
    goto :goto_0

    #@30
    .line 797
    :cond_2
    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    #@32
    .line 798
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    #@34
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    const/4 v2, 0x0

    #@1
    .line 802
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 804
    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@d
    iget v0, v0, Ljava/util/HashMap;->modCount:I

    #@f
    iget v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 805
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@15
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@18
    throw v0

    #@19
    .line 806
    :cond_1
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@1b
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    #@1d
    iget-object v1, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 807
    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    #@24
    .line 808
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    #@26
    iget v0, v0, Ljava/util/HashMap;->modCount:I

    #@28
    iput v0, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    #@2a
    .line 801
    return-void
.end method
