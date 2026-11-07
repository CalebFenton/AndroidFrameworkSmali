.class Ljava/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic blacklist this$0:Ljava/util/TreeMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1374
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1404
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1405
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1380
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1382
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1383
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .line 1384
    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1

    .line 1381
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_24
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1376
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/TreeMap$EntryIterator;

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$EntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1388
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1390
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1391
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .line 1392
    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1393
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-static {v1, v3}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1394
    const/4 v1, 0x1

    return v1

    .line 1396
    :cond_29
    return v1

    .line 1389
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2a
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1400
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1408
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method
