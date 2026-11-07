.class final Ljava/util/WeakHashMap$ValueSpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1189
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1190
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1257
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1201
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_4f

    .line 1203
    iget-object v0, p0, Ljava/util/WeakHashMap$ValueSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1204
    .local v0, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v1, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1205
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-gez v2, :cond_14

    .line 1206
    iget v2, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->expectedModCount:I

    .line 1207
    .local v2, "mc":I
    array-length v4, v1

    iput v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->fence:I

    move v3, v4

    goto :goto_16

    .line 1210
    .end local v2    # "mc":I
    :cond_14
    iget v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->expectedModCount:I

    .line 1211
    .restart local v2    # "mc":I
    :goto_16
    array-length v4, v1

    if-lt v4, v3, :cond_44

    iget v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_44

    iput v3, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    if-lt v5, v3, :cond_26

    iget-object v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v4, :cond_44

    .line 1213
    :cond_26
    iget-object v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1214
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1216
    :cond_2b
    if-nez v4, :cond_33

    .line 1217
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v4, v1, v5

    move v5, v6

    goto :goto_40

    .line 1219
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_33
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    .line 1220
    .local v6, "x":Ljava/lang/Object;
    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1221
    .local v7, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1222
    if-eqz v6, :cond_40

    .line 1223
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1225
    .end local v6    # "x":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    :cond_40
    :goto_40
    if-nez v4, :cond_2b

    if-lt v5, v3, :cond_2b

    .line 1227
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "i":I
    :cond_44
    iget v4, v0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v4, v2, :cond_49

    .line 1229
    return-void

    .line 1228
    :cond_49
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1202
    .end local v0    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .end local v1    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "mc":I
    .end local v3    # "hi":I
    :cond_4f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1233
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_51

    .line 1235
    iget-object v0, p0, Ljava/util/WeakHashMap$ValueSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1236
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_4f

    iget v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    if-ltz v1, :cond_4f

    .line 1237
    :goto_12
    iget-object v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_1a

    iget v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    if-ge v1, v3, :cond_4f

    .line 1238
    :cond_1a
    iget-object v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_29

    .line 1239
    iget v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_12

    .line 1241
    :cond_29
    iget-object v1, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1242
    .local v1, "x":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v2, v2, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1243
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1244
    if-eqz v1, :cond_4e

    .line 1245
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1246
    iget-object v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$ValueSpliterator;->expectedModCount:I

    if-ne v4, v5, :cond_48

    .line 1248
    const/4 v4, 0x1

    return v4

    .line 1247
    :cond_48
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1250
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_4e
    goto :goto_12

    .line 1253
    :cond_4f
    const/4 v1, 0x0

    return v1

    .line 1234
    .end local v0    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "hi":I
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1184
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->trySplit()Ljava/util/WeakHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/WeakHashMap$ValueSpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1193
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v3, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    .local v3, "lo":I
    add-int v1, v3, v0

    ushr-int/lit8 v4, v1, 0x1

    .line 1194
    .local v4, "mid":I
    if-lt v3, v4, :cond_e

    const/4 v1, 0x0

    goto :goto_1f

    .line 1195
    :cond_e
    new-instance v1, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v2, p0, Ljava/util/WeakHashMap$ValueSpliterator;->map:Ljava/util/WeakHashMap;

    iput v4, p0, Ljava/util/WeakHashMap$ValueSpliterator;->index:I

    iget v5, p0, Ljava/util/WeakHashMap$ValueSpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$ValueSpliterator;->est:I

    iget v6, p0, Ljava/util/WeakHashMap$ValueSpliterator;->expectedModCount:I

    invoke-direct/range {v1 .. v6}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1194
    :goto_1f
    return-object v1
.end method
