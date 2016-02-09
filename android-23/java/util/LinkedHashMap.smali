.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$LinkedEntry;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$ValueIterator;,
        Ljava/util/LinkedHashMap$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field transient header:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 67
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    #@6
    .line 68
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@9
    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 81
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    #@5
    .line 80
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 97
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@4
    .line 96
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    #@0
    .prologue
    .line 119
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@3
    .line 120
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    #@6
    .line 121
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@8
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/LinkedHashMap;->capacityForInitSize(I)I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@b
    .line 133
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->constructorPutAll(Ljava/util/Map;)V

    #@e
    .line 131
    return-void
.end method

.method private makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@4
    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    .line 272
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@8
    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@a
    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@c
    .line 275
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@e
    .line 276
    .local v0, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@10
    .line 277
    .local v1, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@12
    .line 278
    iput-object v1, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@14
    .line 279
    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@16
    iput-object p1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@18
    .line 280
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    iput v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@1e
    .line 269
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 8
    .param p3, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    .line 188
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@4
    .line 189
    .local v7, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_0

    #@6
    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 190
    iget-object v1, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 194
    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@13
    .line 195
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    #@15
    .line 196
    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@17
    aget-object v4, v1, p4

    #@19
    move-object v1, p1

    #@1a
    move-object v2, p2

    #@1b
    move v3, p3

    #@1c
    .line 195
    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@1f
    .line 197
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@21
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@23
    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@25
    aput-object v0, v1, p4

    #@27
    .line 184
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    #@1
    .line 201
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@3
    .line 204
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@5
    .line 205
    .local v7, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_0

    #@7
    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 206
    iget-object v2, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 210
    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@14
    .line 211
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    #@16
    .line 212
    const/4 v3, 0x0

    #@17
    move-object v2, p1

    #@18
    move-object v4, v1

    #@19
    .line 211
    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@1c
    .line 213
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@1e
    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@20
    iput-object v0, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@22
    .line 200
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 322
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    #@4
    .line 325
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    .line 326
    .local v1, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@8
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_0

    #@a
    .line 327
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@c
    .line 328
    .local v2, "nxt":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@e
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@10
    .line 329
    move-object v0, v2

    #@11
    goto :goto_0

    #@12
    .line 332
    .end local v2    # "nxt":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_0
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@14
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@16
    .line 321
    return-void
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 7
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    .line 222
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@4
    .line 224
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move-object v4, p4

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@d
    .line 225
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@f
    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@11
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 301
    if-nez p1, :cond_2

    #@4
    .line 302
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    .local v1, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@8
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_1

    #@a
    .line 304
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    #@c
    if-nez v2, :cond_0

    #@e
    .line 305
    return v4

    #@f
    .line 303
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@11
    goto :goto_0

    #@12
    .line 308
    :cond_1
    return v3

    #@13
    .line 312
    .end local v0    # "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    .end local v1    # "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@15
    .restart local v1    # "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@17
    .restart local v0    # "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_1
    if-eq v0, v1, :cond_4

    #@19
    .line 314
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 315
    return v4

    #@22
    .line 313
    :cond_3
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@24
    goto :goto_1

    #@25
    .line 318
    :cond_4
    return v3
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@4
    .line 168
    .local v0, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .end local v0    # "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    return-object v0

    #@9
    .restart local v0    # "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 241
    if-nez p1, :cond_2

    #@3
    .line 242
    iget-object v0, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@5
    .line 243
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    .line 244
    return-object v5

    #@8
    .line 245
    :cond_0
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@a
    if-eqz v4, :cond_1

    #@c
    move-object v4, v0

    #@d
    .line 246
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    #@f
    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@12
    .line 247
    :cond_1
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@14
    return-object v4

    #@15
    .line 250
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    .line 251
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@1b
    .line 252
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    #@1c
    add-int/lit8 v4, v4, -0x1

    #@1e
    and-int/2addr v4, v2

    #@1f
    aget-object v0, v3, v4

    #@21
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_6

    #@23
    .line 254
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@25
    .line 255
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_3

    #@27
    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@29
    if-ne v4, v2, :cond_5

    #@2b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_5

    #@31
    .line 256
    :cond_3
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@33
    if-eqz v4, :cond_4

    #@35
    move-object v4, v0

    #@36
    .line 257
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    #@38
    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@3b
    .line 258
    :cond_4
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@3d
    return-object v4

    #@3e
    .line 253
    :cond_5
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@40
    goto :goto_0

    #@41
    .line 261
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_6
    return-object v5
.end method

.method init()V
    .locals 1

    #@0
    .prologue
    .line 137
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>()V

    #@5
    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@7
    .line 136
    return-void
.end method

.method newEntryIterator()Ljava/util/Iterator;
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
    .line 386
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$EntryIterator;)V

    #@6
    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 380
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$KeyIterator;)V

    #@6
    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 383
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$ValueIterator;)V

    #@6
    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 290
    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    #@4
    .line 291
    .local v0, "le":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@8
    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@a
    .line 292
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@c
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@e
    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@10
    .line 293
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    #@12
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@14
    .line 289
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 284
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 285
    check-cast p1, Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    .end local p1    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    #@9
    .line 283
    :cond_0
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
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
    .line 390
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method
