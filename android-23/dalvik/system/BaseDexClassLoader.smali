.class public Ldalvik/system/BaseDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "BaseDexClassLoader.java"


# instance fields
.field private final pathList:Ldalvik/system/DexPathList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 48
    new-instance v0, Ldalvik/system/DexPathList;

    #@5
    invoke-direct {v0, p0, p1, p3, p2}, Ldalvik/system/DexPathList;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    #@8
    iput-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@a
    .line 46
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 54
    .local v2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@7
    invoke-virtual {v5, p1, v2}, Ldalvik/system/DexPathList;->findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 55
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    #@d
    .line 56
    new-instance v1, Ljava/lang/ClassNotFoundException;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "Didn\'t find class \""

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    const-string/jumbo v6, "\" on path: "

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    iget-object v6, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v1, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@33
    .line 57
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v4

    #@37
    .local v4, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_0

    #@3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Ljava/lang/Throwable;

    #@43
    .line 58
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v3}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    #@46
    goto :goto_0

    #@47
    .line 60
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1

    #@48
    .line 62
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    .end local v4    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@2
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@2
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@2
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLdLibraryPath()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 127
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@7
    invoke-virtual {v3}, Ldalvik/system/DexPathList;->getNativeLibraryDirectories()Ljava/util/List;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "directory$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/io/File;

    #@1b
    .line 128
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v3

    #@1f
    if-lez v3, :cond_0

    #@21
    .line 129
    const/16 v3, 0x3a

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 131
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_0

    #@2a
    .line 134
    .end local v0    # "directory":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3
.end method

.method protected declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 108
    if-eqz p1, :cond_0

    #@4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 119
    return-object v1

    #@c
    .line 109
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@f
    move-result-object v9

    #@10
    .line 111
    .local v9, "pack":Ljava/lang/Package;
    if-nez v9, :cond_2

    #@12
    .line 112
    const-string/jumbo v2, "Unknown"

    #@15
    const-string/jumbo v3, "0.0"

    #@18
    const-string/jumbo v4, "Unknown"

    #@1b
    .line 113
    const-string/jumbo v5, "Unknown"

    #@1e
    const-string/jumbo v6, "0.0"

    #@21
    const-string/jumbo v7, "Unknown"

    #@24
    const/4 v8, 0x0

    #@25
    move-object v0, p0

    #@26
    move-object v1, p1

    #@27
    .line 112
    invoke-virtual/range {v0 .. v8}, Ldalvik/system/BaseDexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v9

    #@2b
    :cond_2
    monitor-exit p0

    #@2c
    .line 116
    return-object v9

    #@2d
    .end local v9    # "pack":Ljava/lang/Package;
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit p0

    #@2f
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ldalvik/system/BaseDexClassLoader;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "]"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
