.class Ljava/util/TreeMap$Values;
.super Ljava/util/AbstractCollection;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
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

    .line 1342
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1366
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1367
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1352
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1344
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/TreeMap$ValueIterator;

    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$ValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1356
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_6
    if-eqz v0, :cond_1e

    .line 1357
    invoke-virtual {v0}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1358
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-static {v1, v0}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1359
    const/4 v1, 0x1

    return v1

    .line 1356
    :cond_19
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_6

    .line 1362
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1348
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

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
            "TV;>;"
        }
    .end annotation

    .line 1370
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/TreeMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$ValueSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method
