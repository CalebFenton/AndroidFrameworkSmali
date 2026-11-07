.class public final Ldalvik/system/DelegateLastClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "DelegateLastClassLoader.java"


# instance fields
.field private final blacklist delegateResourceLoading:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    .line 57
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    .line 65
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "delegateResourceLoading"    # Z

    .line 106
    invoke-direct {p0, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 107
    iput-boolean p4, p0, Ldalvik/system/DelegateLastClassLoader;->delegateResourceLoading:Z

    .line 108
    return-void
.end method

.method public constructor blacklist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V
    .registers 11
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "sharedLibraryLoaders"    # [Ljava/lang/ClassLoader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 139
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p2    # "librarySearchPath":Ljava/lang/String;
    .end local p3    # "parent":Ljava/lang/ClassLoader;
    .end local p4    # "sharedLibraryLoaders":[Ljava/lang/ClassLoader;
    .local v1, "dexPath":Ljava/lang/String;
    .local v2, "librarySearchPath":Ljava/lang/String;
    .local v3, "parent":Ljava/lang/ClassLoader;
    .local v4, "sharedLibraryLoaders":[Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v5}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    .line 140
    return-void
.end method

.method public constructor blacklist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V
    .registers 8
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "sharedLibraryLoaders"    # [Ljava/lang/ClassLoader;
    .param p5, "sharedLibraryLoadersAfter"    # [Ljava/lang/ClassLoader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 175
    invoke-direct/range {p0 .. p5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    .line 177
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "dexPath":Ljava/lang/String;
    .local v0, "sharedLibraryLoadersAfter":[Ljava/lang/ClassLoader;
    .local p2, "dexPath":Ljava/lang/String;
    .local p3, "librarySearchPath":Ljava/lang/String;
    .local p4, "parent":Ljava/lang/ClassLoader;
    .local p5, "sharedLibraryLoaders":[Ljava/lang/ClassLoader;
    const/4 v1, 0x1

    iput-boolean v1, p1, Ldalvik/system/DelegateLastClassLoader;->delegateResourceLoading:Z

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 221
    .local v0, "resource":Ljava/net/URL;
    if-eqz v0, :cond_d

    .line 222
    return-object v0

    .line 225
    :cond_d
    invoke-virtual {p0, p1}, Ldalvik/system/DelegateLastClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_14

    .line 227
    return-object v0

    .line 230
    :cond_14
    iget-boolean v1, p0, Ldalvik/system/DelegateLastClassLoader;->delegateResourceLoading:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 231
    invoke-virtual {p0}, Ldalvik/system/DelegateLastClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 232
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    :goto_24
    return-object v2

    .line 234
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_25
    return-object v2
.end method

.method public whitelist test-api getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Enumeration;

    const-class v1, Ljava/lang/Object;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 242
    invoke-virtual {p0, p1}, Ldalvik/system/DelegateLastClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 243
    invoke-virtual {p0}, Ldalvik/system/DelegateLastClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Ldalvik/system/DelegateLastClassLoader;->delegateResourceLoading:Z

    if-nez v1, :cond_22

    goto :goto_2b

    .line 244
    :cond_22
    invoke-virtual {p0}, Ldalvik/system/DelegateLastClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    :goto_2c
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 246
    .local v0, "resources":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v1, Lsun/misc/CompoundEnumeration;

    invoke-direct {v1, v0}, Lsun/misc/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    return-object v1
.end method

.method protected whitelist test-api loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Ldalvik/system/DelegateLastClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_7

    .line 186
    return-object v0

    .line 191
    :cond_7
    :try_start_7
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    .line 192
    :catch_12
    move-exception v1

    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, "fromSuper":Ljava/lang/ClassNotFoundException;
    :try_start_14
    invoke-virtual {p0, p1}, Ldalvik/system/DelegateLastClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_18} :catch_19

    return-object v2

    .line 200
    :catch_19
    move-exception v2

    .line 201
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    move-object v1, v2

    .line 206
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1b
    invoke-virtual {p0}, Ldalvik/system/DelegateLastClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_23} :catch_24

    return-object v2

    .line 207
    :catch_24
    move-exception v2

    .line 212
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    throw v1
.end method
