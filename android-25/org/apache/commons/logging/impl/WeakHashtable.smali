.class public final Lorg/apache/commons/logging/impl/WeakHashtable;
.super Ljava/util/Hashtable;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/logging/impl/WeakHashtable$Entry;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;,
        Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_CHANGES_BEFORE_PURGE:I = 0x64

.field private static final PARTIAL_PURGE_COUNT:I = 0xa


# instance fields
.field private changeCount:I

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    #@3
    .line 130
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 132
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@d
    .line 138
    return-void
.end method

.method private purge()V
    .locals 3

    #@0
    .prologue
    .line 326
    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    monitor-enter v2

    #@3
    .line 328
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    #@b
    .local v0, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v0, :cond_0

    #@d
    .line 329
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->-wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@10
    move-result-object v1

    #@11
    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 326
    .end local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .restart local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :cond_0
    monitor-exit v2

    #@19
    .line 325
    return-void
.end method

.method private purgeOne()V
    .locals 3

    #@0
    .prologue
    .line 340
    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    monitor-enter v2

    #@3
    .line 341
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    #@b
    .line 342
    .local v0, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v0, :cond_0

    #@d
    .line 343
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->-wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@10
    move-result-object v1

    #@11
    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 338
    return-void

    #@16
    .line 340
    .end local v0    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 146
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    #@6
    .line 147
    .local v0, "referenced":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 155
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 162
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@4
    .line 163
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v4

    #@8
    .line 164
    .local v4, "referencedEntries":Ljava/util/Set;
    new-instance v6, Ljava/util/HashSet;

    #@a
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 165
    .local v6, "unreferencedEntries":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_1

    #@17
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/util/Map$Entry;

    #@1d
    .line 167
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@23
    .line 168
    .local v5, "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v5}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    .line 169
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    .line 170
    .local v7, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@2d
    .line 171
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;

    #@2f
    invoke-direct {v0, v3, v7, v9}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Entry;)V

    #@32
    .line 172
    .local v0, "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 175
    .end local v0    # "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    return-object v6
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 183
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    #@6
    .line 184
    .local v0, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 293
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 6

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 210
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    .line 211
    .local v3, "referencedKeys":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    #@9
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@c
    .line 212
    .local v4, "unreferencedKeys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@1c
    .line 214
    .local v2, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 215
    .local v1, "keyValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@22
    .line 216
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 219
    .end local v1    # "keyValue":Ljava/lang/Object;
    .end local v2    # "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    :cond_1
    return-object v4
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 2

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 192
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 193
    .local v0, "enumer":Ljava/util/Enumeration;
    new-instance v1, Lorg/apache/commons/logging/impl/WeakHashtable$1;

    #@9
    invoke-direct {v1, p0, v0}, Lorg/apache/commons/logging/impl/WeakHashtable$1;-><init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V

    #@c
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 227
    if-nez p1, :cond_0

    #@4
    .line 228
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "Null keys are not allowed"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 230
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 231
    new-instance v2, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v3, "Null values are not allowed"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 236
    :cond_1
    iget v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@1a
    add-int/lit8 v3, v2, 0x1

    #@1c
    iput v3, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@1e
    const/16 v3, 0x64

    #@20
    if-le v2, v3, :cond_3

    #@22
    .line 237
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@25
    .line 238
    iput v5, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@27
    .line 245
    :cond_2
    :goto_0
    const/4 v1, 0x0

    #@28
    .line 246
    .local v1, "result":Ljava/lang/Object;
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@2a
    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2c
    invoke-direct {v0, p1, v2, v4}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    #@2f
    .line 247
    .local v0, "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 241
    .end local v0    # "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    iget v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@36
    rem-int/lit8 v2, v2, 0xa

    #@38
    if-nez v2, :cond_2

    #@3a
    .line 242
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    #@3d
    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .param p1, "t"    # Ljava/util/Map;

    #@0
    .prologue
    .line 254
    if-eqz p1, :cond_0

    #@2
    .line 255
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v1

    #@6
    .line 256
    .local v1, "entrySet":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/logging/impl/WeakHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_0

    #@22
    .line 253
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "entrySet":Ljava/util/Set;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected rehash()V
    .locals 0

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 318
    invoke-super {p0}, Ljava/util/Hashtable;->rehash()V

    #@6
    .line 315
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 277
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@3
    add-int/lit8 v1, v0, 0x1

    #@5
    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@7
    const/16 v1, 0x64

    #@9
    if-le v0, v1, :cond_1

    #@b
    .line 278
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@e
    .line 279
    iput v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@10
    .line 285
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    #@16
    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 282
    :cond_1
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    #@1d
    rem-int/lit8 v0, v0, 0xa

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 283
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    #@24
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 301
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 309
    invoke-super {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    #@0
    .prologue
    .line 267
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    #@3
    .line 268
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
