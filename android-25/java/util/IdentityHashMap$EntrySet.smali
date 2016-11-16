.class Ljava/util/IdentityHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
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
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 1188
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1208
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 1207
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1193
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1194
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1195
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1196
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 1190
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator;

    #@2
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntryIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1199
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1200
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1201
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1202
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1217
    const/4 v1, 0x0

    #@4
    .line 1218
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1220
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1b
    .line 1221
    const/4 v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1224
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1205
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
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
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 1261
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    #@3
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@b
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1228
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v10, 0x0

    #@1
    .line 1233
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@3
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@6
    move-result v0

    #@7
    .line 1234
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->size()I

    #@a
    move-result v3

    #@b
    .line 1235
    .local v3, "size":I
    array-length v7, p1

    #@c
    if-ge v7, v3, :cond_0

    #@e
    .line 1236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@1c
    .line 1237
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@1e
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    .line 1238
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v5, 0x0

    #@23
    .line 1239
    .local v5, "ti":I
    const/4 v2, 0x0

    #@24
    .local v2, "si":I
    :goto_0
    array-length v7, v4

    #@25
    if-ge v2, v7, :cond_3

    #@27
    .line 1241
    aget-object v1, v4, v2

    #@29
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_2

    #@2b
    .line 1243
    if-lt v5, v3, :cond_1

    #@2d
    .line 1244
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@2f
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@32
    throw v7

    #@33
    .line 1246
    :cond_1
    add-int/lit8 v6, v5, 0x1

    #@35
    .end local v5    # "ti":I
    .local v6, "ti":I
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    #@37
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v8

    #@3b
    add-int/lit8 v9, v2, 0x1

    #@3d
    aget-object v9, v4, v9

    #@3f
    invoke-direct {v7, v8, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@42
    aput-object v7, p1, v5

    #@44
    move v5, v6

    #@45
    .line 1239
    .end local v6    # "ti":I
    .restart local v5    # "ti":I
    :cond_2
    add-int/lit8 v2, v2, 0x2

    #@47
    goto :goto_0

    #@48
    .line 1250
    .end local v1    # "key":Ljava/lang/Object;
    :cond_3
    if-lt v5, v3, :cond_4

    #@4a
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    #@4c
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@4f
    move-result v7

    #@50
    if-eq v0, v7, :cond_5

    #@52
    .line 1251
    :cond_4
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@54
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@57
    throw v7

    #@58
    .line 1254
    :cond_5
    array-length v7, p1

    #@59
    if-ge v5, v7, :cond_6

    #@5b
    .line 1255
    aput-object v10, p1, v5

    #@5d
    .line 1257
    :cond_6
    return-object p1
.end method
