.class abstract Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private transient greylist-max-o size:I

.field private transient greylist-max-o sizeModCount:I

.field final synthetic blacklist this$0:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap$NavigableSubMap;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/TreeMap$NavigableSubMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1981
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1982
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2005
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2007
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2008
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2009
    return v1

    .line 2010
    :cond_15
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .line 2011
    .local v3, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<**>;"
    if-eqz v3, :cond_2f

    .line 2012
    invoke-virtual {v3}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 2011
    :goto_30
    return v1

    .line 2006
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<**>;"
    :cond_31
    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 4

    .line 2000
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2001
    .local v0, "n":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_15

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2016
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2018
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2019
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2020
    return v1

    .line 2021
    :cond_15
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .line 2022
    .local v3, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 2023
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 2022
    invoke-static {v4, v5}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2024
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1, v3}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2025
    const/4 v1, 0x1

    return v1

    .line 2027
    :cond_36
    return v1

    .line 2017
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_37
    return v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 1985
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v0, v0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v0, v0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_15

    .line 1986
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0

    .line 1987
    :cond_15
    iget v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    if-eq v0, v1, :cond_47

    .line 1988
    :cond_26
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    .line 1989
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    .line 1990
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1991
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1992
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    .line 1993
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_37

    .line 1996
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_47
    iget v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    return v0
.end method
