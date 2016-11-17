.class Lsun/net/www/protocol/jar/JarFileFactory;
.super Ljava/lang/Object;
.source "JarFileFactory.java"

# interfaces
.implements Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final fileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance:Lsun/net/www/protocol/jar/JarFileFactory;

.field private static final urlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/jar/JarFile;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/net/www/protocol/jar/JarFileFactory;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/jar/JarFileFactory;->-assertionsDisabled:Z

    #@b
    .line 46
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    #@12
    .line 49
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    #@19
    .line 51
    new-instance v0, Lsun/net/www/protocol/jar/JarFileFactory;

    #@1b
    invoke-direct {v0}, Lsun/net/www/protocol/jar/JarFileFactory;-><init>()V

    #@1e
    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@20
    .line 43
    return-void

    #@21
    :cond_0
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 121
    sget-boolean v4, Lsun/net/www/protocol/jar/JarFileFactory;->-assertionsDisabled:Z

    #@3
    if-nez v4, :cond_0

    #@5
    sget-object v4, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@7
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    new-instance v4, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v4

    #@13
    .line 122
    :cond_0
    sget-object v4, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    #@15
    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/jar/JarFile;

    #@1f
    .line 125
    .local v1, "result":Ljava/util/jar/JarFile;
    if-eqz v1, :cond_1

    #@21
    .line 126
    invoke-direct {p0, v1}, Lsun/net/www/protocol/jar/JarFileFactory;->getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;

    #@24
    move-result-object v0

    #@25
    .line 127
    .local v0, "perm":Ljava/security/Permission;
    if-eqz v0, :cond_1

    #@27
    .line 128
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@2a
    move-result-object v3

    #@2b
    .line 129
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    #@2d
    .line 131
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 149
    .end local v0    # "perm":Ljava/security/Permission;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    return-object v1

    #@31
    .line 132
    .restart local v0    # "perm":Ljava/security/Permission;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v2

    #@32
    .line 135
    .local v2, "se":Ljava/lang/SecurityException;
    instance-of v4, v0, Ljava/io/FilePermission;

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 136
    invoke-virtual {v0}, Ljava/io/FilePermission;->getActions()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, "read"

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@40
    move-result v4

    #@41
    if-eq v4, v6, :cond_2

    #@43
    .line 137
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@4a
    goto :goto_0

    #@4b
    .line 138
    :cond_2
    instance-of v4, v0, Ljava/net/SocketPermission;

    #@4d
    if-eqz v4, :cond_3

    #@4f
    .line 140
    invoke-virtual {v0}, Ljava/net/SocketPermission;->getActions()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, "connect"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@59
    move-result v4

    #@5a
    if-eq v4, v6, :cond_3

    #@5c
    .line 141
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@63
    move-result v5

    #@64
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@67
    goto :goto_0

    #@68
    .line 143
    :cond_3
    throw v2
.end method

.method public static getInstance()Lsun/net/www/protocol/jar/JarFileFactory;
    .locals 1

    #@0
    .prologue
    .line 56
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@2
    return-object v0
.end method

.method private getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;
    .locals 3
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 154
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    #@4
    move-result-object v1

    #@5
    .line 155
    .local v1, "uc":Ljava/net/URLConnection;
    if-eqz v1, :cond_0

    #@7
    .line 156
    invoke-virtual {v1}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 157
    .end local v1    # "uc":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    #@d
    .line 161
    :cond_0
    return-object v2
.end method


# virtual methods
.method public close(Ljava/util/jar/JarFile;)V
    .locals 4
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;

    #@0
    .prologue
    .line 113
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@2
    monitor-enter v2

    #@3
    .line 114
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/net/URL;

    #@b
    .line 115
    .local v0, "urlRemoved":Ljava/net/URL;
    if-eqz v0, :cond_0

    #@d
    .line 116
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    #@f
    invoke-static {v0}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v2

    #@17
    .line 112
    return-void

    #@18
    .line 113
    .end local v0    # "urlRemoved":Ljava/net/URL;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public get(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    if-eqz p2, :cond_3

    #@2
    .line 80
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@4
    monitor-enter v2

    #@5
    .line 81
    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .local v1, "result":Ljava/util/jar/JarFile;
    monitor-exit v2

    #@a
    .line 83
    if-nez v1, :cond_1

    #@c
    .line 84
    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    #@f
    move-result-object v0

    #@10
    .line 85
    .local v0, "local_result":Ljava/util/jar/JarFile;
    sget-object v3, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@12
    monitor-enter v3

    #@13
    .line 86
    :try_start_1
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    #@16
    move-result-object v1

    #@17
    .line 87
    if-nez v1, :cond_2

    #@19
    .line 88
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    #@1b
    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 89
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    .line 90
    move-object v1, v0

    #@28
    :cond_0
    :goto_0
    monitor-exit v3

    #@29
    .line 101
    .end local v0    # "local_result":Ljava/util/jar/JarFile;
    :cond_1
    :goto_1
    if-nez v1, :cond_4

    #@2b
    .line 102
    new-instance v2, Ljava/io/FileNotFoundException;

    #@2d
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 80
    .end local v1    # "result":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v2

    #@37
    throw v3

    #@38
    .line 92
    .restart local v0    # "local_result":Ljava/util/jar/JarFile;
    .restart local v1    # "result":Ljava/util/jar/JarFile;
    :cond_2
    if-eqz v0, :cond_0

    #@3a
    .line 93
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3d
    goto :goto_0

    #@3e
    .line 85
    :catchall_1
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2

    #@41
    .line 99
    .end local v0    # "local_result":Ljava/util/jar/JarFile;
    .end local v1    # "result":Ljava/util/jar/JarFile;
    :cond_3
    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    #@44
    move-result-object v1

    #@45
    .restart local v1    # "result":Ljava/util/jar/JarFile;
    goto :goto_1

    #@46
    .line 104
    :cond_4
    return-object v1
.end method

.method getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 61
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    #@3
    monitor-enter v2

    #@4
    .line 62
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "u":Ljava/net/URL;
    monitor-exit v2

    #@d
    .line 64
    if-eqz v0, :cond_0

    #@f
    .line 65
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 61
    .end local v0    # "u":Ljava/net/URL;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 67
    .restart local v0    # "u":Ljava/net/URL;
    :cond_0
    return-object v3
.end method
