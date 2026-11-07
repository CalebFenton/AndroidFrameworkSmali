.class Ljava/util/IdentityHashMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap$EntryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o index:I

.field final synthetic blacklist this$1:Ljava/util/IdentityHashMap$EntryIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetindex(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I
    .registers 1

    iget p0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputindex(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)V
    .registers 2

    iput p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/IdentityHashMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 879
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    .line 881
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    return-void
.end method

.method private greylist-max-o checkIndexForEntryUse()V
    .registers 3

    .line 932
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-ltz v0, :cond_5

    .line 934
    return-void

    .line 933
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 907
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 908
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 912
    :cond_9
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_33

    .line 910
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 911
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_33

    .line 912
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_33

    goto :goto_34

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_33
    const/4 v4, 0x0

    .line 910
    :goto_34
    return v4
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 885
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 886
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 891
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 892
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 916
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    if-gez v0, :cond_b

    .line 917
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 919
    :cond_b
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 920
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 919
    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 897
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 898
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 899
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aput-object p1, v1, v2

    .line 901
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-eq v1, v2, :cond_32

    .line 902
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_32
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 924
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 925
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 927
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
