.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationLoaders$CachedClassLoader;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationLoaders"

.field private static final greylist-max-o gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final greylist mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemLibsCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationLoaders$CachedClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    return-void
.end method

.method private blacklist createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 15
    .param p1, "lib"    # Landroid/content/pm/SharedLibraryInfo;

    .line 179
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v12

    .line 183
    .local v12, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    if-eqz v12, :cond_5e

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 186
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 187
    .local v3, "dependency":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "dependencyPath":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 190
    .local v5, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-eqz v5, :cond_39

    .line 195
    iget-object v6, v5, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "dependencyPath":Ljava/lang/String;
    .end local v5    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    goto :goto_19

    .line 191
    .restart local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .restart local v4    # "dependencyPath":Ljava/lang/String;
    .restart local v5    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_39
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find dependency "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of cachedlibrary "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v3    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "dependencyPath":Ljava/lang/String;
    .end local v5    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_5c
    move-object v9, v0

    goto :goto_5f

    .line 184
    :cond_5e
    move-object v9, v0

    .line 200
    .end local v0    # "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    .local v9, "sharedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ClassLoader;>;"
    :goto_5f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 205
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_98

    .line 210
    new-instance v3, Landroid/app/ApplicationLoaders$CachedClassLoader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/ApplicationLoaders$CachedClassLoader;-><init>(Landroid/app/ApplicationLoaders-IA;)V

    .line 211
    .local v3, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    iput-object v2, v3, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    .line 212
    iput-object v9, v3, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created zygote-cached class loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApplicationLoaders"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, v0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void

    .line 207
    .end local v3    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_98
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 30
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .param p8, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 106
    .local p9, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p10, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 108
    .local v13, "baseParent":Ljava/lang/ClassLoader;
    iget-object v14, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 109
    if-nez p6, :cond_16

    .line 110
    move-object v0, v13

    move-object v4, v0

    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v0, "parent":Ljava/lang/ClassLoader;
    goto :goto_18

    .line 109
    .end local v0    # "parent":Ljava/lang/ClassLoader;
    .restart local p6    # "parent":Ljava/lang/ClassLoader;
    :cond_16
    move-object/from16 v4, p6

    .line 118
    .end local p6    # "parent":Ljava/lang/ClassLoader;
    .local v4, "parent":Ljava/lang/ClassLoader;
    :goto_18
    const-wide/16 v5, 0x40

    if-ne v4, v13, :cond_70

    .line 119
    :try_start_1c
    iget-object v0, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 120
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_28

    .line 121
    monitor-exit v14

    return-object v0

    .line 124
    :cond_28
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_6a

    .line 126
    move/from16 v7, p3

    move-object/from16 v3, p4

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide v15, v5

    move/from16 v6, p2

    move-object v5, v4

    move-object/from16 v4, p5

    .end local v4    # "parent":Ljava/lang/ClassLoader;
    .local v5, "parent":Ljava/lang/ClassLoader;
    :try_start_3d
    invoke-static/range {v2 .. v11}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v17
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_65

    move-object v4, v5

    .end local v5    # "parent":Ljava/lang/ClassLoader;
    .restart local v4    # "parent":Ljava/lang/ClassLoader;
    move-object/from16 v3, v17

    .line 131
    .local v3, "classloader":Ljava/lang/ClassLoader;
    :try_start_44
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    const-string/jumbo v5, "setLayerPaths"

    move-wide v8, v15

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v5
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_6a

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :try_start_56
    invoke-virtual {v5, v3, v10, v11}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    if-eqz v12, :cond_63

    .line 139
    iget-object v5, v1, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v5, v12, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_63
    monitor-exit v14

    return-object v3

    .line 150
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    .end local v4    # "parent":Ljava/lang/ClassLoader;
    .restart local v5    # "parent":Ljava/lang/ClassLoader;
    :catchall_65
    move-exception v0

    move-object v10, v3

    move-object v11, v4

    move-object v4, v5

    .end local v5    # "parent":Ljava/lang/ClassLoader;
    .restart local v4    # "parent":Ljava/lang/ClassLoader;
    goto :goto_88

    :catchall_6a
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    goto :goto_88

    .line 144
    :cond_70
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide v8, v5

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 148
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    monitor-exit v14

    return-object v0

    .line 150
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :catchall_87
    move-exception v0

    :goto_88
    monitor-exit v14
    :try_end_89
    .catchall {:try_start_56 .. :try_end_89} :catchall_87

    throw v0
.end method

.method public static greylist getDefault()Landroid/app/ApplicationLoaders;
    .registers 1

    .line 43
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static blacklist sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)Z"
        }
    .end annotation

    .line 219
    .local p0, "lhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p1, "rhs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    if-nez p0, :cond_8

    .line 220
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 223
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method greylist-max-o addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .registers 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p2, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_b

    .line 297
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 298
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addNativePath(Ljava/util/Collection;)V

    .line 299
    return-void

    .line 295
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;

    .line 283
    instance-of v0, p1, Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_b

    .line 286
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 287
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    .line 288
    return-void

    .line 284
    .end local v0    # "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class loader is not a PathClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    invoke-direct {p0, v1}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoader(Landroid/content/pm/SharedLibraryInfo;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 170
    .end local v0    # "i":I
    :cond_1e
    return-void

    .line 162
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already cached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 16
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p3

    .end local p1    # "packagePath":Ljava/lang/String;
    .end local p2    # "libsPath":Ljava/lang/String;
    .end local p3    # "cacheKey":Ljava/lang/String;
    .local v1, "packagePath":Ljava/lang/String;
    .local v4, "libsPath":Ljava/lang/String;
    .local v7, "cacheKey":Ljava/lang/String;
    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 10
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 234
    .local p4, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 235
    return-object v1

    .line 239
    :cond_6
    if-nez p2, :cond_6d

    if-eqz p3, :cond_b

    goto :goto_6d

    .line 243
    :cond_b
    iget-object v0, p0, Landroid/app/ApplicationLoaders;->mSystemLibsCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationLoaders$CachedClassLoader;

    .line 244
    .local v0, "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    if-nez v0, :cond_16

    .line 245
    return-object v1

    .line 249
    :cond_16
    iget-object v2, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-static {p4, v2}, Landroid/app/ApplicationLoaders;->sharedLibrariesEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    const-string v3, "ApplicationLoaders"

    if-nez v2, :cond_54

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected environment loading cached library "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (real|cached): ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->sharedLibraries:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v1

    .line 255
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning zygote-cached class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, v0, Landroid/app/ApplicationLoaders$CachedClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v1

    .line 240
    .end local v0    # "cached":Landroid/app/ApplicationLoaders$CachedClassLoader;
    :cond_6d
    :goto_6d
    return-object v1
.end method

.method greylist-max-o getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 19
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;

    .line 49
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v8

    return-object v8
.end method

.method blacklist getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 23
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 61
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "sharedLibrariesLoadedAfterApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object v7, p1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v7

    return-object v7
.end method

.method blacklist getSharedLibraryClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 23
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 77
    .local p8, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p9, "sharedLibrariesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual {p0, p1, v6, v7, v8}, Landroid/app/ApplicationLoaders;->getCachedNonBootclasspathSystemLib(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v11

    .line 79
    .local v11, "loader":Ljava/lang/ClassLoader;
    if-eqz v11, :cond_d

    .line 80
    return-object v11

    .line 87
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v9, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ALL"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v12

    return-object v12
.end method
