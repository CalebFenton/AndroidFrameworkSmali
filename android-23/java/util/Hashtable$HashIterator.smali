.class abstract Ljava/util/Hashtable$HashIterator;
.super Ljava/lang/Object;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 4

    #@0
    .prologue
    .line 712
    .local p0, "this":Ljava/util/Hashtable$HashIterator;, "Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 710
    iget-object v2, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@7
    invoke-static {v2}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@a
    move-result v2

    #@b
    iput v2, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    #@d
    .line 713
    invoke-static {p1}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@10
    move-result-object v1

    #@11
    .line 714
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@12
    .line 715
    :goto_0
    if-nez v0, :cond_0

    #@14
    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@16
    array-length v3, v1

    #@17
    if-ge v2, v3, :cond_0

    #@19
    .line 716
    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@1f
    aget-object v0, v1, v2

    #@21
    .local v0, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_0

    #@22
    .line 718
    .end local v0    # "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_0
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@24
    .line 712
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 722
    .local p0, "this":Ljava/util/Hashtable$HashIterator;, "Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

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

.method nextEntry()Ljava/util/Hashtable$HashtableEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 726
    .local p0, "this":Ljava/util/Hashtable$HashIterator;, "Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-static {v3}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@5
    move-result v3

    #@6
    iget v4, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 727
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v3

    #@10
    .line 728
    :cond_0
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@12
    if-nez v3, :cond_1

    #@14
    .line 729
    new-instance v3, Ljava/util/NoSuchElementException;

    #@16
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@19
    throw v3

    #@1a
    .line 731
    :cond_1
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@1c
    .line 732
    .local v0, "entryToReturn":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@1e
    invoke-static {v3}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@21
    move-result-object v2

    #@22
    .line 733
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@24
    .line 734
    .local v1, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-nez v1, :cond_2

    #@26
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@28
    array-length v4, v2

    #@29
    if-ge v3, v4, :cond_2

    #@2b
    .line 735
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@2d
    add-int/lit8 v4, v3, 0x1

    #@2f
    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@31
    aget-object v1, v2, v3

    #@33
    goto :goto_0

    #@34
    .line 737
    :cond_2
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@36
    .line 738
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    #@38
    return-object v0
.end method

.method nextEntryNotFailFast()Ljava/util/Hashtable$HashtableEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 742
    .local p0, "this":Ljava/util/Hashtable$HashIterator;, "Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 743
    new-instance v3, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v3

    #@a
    .line 745
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@c
    .line 746
    .local v0, "entryToReturn":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@e
    invoke-static {v3}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@11
    move-result-object v2

    #@12
    .line 747
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@14
    .line 748
    .local v1, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-nez v1, :cond_1

    #@16
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@18
    array-length v4, v2

    #@19
    if-ge v3, v4, :cond_1

    #@1b
    .line 749
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@1d
    add-int/lit8 v4, v3, 0x1

    #@1f
    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    #@21
    aget-object v1, v2, v3

    #@23
    goto :goto_0

    #@24
    .line 751
    :cond_1
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    #@26
    .line 752
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    #@28
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$HashIterator;, "Ljava/util/Hashtable<TK;TV;>.HashIterator;"
    const/4 v2, 0x0

    #@1
    .line 756
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 757
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 758
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@d
    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@10
    move-result v0

    #@11
    iget v1, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 759
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@17
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 760
    :cond_1
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@1d
    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    #@1f
    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 761
    iput-object v2, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    #@26
    .line 762
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #@28
    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    #@2e
    .line 755
    return-void
.end method
