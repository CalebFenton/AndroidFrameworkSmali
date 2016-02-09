.class abstract Landroid/content/res/ThemedResourceCache;
.super Ljava/lang/Object;
.source "ThemedResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mNullThemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mThemedEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Resources$ThemeKey;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private mUnthemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    .locals 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 144
    if-nez p1, :cond_1

    #@4
    .line 145
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    #@6
    if-nez v3, :cond_0

    #@8
    if-eqz p2, :cond_0

    #@a
    .line 146
    new-instance v3, Landroid/util/LongSparseArray;

    #@c
    invoke-direct {v3, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    #@f
    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    #@11
    .line 148
    :cond_0
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    #@13
    return-object v3

    #@14
    .line 151
    :cond_1
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@16
    if-nez v3, :cond_2

    #@18
    .line 152
    if-eqz p2, :cond_4

    #@1a
    .line 153
    new-instance v3, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(I)V

    #@1f
    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@21
    .line 159
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    #@24
    move-result-object v1

    #@25
    .line 160
    .local v1, "key":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/util/LongSparseArray;

    #@2d
    .line 161
    .local v0, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v0, :cond_3

    #@2f
    if-eqz p2, :cond_3

    #@31
    .line 162
    new-instance v0, Landroid/util/LongSparseArray;

    #@33
    .end local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    #@36
    .line 164
    .restart local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {v1}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    #@39
    move-result-object v2

    #@3a
    .line 165
    .local v2, "keyClone":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 168
    .end local v2    # "keyClone":Landroid/content/res/Resources$ThemeKey;
    :cond_3
    return-object v0

    #@40
    .line 155
    .end local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v1    # "key":Landroid/content/res/Resources$ThemeKey;
    :cond_4
    return-object v4
.end method

.method private getUnthemedLocked(Z)Landroid/util/LongSparseArray;
    .locals 2
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 182
    new-instance v0, Landroid/util/LongSparseArray;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    #@c
    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    #@e
    .line 184
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    #@10
    return-object v0
.end method

.method private prune(I)Z
    .locals 3
    .param p1, "configChanges"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 196
    monitor-enter p0

    #@2
    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 198
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@10
    .line 199
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/util/LongSparseArray;

    #@18
    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 200
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@23
    .line 198
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_0

    #@26
    .line 205
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    #@28
    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    #@2b
    .line 206
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    #@2d
    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    #@30
    .line 208
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    #@32
    if-nez v1, :cond_3

    #@34
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    #@36
    if-nez v1, :cond_3

    #@38
    .line 209
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    if-nez v1, :cond_2

    #@3c
    const/4 v1, 0x1

    #@3d
    :goto_1
    monitor-exit p0

    #@3e
    .line 208
    return v1

    #@3f
    :cond_2
    move v1, v2

    #@40
    .line 209
    goto :goto_1

    #@41
    :cond_3
    move v1, v2

    #@42
    .line 208
    goto :goto_1

    #@43
    .line 196
    :catchall_0
    move-exception v1

    #@44
    monitor-exit p0

    #@45
    throw v1
.end method

.method private pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z
    .locals 5
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 215
    if-nez p1, :cond_0

    #@4
    .line 216
    return v2

    #@5
    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    #@8
    move-result v4

    #@9
    add-int/lit8 v0, v4, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@d
    .line 220
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@13
    .line 221
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    invoke-direct {p0, v4, p2}, Landroid/content/res/ThemedResourceCache;->pruneEntryLocked(Ljava/lang/Object;I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 222
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@22
    .line 219
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@24
    goto :goto_0

    #@25
    .line 226
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_3
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_4

    #@2b
    :goto_1
    return v2

    #@2c
    :cond_4
    move v2, v3

    #@2d
    goto :goto_1
.end method

.method private pruneEntryLocked(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    .line 230
    if-eqz p1, :cond_1

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemedResourceCache;->shouldInvalidateEntry(Ljava/lang/Object;I)Z

    #@8
    move-result v0

    #@9
    .line 230
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method


# virtual methods
.method public get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 91
    monitor-enter p0

    #@2
    .line 92
    const/4 v4, 0x0

    #@3
    :try_start_0
    invoke-direct {p0, p3, v4}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    #@6
    move-result-object v0

    #@7
    .line 93
    .local v0, "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v0, :cond_0

    #@9
    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@f
    .line 95
    .local v1, "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_0

    #@11
    .line 96
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v4

    #@15
    monitor-exit p0

    #@16
    return-object v4

    #@17
    .line 100
    .end local v1    # "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_0
    const/4 v4, 0x0

    #@18
    :try_start_1
    invoke-direct {p0, v4}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    #@1b
    move-result-object v2

    #@1c
    .line 101
    .local v2, "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v2, :cond_1

    #@1e
    .line 102
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@24
    .line 103
    .local v3, "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v3, :cond_1

    #@26
    .line 104
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result-object v4

    #@2a
    monitor-exit p0

    #@2b
    return-object v4

    #@2c
    .end local v3    # "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_1
    monitor-exit p0

    #@2d
    .line 109
    return-object v5

    #@2e
    .line 91
    .end local v0    # "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit p0

    #@30
    throw v4
.end method

.method public onConfigurationChange(I)V
    .locals 0
    .param p1, "configChanges"    # I

    #@0
    .prologue
    .line 119
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/res/ThemedResourceCache;->prune(I)Z

    #@3
    .line 118
    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p1

    #@3
    move-object v4, p3

    #@4
    move-object v5, p4

    #@5
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    #@8
    .line 46
    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_0

    #@2
    .line 62
    return-void

    #@3
    .line 65
    :cond_0
    monitor-enter p0

    #@4
    .line 67
    if-nez p5, :cond_2

    #@6
    .line 68
    const/4 v1, 0x1

    #@7
    :try_start_0
    invoke-direct {p0, v1}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    #@a
    move-result-object v0

    #@b
    .line 72
    .local v0, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@d
    .line 73
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@f
    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@12
    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_1
    monitor-exit p0

    #@16
    .line 60
    return-void

    #@17
    .line 70
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_2
    const/4 v1, 0x1

    #@18
    :try_start_1
    invoke-direct {p0, p3, v1}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v0

    #@1c
    .restart local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    goto :goto_0

    #@1d
    .line 65
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method protected abstract shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
