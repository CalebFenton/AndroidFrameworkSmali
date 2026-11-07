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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Hashtable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 708
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Hashtable;Ljava/util/Hashtable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 708
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 714
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 762
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 763
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 718
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 720
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 721
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/util/Hashtable;->-$$Nest$fgettable(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    .line 722
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 723
    .local v4, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v4

    array-length v6, v3

    rem-int/2addr v5, v6

    .line 725
    .local v5, "index":I
    aget-object v6, v3, v5

    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1e
    if-eqz v6, :cond_2f

    .line 726
    iget v7, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v7, v4, :cond_2c

    invoke-virtual {v6, v0}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 727
    const/4 v1, 0x1

    return v1

    .line 725
    :cond_2c
    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1e

    .line 728
    .end local v6    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2f
    return v1

    .line 719
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v4    # "hash":I
    .end local v5    # "index":I
    :cond_30
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-$$Nest$mgetIterator(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .line 732
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 734
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 735
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/util/Hashtable;->-$$Nest$fgettable(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    .line 736
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 737
    .local v4, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v4

    array-length v6, v3

    rem-int/2addr v5, v6

    .line 740
    .local v5, "index":I
    aget-object v6, v3, v5

    .line 741
    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v7, 0x0

    .local v7, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1f
    if-eqz v6, :cond_53

    .line 742
    iget v8, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v8, v4, :cond_4f

    invoke-virtual {v6, v0}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 743
    if-eqz v7, :cond_32

    .line 744
    iget-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, v7, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_36

    .line 746
    :cond_32
    iget-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v1, v3, v5

    .line 748
    :goto_36
    const/4 v1, 0x0

    iput-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/util/Hashtable;->-$$Nest$fgetmodCount(Ljava/util/Hashtable;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/util/Hashtable;->-$$Nest$fputmodCount(Ljava/util/Hashtable;I)V

    .line 750
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/util/Hashtable;->-$$Nest$fgetcount(Ljava/util/Hashtable;)I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/util/Hashtable;->-$$Nest$fputcount(Ljava/util/Hashtable;I)V

    .line 751
    return v9

    .line 741
    :cond_4f
    move-object v7, v6

    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1f

    .line 754
    .end local v7    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_53
    return v1

    .line 733
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v4    # "hash":I
    .end local v5    # "index":I
    .end local v6    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_54
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 758
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-$$Nest$fgetcount(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
