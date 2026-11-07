.class Lsun/net/www/protocol/jar/JarFileFactory;
.super Ljava/lang/Object;
.source "JarFileFactory.java"

# interfaces
.implements Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist fileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist instance:Lsun/net/www/protocol/jar/JarFileFactory;

.field private static final blacklist urlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/jar/JarFile;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-direct {v0}, Lsun/net/www/protocol/jar/JarFileFactory;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 9
    .param p1, "url"    # Ljava/net/URL;

    .line 121
    nop

    .line 122
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarFile;

    .line 125
    .local v0, "result":Ljava/util/jar/JarFile;
    if-eqz v0, :cond_56

    .line 126
    invoke-direct {p0, v0}, Lsun/net/www/protocol/jar/JarFileFactory;->getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;

    move-result-object v1

    .line 127
    .local v1, "perm":Ljava/security/Permission;
    if-eqz v1, :cond_56

    .line 128
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 129
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_56

    .line 131
    :try_start_1b
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 145
    goto :goto_56

    .line 132
    :catch_1f
    move-exception v3

    .line 135
    .local v3, "se":Ljava/lang/SecurityException;
    instance-of v4, v1, Ljava/io/FilePermission;

    const/4 v5, -0x1

    if-eqz v4, :cond_39

    .line 136
    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string v6, "read"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_39

    .line 137
    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_56

    .line 138
    :cond_39
    instance-of v4, v1, Ljava/net/SocketPermission;

    if-eqz v4, :cond_55

    .line 140
    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_55

    .line 141
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_56

    .line 143
    :cond_55
    throw v3

    .line 149
    .end local v1    # "perm":Ljava/security/Permission;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_56
    :goto_56
    return-object v0
.end method

.method public static blacklist getInstance()Lsun/net/www/protocol/jar/JarFileFactory;
    .registers 1

    .line 56
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    return-object v0
.end method

.method private blacklist getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;
    .registers 4
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;

    .line 154
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    move-result-object v0

    .line 155
    .local v0, "uc":Ljava/net/URLConnection;
    if-eqz v0, :cond_b

    .line 156
    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 159
    .end local v0    # "uc":Ljava/net/URLConnection;
    :cond_b
    goto :goto_d

    .line 157
    :catch_c
    move-exception v0

    .line 161
    :goto_d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist close(Ljava/util/jar/JarFile;)V
    .registers 6
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;

    .line 113
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v0

    .line 114
    :try_start_3
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 115
    .local v1, "urlRemoved":Ljava/net/URL;
    if-eqz v1, :cond_16

    .line 116
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {v1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "urlRemoved":Ljava/net/URL;
    :cond_16
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist get(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method blacklist get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;
    .registers 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    if-eqz p2, :cond_37

    .line 80
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v0

    .line 81
    :try_start_5
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    .line 82
    .local v1, "result":Ljava/util/jar/JarFile;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_34

    .line 83
    if-nez v1, :cond_3b

    .line 84
    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    .line 85
    .local v0, "local_result":Ljava/util/jar/JarFile;
    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v2

    .line 86
    :try_start_13
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v3

    move-object v1, v3

    .line 87
    if-nez v1, :cond_2a

    .line 88
    sget-object v3, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v3, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-object v1, v0

    goto :goto_2f

    .line 92
    :cond_2a
    if-eqz v0, :cond_2f

    .line 93
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 96
    :cond_2f
    :goto_2f
    monitor-exit v2

    goto :goto_3b

    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v3

    .line 82
    .end local v0    # "local_result":Ljava/util/jar/JarFile;
    .end local v1    # "result":Ljava/util/jar/JarFile;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    .line 99
    :cond_37
    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v1

    .line 101
    .restart local v1    # "result":Ljava/util/jar/JarFile;
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_3e

    .line 104
    return-object v1

    .line 102
    :cond_3e
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 63
    .local v1, "u":Ljava/net/URL;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 64
    if-eqz v1, :cond_13

    .line 65
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0

    .line 67
    :cond_13
    const/4 v0, 0x0

    return-object v0

    .line 63
    .end local v1    # "u":Ljava/net/URL;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method
