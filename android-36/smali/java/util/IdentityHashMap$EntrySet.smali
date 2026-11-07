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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1206
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1222
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1223
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1212
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    .line 1211
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    .line 1212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-$$Nest$mcontainsMapping(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_19
    const/4 v1, 0x0

    .line 1211
    :goto_1a
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

    .line 1208
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1216
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    .line 1215
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    .line 1216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-$$Nest$mremoveMapping(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_19
    const/4 v1, 0x0

    .line 1215
    :goto_1a
    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1230
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const/4 v0, 0x0

    .line 1232
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1234
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1235
    const/4 v0, 0x1

    goto :goto_8

    .line 1238
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_1d
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1219
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1242
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1247
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1248
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->size()I

    move-result v1

    .line 1249
    .local v1, "size":I
    array-length v2, p1

    if-ge v2, v1, :cond_1a

    .line 1250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 1251
    :cond_1a
    iget-object v2, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1252
    .local v2, "tab":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1253
    .local v3, "ti":I
    const/4 v4, 0x0

    .local v4, "si":I
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_46

    .line 1255
    aget-object v5, v2, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;
    if-eqz v5, :cond_43

    .line 1257
    if-ge v3, v1, :cond_3d

    .line 1260
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "ti":I
    .local v5, "ti":I
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v6}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    aget-object v9, v2, v9

    invoke-direct {v7, v8, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v3

    move v3, v5

    goto :goto_43

    .line 1258
    .end local v5    # "ti":I
    .restart local v3    # "ti":I
    :cond_3d
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1253
    .end local v6    # "key":Ljava/lang/Object;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x2

    goto :goto_20

    .line 1264
    .end local v4    # "si":I
    :cond_46
    if-lt v3, v1, :cond_55

    iget-object v4, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v4, v4, Ljava/util/IdentityHashMap;->modCount:I

    if-ne v0, v4, :cond_55

    .line 1268
    array-length v4, p1

    if-ge v3, v4, :cond_54

    .line 1269
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 1271
    :cond_54
    return-object p1

    .line 1265
    :cond_55
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method
