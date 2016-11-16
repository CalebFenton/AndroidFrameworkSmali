.class Ljava/lang/BootClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoader.java"


# static fields
.field private static instance:Ljava/lang/BootClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1341
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@4
    .line 1340
    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/lang/BootClassLoader;
    .locals 2
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Ljava/lang/BootClassLoader;

    #@2
    monitor-enter v1

    #@3
    .line 1333
    :try_start_0
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1334
    new-instance v0, Ljava/lang/BootClassLoader;

    #@9
    invoke-direct {v0}, Ljava/lang/BootClassLoader;-><init>()V

    #@c
    sput-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    #@e
    .line 1337
    :cond_0
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
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
    .line 1346
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1, v0, v1}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

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
    .line 1351
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1357
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResources(Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1379
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1392
    :cond_0
    return-object v1

    #@a
    .line 1380
    :cond_1
    monitor-enter p0

    #@b
    .line 1381
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@e
    move-result-object v9

    #@f
    .line 1383
    .local v9, "pack":Ljava/lang/Package;
    if-nez v9, :cond_2

    #@11
    .line 1384
    const-string/jumbo v2, "Unknown"

    #@14
    const-string/jumbo v3, "0.0"

    #@17
    const-string/jumbo v4, "Unknown"

    #@1a
    const-string/jumbo v5, "Unknown"

    #@1d
    const-string/jumbo v6, "0.0"

    #@20
    .line 1385
    const-string/jumbo v7, "Unknown"

    #@23
    const/4 v8, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v1, p1

    #@26
    .line 1384
    invoke-virtual/range {v0 .. v8}, Ljava/lang/BootClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v9

    #@2a
    :cond_2
    monitor-exit p0

    #@2b
    .line 1388
    return-object v9

    #@2c
    .line 1380
    .end local v9    # "pack":Ljava/lang/Package;
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit p0

    #@2e
    throw v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1414
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
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
    .line 1403
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 1405
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@6
    .line 1406
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 1409
    :cond_0
    return-object v0
.end method
