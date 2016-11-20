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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Ljava/util/IdentityHashMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2
    return p1
.end method

.method private constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;I)V
    .locals 0
    .param p2, "index"    # I

    #@0
    .prologue
    .line 863
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 864
    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@7
    .line 863
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/IdentityHashMap$EntryIterator;
    .param p2, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    #@3
    return-void
.end method

.method private checkIndexForEntryUse()V
    .locals 2

    #@0
    .prologue
    .line 918
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 919
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Entry was removed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 917
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v1, 0x0

    #@1
    .line 891
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@3
    if-gez v2, :cond_0

    #@5
    .line 892
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 894
    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 895
    return v1

    #@f
    :cond_1
    move-object v0, p1

    #@10
    .line 896
    check-cast v0, Ljava/util/Map$Entry;

    #@12
    .line 897
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@18
    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@1a
    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@1c
    aget-object v3, v3, v4

    #@1e
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    if-ne v2, v3, :cond_2

    #@24
    .line 898
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@2a
    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@2c
    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2e
    add-int/lit8 v4, v4, 0x1

    #@30
    aget-object v3, v3, v4

    #@32
    if-ne v2, v3, :cond_2

    #@34
    const/4 v1, 0x1

    #@35
    .line 897
    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 869
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 870
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@5
    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@7
    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@9
    aget-object v0, v0, v1

    #@b
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 875
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 876
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@5
    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@7
    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    aget-object v0, v0, v1

    #@d
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 902
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@2
    iget v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    #@4
    if-gez v0, :cond_0

    #@6
    .line 903
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 905
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@d
    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@f
    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@11
    aget-object v0, v0, v1

    #@13
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    .line 906
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@1d
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@1f
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    aget-object v1, v1, v2

    #@25
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@28
    move-result v1

    #@29
    .line 905
    xor-int/2addr v0, v1

    #@2a
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 881
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    #@3
    .line 882
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@5
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@7
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@9
    add-int/lit8 v2, v2, 0x1

    #@b
    aget-object v0, v1, v2

    #@d
    .line 883
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@f
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@11
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    aput-object p1, v1, v2

    #@17
    .line 885
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@19
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@1b
    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@1d
    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    #@1f
    invoke-static {v2}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    if-eq v1, v2, :cond_0

    #@25
    .line 886
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@27
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    #@29
    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@2b
    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@2d
    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2f
    aget-object v2, v2, v3

    #@31
    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 887
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 910
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 911
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@10
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@12
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@14
    aget-object v1, v1, v2

    #@16
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 914
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    #@27
    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    #@29
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    #@2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    aget-object v1, v1, v2

    #@2f
    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
