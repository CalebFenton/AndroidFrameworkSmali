.class public Landroid/filterfw/core/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterFactory"

.field private static mClassLoaderGuard:Ljava/lang/Object;

.field private static mCurrentClassLoader:Ljava/lang/ClassLoader;

.field private static mLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogVerbose:Z

.field private static mSharedFactory:Landroid/filterfw/core/FilterFactory;


# instance fields
.field private mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    #@a
    .line 44
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    sput-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    #@11
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    #@18
    .line 49
    const-string/jumbo v0, "FilterFactory"

    #@1b
    const/4 v1, 0x2

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v0

    #@20
    sput-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@22
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    #@a
    .line 33
    return-void
.end method

.method public static addFilterLibrary(Ljava/lang/String;)V
    .locals 3
    .param p0, "libraryPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "FilterFactory"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Adding filter library "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 66
    :cond_0
    sget-object v1, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    #@20
    monitor-enter v1

    #@21
    .line 67
    :try_start_0
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    #@23
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 68
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@2b
    if-eqz v0, :cond_1

    #@2d
    const-string/jumbo v0, "FilterFactory"

    #@30
    const-string/jumbo v2, "Library already added"

    #@33
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_1
    monitor-exit v1

    #@37
    .line 69
    return-void

    #@38
    .line 71
    :cond_2
    :try_start_1
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    #@3a
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3d
    .line 73
    new-instance v0, Ldalvik/system/PathClassLoader;

    #@3f
    sget-object v2, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    #@41
    invoke-direct {v0, p0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@44
    sput-object v0, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit v1

    #@47
    .line 64
    return-void

    #@48
    .line 66
    :catchall_0
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0
.end method

.method public static sharedFactory()Landroid/filterfw/core/FilterFactory;
    .locals 1

    #@0
    .prologue
    .line 52
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 53
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    #@6
    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    #@9
    sput-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    #@b
    .line 55
    :cond_0
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    #@d
    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "FilterFactory"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Adding package "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 85
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23
    .line 77
    return-void
.end method

.method public createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 9
    .param p1, "filterClass"    # Ljava/lang/Class;
    .param p2, "filterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    :try_start_0
    const-class v6, Landroid/filterfw/core/Filter;

    #@2
    invoke-virtual {p1, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 123
    const/4 v4, 0x0

    #@6
    .line 125
    .local v4, "filterConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    #@7
    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    #@9
    const-class v7, Ljava/lang/String;

    #@b
    const/4 v8, 0x0

    #@c
    aput-object v7, v6, v8

    #@e
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@11
    move-result-object v4

    #@12
    .line 132
    .local v4, "filterConstructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    #@13
    .line 134
    .local v3, "filter":Landroid/filterfw/core/Filter;
    const/4 v6, 0x1

    #@14
    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    #@16
    const/4 v7, 0x0

    #@17
    aput-object p2, v6, v7

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    move-object v0, v6

    #@1e
    check-cast v0, Landroid/filterfw/core/Filter;

    #@20
    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@21
    .line 139
    .end local v3    # "filter":Landroid/filterfw/core/Filter;
    :goto_0
    if-nez v3, :cond_0

    #@23
    .line 140
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v7, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v8, "Could not construct the filter \'"

    #@2d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    .line 141
    const-string/jumbo v8, "\'!"

    #@38
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 117
    .end local v4    # "filterConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    #@45
    .line 118
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "Attempting to allocate class \'"

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    .line 119
    const-string/jumbo v8, "\' which is not a subclass of Filter!"

    #@5a
    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 126
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .local v4, "filterConstructor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    #@67
    .line 127
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@69
    new-instance v7, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v8, "The filter class \'"

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    .line 128
    const-string/jumbo v8, "\' does not have a constructor of the form <init>(String name)!"

    #@7c
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v6

    #@88
    .line 143
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .local v4, "filterConstructor":Ljava/lang/reflect/Constructor;
    :cond_0
    return-object v3

    #@89
    .line 135
    .restart local v3    # "filter":Landroid/filterfw/core/Filter;
    :catch_2
    move-exception v5

    #@8a
    .local v5, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    sget-boolean v4, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "FilterFactory"

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "Looking up class "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 90
    :cond_0
    const/4 v1, 0x0

    #@1f
    .line 93
    .local v1, "filterClass":Ljava/lang/Class;
    iget-object v4, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    #@21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v3

    #@25
    .end local v1    # "filterClass":Ljava/lang/Class;
    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    .line 95
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    sget-boolean v4, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    #@33
    if-eqz v4, :cond_2

    #@35
    const-string/jumbo v4, "FilterFactory"

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Trying "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    const-string/jumbo v6, "."

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 96
    :cond_2
    sget-object v5, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    #@5c
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 97
    :try_start_1
    sget-object v4, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    const-string/jumbo v7, "."

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    move-result-object v1

    #@7b
    .local v1, "filterClass":Ljava/lang/Class;
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@7c
    .line 103
    if-eqz v1, :cond_1

    #@7e
    .line 107
    .end local v1    # "filterClass":Ljava/lang/Class;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    #@80
    .line 108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@82
    new-instance v5, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v6, "Unknown filter class \'"

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    const-string/jumbo v6, "\'!"

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v4

    #@a1
    .line 96
    .restart local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@a2
    :try_start_3
    monitor-exit v5

    #@a3
    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    #@a4
    .line 99
    :catch_0
    move-exception v0

    #@a5
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    #@a6
    .line 110
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1, p2}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@a9
    move-result-object v4

    #@aa
    return-object v4
.end method
