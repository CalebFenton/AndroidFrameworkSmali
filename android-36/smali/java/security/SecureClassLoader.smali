.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# static fields
.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private final greylist-max-o initialized:Z

.field private final greylist-max-o pdcache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/security/CodeSource;",
            "Ljava/security/ProtectionDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-string v0, "scl"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    .line 58
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 59
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    .line 101
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 102
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 103
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 105
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    .line 106
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 79
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 80
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 82
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    .line 83
    return-void
.end method

.method private greylist-max-o check()V
    .registers 3

    .line 222
    iget-boolean v0, p0, Ljava/security/SecureClassLoader;->initialized:Z

    if-eqz v0, :cond_5

    .line 225
    return-void

    .line 223
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "ClassLoader object not initialized"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .registers 8
    .param p1, "cs"    # Ljava/security/CodeSource;

    .line 199
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 200
    return-object v0

    .line 202
    :cond_4
    const/4 v1, 0x0

    .line 203
    .local v1, "pd":Ljava/security/ProtectionDomain;
    iget-object v2, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    monitor-enter v2

    .line 204
    :try_start_8
    iget-object v3, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/ProtectionDomain;

    move-object v1, v3

    .line 205
    if-nez v1, :cond_45

    .line 206
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v3

    .line 207
    .local v3, "perms":Ljava/security/PermissionCollection;
    new-instance v4, Ljava/security/ProtectionDomain;

    invoke-direct {v4, p1, v3, p0, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    move-object v1, v4

    .line 208
    iget-object v0, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_45

    .line 210
    sget-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getPermissions "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 211
    sget-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 214
    .end local v3    # "perms":Ljava/security/PermissionCollection;
    :cond_45
    monitor-exit v2

    .line 215
    return-object v1

    .line 214
    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v0
.end method


# virtual methods
.method protected final whitelist test-api defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .registers 5
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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist test-api defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .registers 12
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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "b":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "b":[B
    .local v3, "off":I
    .local v4, "len":I
    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .line 191
    invoke-direct {p0}, Ljava/security/SecureClassLoader;->check()V

    .line 192
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
