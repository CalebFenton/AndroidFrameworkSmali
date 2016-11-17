.class Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    #@0
    .prologue
    .line 677
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 682
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Hashtable$EntrySet;->add(Ljava/util/Map$Entry;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 683
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 732
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 731
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    const/4 v8, 0x0

    #@1
    .line 687
    instance-of v6, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 688
    return v8

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 689
    check-cast v1, Ljava/util/Map$Entry;

    #@9
    .line 690
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    .line 691
    .local v4, "key":Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@f
    invoke-static {v6}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@12
    move-result-object v5

    #@13
    .line 692
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    #@16
    move-result v2

    #@17
    .line 693
    .local v2, "hash":I
    const v6, 0x7fffffff

    #@1a
    and-int/2addr v6, v2

    #@1b
    array-length v7, v5

    #@1c
    rem-int v3, v6, v7

    #@1e
    .line 695
    .local v3, "index":I
    aget-object v0, v5, v3

    #@20
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;
    :goto_0
    if-eqz v0, :cond_2

    #@22
    .line 696
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@24
    if-ne v6, v2, :cond_1

    #@26
    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 697
    const/4 v6, 0x1

    #@2d
    return v6

    #@2e
    .line 695
    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@30
    goto :goto_0

    #@31
    .line 698
    :cond_2
    return v8
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 679
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v0, v1}, Ljava/util/Hashtable;->-wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 702
    instance-of v7, p1, Ljava/util/Map$Entry;

    #@4
    if-nez v7, :cond_0

    #@6
    .line 703
    return v10

    #@7
    :cond_0
    move-object v1, p1

    #@8
    .line 704
    check-cast v1, Ljava/util/Map$Entry;

    #@a
    .line 705
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    .line 706
    .local v4, "key":Ljava/lang/Object;, "TK;"
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@10
    invoke-static {v7}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@13
    move-result-object v6

    #@14
    .line 707
    .local v6, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    .line 708
    .local v2, "hash":I
    const v7, 0x7fffffff

    #@1b
    and-int/2addr v7, v2

    #@1c
    array-length v8, v6

    #@1d
    rem-int v3, v7, v8

    #@1f
    .line 710
    .local v3, "index":I
    aget-object v0, v6, v3

    #@21
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v5, 0x0

    #@22
    :goto_0
    if-eqz v0, :cond_3

    #@24
    .line 712
    iget v7, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@26
    if-ne v7, v2, :cond_2

    #@28
    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 713
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@30
    invoke-static {v7}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@33
    move-result v8

    #@34
    add-int/lit8 v8, v8, 0x1

    #@36
    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    #@39
    .line 714
    if-eqz v5, :cond_1

    #@3b
    .line 715
    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3d
    iput-object v7, v5, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3f
    .line 719
    :goto_1
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@41
    invoke-static {v7}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@44
    move-result v8

    #@45
    add-int/lit8 v8, v8, -0x1

    #@47
    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    #@4a
    .line 720
    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@4c
    .line 721
    const/4 v7, 0x1

    #@4d
    return v7

    #@4e
    .line 717
    :cond_1
    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@50
    aput-object v7, v6, v3

    #@52
    goto :goto_1

    #@53
    .line 711
    :cond_2
    move-object v5, v0

    #@54
    .local v5, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@56
    goto :goto_0

    #@57
    .line 724
    .end local v5    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    return v10
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 728
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
