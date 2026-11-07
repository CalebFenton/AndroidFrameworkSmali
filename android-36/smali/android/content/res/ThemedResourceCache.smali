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


# static fields
.field public static final blacklist UNDEFINED_GENERATION:I = -0x1


# instance fields
.field private blacklist mGeneration:I

.field private greylist-max-o mNullThemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private greylist mThemedEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Resources$ThemeKey;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mUnthemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 37
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    .registers 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Z)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 171
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v1, :cond_10

    if-eqz p2, :cond_10

    .line 172
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    .line 174
    :cond_10
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    return-object v0

    .line 177
    :cond_13
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v1, :cond_23

    .line 178
    if-eqz p2, :cond_21

    .line 179
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    goto :goto_23

    .line 181
    :cond_21
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    .line 186
    .local v1, "key":Landroid/content/res/Resources$ThemeKey;
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 187
    .local v2, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v2, :cond_42

    if-eqz p2, :cond_42

    .line 188
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v2, v3

    .line 190
    invoke-virtual {v1}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    .line 191
    .local v0, "keyClone":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v0    # "keyClone":Landroid/content/res/Resources$ThemeKey;
    :cond_42
    return-object v2
.end method

.method private greylist-max-o getUnthemedLocked(Z)Landroid/util/LongSparseArray;
    .registers 4
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 208
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    .line 210
    :cond_e
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private greylist-max-o pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z
    .registers 7
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;I)Z"
        }
    .end annotation

    .line 239
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 240
    return v0

    .line 243
    :cond_4
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 244
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 245
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/content/res/ThemedResourceCache;->pruneEntryLocked(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 246
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 243
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 250
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method private greylist-max-o pruneEntryLocked(Ljava/lang/Object;I)Z
    .registers 4
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 254
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_b

    .line 255
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemedResourceCache;->shouldInvalidateEntry(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 254
    :goto_e
    return v0
.end method

.method private blacklist pruneLocked(I)Z
    .registers 5
    .param p1, "configChanges"    # I

    .line 222
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 223
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_24

    .line 224
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 225
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 223
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 230
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 231
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 233
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    return v1
.end method


# virtual methods
.method public declared-synchronized blacklist clear()V
    .registers 2

    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 259
    :try_start_1
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    .end local p0    # "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    :cond_a
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_13

    .line 264
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 267
    :cond_13
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1c

    .line 268
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 270
    :cond_1c
    monitor-exit p0

    return-void

    .line 258
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public greylist-max-o get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 113
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p3, v0}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 114
    .local v1, "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v1, :cond_16

    .line 115
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 116
    .local v2, "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_16

    .line 117
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 121
    .end local v2    # "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_16
    invoke-direct {p0, v0}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 122
    .local v0, "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v0, :cond_2a

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 124
    .local v2, "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_2a

    .line 125
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 128
    .end local v0    # "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v1    # "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_2a
    monitor-exit p0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 128
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public blacklist getGeneration()I
    .registers 2

    .line 96
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget v0, p0, Landroid/content/res/ThemedResourceCache;->mGeneration:I

    return v0
.end method

.method public greylist onConfigurationChange(I)V
    .registers 3
    .param p1, "configChanges"    # I

    .line 142
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-direct {p0, p1}, Landroid/content/res/ThemedResourceCache;->pruneLocked(I)Z

    .line 144
    iget v0, p0, Landroid/content/res/ThemedResourceCache;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/ThemedResourceCache;->mGeneration:I

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public blacklist put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V
    .registers 13
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;I)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "key":J
    .end local p3    # "theme":Landroid/content/res/Resources$Theme;
    .end local p4    # "entry":Ljava/lang/Object;, "TT;"
    .end local p5    # "generation":I
    .local v1, "key":J
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    .local v4, "entry":Ljava/lang/Object;, "TT;"
    .local v5, "generation":I
    invoke-virtual/range {v0 .. v6}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;IZ)V

    .line 57
    return-void
.end method

.method public blacklist put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;IZ)V
    .registers 9
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "generation"    # I
    .param p6, "usesTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;IZ)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_3

    .line 73
    return-void

    .line 76
    :cond_3
    monitor-enter p0

    .line 78
    const/4 v0, 0x1

    if-nez p6, :cond_c

    .line 79
    :try_start_7
    invoke-direct {p0, v0}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .local v0, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    goto :goto_10

    .line 81
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_c
    invoke-direct {p0, p3, v0}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 83
    .restart local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :goto_10
    if-eqz v0, :cond_21

    iget v1, p0, Landroid/content/res/ThemedResourceCache;->mGeneration:I

    if-eq p5, v1, :cond_19

    const/4 v1, -0x1

    if-ne p5, v1, :cond_21

    .line 85
    :cond_19
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 87
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_21
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method protected abstract greylist-max-o shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
