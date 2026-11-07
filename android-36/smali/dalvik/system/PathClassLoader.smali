.class public Ldalvik/system/PathClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "PathClassLoader.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 72
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

    .line 106
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
    invoke-direct/range {v0 .. v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    .line 107
    return-void
.end method

.method public constructor blacklist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "sharedLibraryLoaders"    # [Ljava/lang/ClassLoader;
    .param p5, "sharedLibraryLoadersAfter"    # [Ljava/lang/ClassLoader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 146
    invoke-direct/range {p0 .. p5}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    .line 147
    return-void
.end method
