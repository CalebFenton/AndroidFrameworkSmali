.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final initialized:Z

.field private final pdcache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/CodeSource;",
            "Ljava/security/ProtectionDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "scl"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    #@9
    .line 58
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    #@c
    .line 42
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    #@3
    .line 53
    new-instance v1, Ljava/util/HashMap;

    #@5
    const/16 v2, 0xb

    #@7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@a
    .line 52
    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    #@c
    .line 101
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@f
    move-result-object v0

    #@10
    .line 102
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@12
    .line 103
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@15
    .line 105
    :cond_0
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    #@18
    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 53
    new-instance v1, Ljava/util/HashMap;

    #@5
    const/16 v2, 0xb

    #@7
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@a
    .line 52
    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    #@c
    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@f
    move-result-object v0

    #@10
    .line 79
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@12
    .line 80
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@15
    .line 82
    :cond_0
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    #@18
    .line 75
    return-void
.end method

.method private check()V
    .locals 2

    #@0
    .prologue
    .line 222
    iget-boolean v0, p0, Ljava/security/SecureClassLoader;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 223
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    const-string/jumbo v1, "ClassLoader object not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 221
    :cond_0
    return-void
.end method

.method private getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .locals 8
    .param p1, "cs"    # Ljava/security/CodeSource;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 199
    if-nez p1, :cond_0

    #@3
    .line 200
    return-object v4

    #@4
    .line 202
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 203
    .local v1, "pd":Ljava/security/ProtectionDomain;
    iget-object v5, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    #@7
    monitor-enter v5

    #@8
    .line 204
    :try_start_0
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    #@a
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    move-object v0, v4

    #@f
    check-cast v0, Ljava/security/ProtectionDomain;

    #@11
    move-object v1, v0

    #@12
    .line 205
    .local v1, "pd":Ljava/security/ProtectionDomain;
    if-nez v1, :cond_1

    #@14
    .line 206
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    #@17
    move-result-object v3

    #@18
    .line 207
    .local v3, "perms":Ljava/security/PermissionCollection;
    new-instance v2, Ljava/security/ProtectionDomain;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-direct {v2, p1, v3, p0, v4}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 208
    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    .local v2, "pd":Ljava/security/ProtectionDomain;
    :try_start_1
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    #@20
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 209
    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 210
    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    #@29
    new-instance v6, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v7, " getPermissions "

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v4, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@40
    .line 211
    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    #@42
    const-string/jumbo v6, ""

    #@45
    invoke-virtual {v4, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    move-object v1, v2

    #@49
    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .end local v3    # "perms":Ljava/security/PermissionCollection;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    :cond_1
    :goto_0
    monitor-exit v5

    #@4a
    .line 215
    return-object v1

    #@4b
    .line 203
    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    :catchall_0
    move-exception v4

    #@4c
    :goto_1
    monitor-exit v5

    #@4d
    throw v4

    #@4e
    .restart local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v3    # "perms":Ljava/security/PermissionCollection;
    :catchall_1
    move-exception v4

    #@4f
    move-object v1, v2

    #@50
    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    goto :goto_1

    #@51
    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    .restart local v2    # "pd":Ljava/security/ProtectionDomain;
    :cond_2
    move-object v1, v2

    #@52
    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    goto :goto_0
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "cs"    # Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "cs"    # Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    #@3
    move-result-object v5

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1
    .param p1, "codesource"    # Ljava/security/CodeSource;

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Ljava/security/SecureClassLoader;->check()V

    #@3
    .line 192
    new-instance v0, Ljava/security/Permissions;

    #@5
    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    #@8
    return-object v0
.end method
