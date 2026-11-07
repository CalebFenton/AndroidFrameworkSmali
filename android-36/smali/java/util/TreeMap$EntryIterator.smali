.class final Ljava/util/TreeMap$EntryIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "TK;TV;>.PrivateEntryIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1555
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1556
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1553
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1558
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntryIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method
