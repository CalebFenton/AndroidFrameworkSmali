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
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1158
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@3
    .line 1157
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1226
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v10, 0x0

    #@1
    .line 1170
    if-nez p1, :cond_0

    #@3
    .line 1171
    new-instance v9, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v9

    #@9
    .line 1172
    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@b
    .line 1173
    .local v3, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, v3, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@d
    .line 1174
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@f
    .local v0, "hi":I
    if-gez v0, :cond_3

    #@11
    .line 1175
    iget v4, v3, Ljava/util/WeakHashMap;->modCount:I

    #@13
    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@15
    .line 1176
    .local v4, "mc":I
    array-length v0, v6

    #@16
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@18
    .line 1180
    .restart local v0    # "hi":I
    :goto_0
    array-length v9, v6

    #@19
    if-lt v9, v0, :cond_5

    #@1b
    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@1d
    .local v1, "i":I
    if-ltz v1, :cond_5

    #@1f
    .line 1181
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@21
    if-lt v1, v0, :cond_1

    #@23
    iget-object v9, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@25
    if-eqz v9, :cond_5

    #@27
    .line 1182
    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@29
    .line 1183
    .local v5, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@2b
    move v2, v1

    #@2c
    .line 1185
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez v5, :cond_4

    #@2e
    .line 1186
    add-int/lit8 v1, v2, 0x1

    #@30
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v5, v6, v2

    #@32
    .line 1194
    :goto_2
    if-nez v5, :cond_2

    #@34
    if-ge v1, v0, :cond_5

    #@36
    :cond_2
    move v2, v1

    #@37
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@38
    .line 1179
    .end local v2    # "i":I
    .end local v4    # "mc":I
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@3a
    .restart local v4    # "mc":I
    goto :goto_0

    #@3b
    .line 1188
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@3e
    move-result-object v8

    #@3f
    .line 1189
    .local v8, "x":Ljava/lang/Object;
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@41
    .line 1190
    .local v7, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@43
    .line 1191
    if-eqz v8, :cond_7

    #@45
    .line 1192
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@48
    move v1, v2

    #@49
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    #@4a
    .line 1196
    .end local v1    # "i":I
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    .end local v8    # "x":Ljava/lang/Object;
    :cond_5
    iget v9, v3, Ljava/util/WeakHashMap;->modCount:I

    #@4c
    if-eq v9, v4, :cond_6

    #@4e
    .line 1197
    new-instance v9, Ljava/util/ConcurrentModificationException;

    #@50
    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@53
    throw v9

    #@54
    .line 1168
    :cond_6
    return-void

    #@55
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v7    # "v":Ljava/lang/Object;, "TV;"
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_7
    move v1, v2

    #@56
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v6, 0x0

    #@1
    .line 1202
    if-nez p1, :cond_0

    #@3
    .line 1203
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 1204
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@b
    iget-object v1, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@d
    .line 1205
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v4, v1

    #@e
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    #@11
    move-result v0

    #@12
    .local v0, "hi":I
    if-lt v4, v0, :cond_5

    #@14
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@16
    if-ltz v4, :cond_5

    #@18
    .line 1206
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@1a
    if-nez v4, :cond_2

    #@1c
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@1e
    if-ge v4, v0, :cond_5

    #@20
    .line 1207
    :cond_2
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@22
    if-nez v4, :cond_3

    #@24
    .line 1208
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@26
    add-int/lit8 v5, v4, 0x1

    #@28
    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@2a
    aget-object v4, v1, v4

    #@2c
    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@2e
    goto :goto_0

    #@2f
    .line 1210
    :cond_3
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@31
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    .line 1211
    .local v3, "x":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@37
    iget-object v2, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@39
    .line 1212
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@3b
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@3d
    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@3f
    .line 1213
    if-eqz v3, :cond_1

    #@41
    .line 1214
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@44
    .line 1215
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@46
    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    #@48
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@4a
    if-eq v4, v5, :cond_4

    #@4c
    .line 1216
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@4e
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@51
    throw v4

    #@52
    .line 1217
    :cond_4
    const/4 v4, 0x1

    #@53
    return v4

    #@54
    .line 1222
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v3    # "x":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1161
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->trySplit()Ljava/util/WeakHashMap$ValueSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    #@3
    move-result v6

    #@4
    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@6
    .local v2, "lo":I
    add-int v0, v2, v6

    #@8
    ushr-int/lit8 v3, v0, 0x1

    #@a
    .line 1163
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return-object v0

    #@e
    .line 1164
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@12
    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@14
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@16
    ushr-int/lit8 v4, v4, 0x1

    #@18
    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@1a
    .line 1165
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@1c
    .line 1164
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@1f
    goto :goto_0
.end method
