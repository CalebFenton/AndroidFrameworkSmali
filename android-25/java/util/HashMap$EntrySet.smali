.class final Ljava/util/HashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
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
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 1307
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1325
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 1324
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 1312
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1313
    return v2

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 1314
    check-cast v1, Ljava/util/Map$Entry;

    #@9
    .line 1315
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@12
    move-result-object v0

    #@13
    .line 1316
    .local v0, "candidate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@15
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    :cond_1
    return v2
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 1333
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1334
    :cond_0
    iget-object v4, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@a
    iget v4, v4, Ljava/util/HashMap;->size:I

    #@c
    if-lez v4, :cond_3

    #@e
    iget-object v4, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@10
    iget-object v3, v4, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@12
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    #@14
    .line 1335
    iget-object v4, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@16
    iget v2, v4, Ljava/util/HashMap;->modCount:I

    #@18
    .line 1336
    .local v2, "mc":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@1a
    if-ge v1, v4, :cond_3

    #@1c
    .line 1337
    aget-object v0, v3, v1

    #@1e
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@20
    .line 1338
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@23
    .line 1341
    iget-object v4, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@25
    iget v4, v4, Ljava/util/HashMap;->modCount:I

    #@27
    if-eq v4, v2, :cond_1

    #@29
    .line 1342
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@2b
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2e
    throw v4

    #@2f
    .line 1337
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@31
    goto :goto_1

    #@32
    .line 1336
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1330
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 1309
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->newEntryIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1319
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1322
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v0, Ljava/util/HashMap;->size:I

    #@4
    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 1328
    new-instance v0, Ljava/util/HashMap$EntrySpliterator;

    #@3
    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$EntrySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    #@b
    return-object v0
.end method
