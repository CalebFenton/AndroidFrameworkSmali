.class public Lcom/android/internal/os/ClassLoaderFactory;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final blacklist DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist DEX_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist PATH_CLASS_LOADER_NAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 40
    const-class v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    const-class v0, Ldalvik/system/DelegateLastClassLoader;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 14
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "classloaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 85
    .local p4, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p5, "sharedLibrariesLoadedAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    const/4 v0, 0x0

    if-nez p4, :cond_5

    .line 86
    move-object v1, v0

    goto :goto_11

    .line 87
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/ClassLoader;

    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ClassLoader;

    :goto_11
    move-object v6, v1

    .line 88
    .local v6, "arrayOfSharedLibraries":[Ljava/lang/ClassLoader;
    if-nez p5, :cond_16

    .line 89
    move-object v7, v0

    goto :goto_24

    .line 90
    :cond_16
    nop

    .line 91
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    .line 90
    invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    move-object v7, v0

    :goto_24
    nop

    .line 92
    .local v7, "arrayOfSharedLibrariesLoadedAfterApp":[Ljava/lang/ClassLoader;
    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 93
    new-instance v2, Ldalvik/system/PathClassLoader;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "dexPath":Ljava/lang/String;
    .end local p1    # "librarySearchPath":Ljava/lang/String;
    .end local p2    # "parent":Ljava/lang/ClassLoader;
    .local v3, "dexPath":Ljava/lang/String;
    .local v4, "librarySearchPath":Ljava/lang/String;
    .local v5, "parent":Ljava/lang/ClassLoader;
    invoke-direct/range {v2 .. v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v2

    .line 95
    .end local v3    # "dexPath":Ljava/lang/String;
    .end local v4    # "librarySearchPath":Ljava/lang/String;
    .end local v5    # "parent":Ljava/lang/ClassLoader;
    .restart local p0    # "dexPath":Ljava/lang/String;
    .restart local p1    # "librarySearchPath":Ljava/lang/String;
    .restart local p2    # "parent":Ljava/lang/ClassLoader;
    :cond_34
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "dexPath":Ljava/lang/String;
    .end local p1    # "librarySearchPath":Ljava/lang/String;
    .end local p2    # "parent":Ljava/lang/ClassLoader;
    .restart local v3    # "dexPath":Ljava/lang/String;
    .restart local v4    # "librarySearchPath":Ljava/lang/String;
    .restart local v5    # "parent":Ljava/lang/ClassLoader;
    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 96
    new-instance v2, Ldalvik/system/DelegateLastClassLoader;

    invoke-direct/range {v2 .. v7}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v2

    .line 100
    :cond_43
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid classLoaderName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;
    .registers 18
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z
    .param p6, "classLoaderName"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 118
    .local v9, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ALL"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v10}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 21
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "librarySearchPath"    # Ljava/lang/String;
    .param p2, "libraryPermittedPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "targetSdkVersion"    # I
    .param p5, "isNamespaceShared"    # Z
    .param p6, "classLoaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "IZ",
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

    .line 134
    .local p7, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .local p8, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "sharedLibrariesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 137
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    const-string v1, ""

    .line 138
    .local v1, "sonameList":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 139
    const-string v2, ":"

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_19
    const-string v2, "createClassloaderNamespace"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    move-object v2, v7

    move-object v7, v1

    move-object v1, v2

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    move v2, p4

    move/from16 v5, p5

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .local v7, "sonameList":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "errorMessage":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    if-nez v10, :cond_33

    .line 157
    return-object v1

    .line 153
    :cond_33
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create namespace for the classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native greylist-max-r createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getPathClassLoaderName()Ljava/lang/String;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isDelegateLastClassLoaderName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPathClassLoaderName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_15

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 67
    :goto_16
    return v0
.end method

.method public static blacklist isValidClassLoaderName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
