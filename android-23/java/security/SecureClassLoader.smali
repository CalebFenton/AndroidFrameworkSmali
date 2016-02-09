.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# instance fields
.field private pds:Ljava/util/HashMap;
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
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    #@a
    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 31
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    #@a
    .line 47
    return-void
.end method

.method private getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .locals 4
    .param p1, "cs"    # Ljava/security/CodeSource;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 130
    if-nez p1, :cond_0

    #@3
    .line 131
    return-object v2

    #@4
    .line 136
    :cond_0
    iget-object v3, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    #@6
    monitor-enter v3

    #@7
    .line 137
    :try_start_0
    iget-object v2, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    #@9
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/security/ProtectionDomain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "pd":Ljava/security/ProtectionDomain;
    if-eqz v0, :cond_1

    #@11
    monitor-exit v3

    #@12
    .line 138
    return-object v0

    #@13
    .line 140
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    #@16
    move-result-object v1

    #@17
    .line 141
    .local v1, "perms":Ljava/security/PermissionCollection;
    new-instance v0, Ljava/security/ProtectionDomain;

    #@19
    .end local v0    # "pd":Ljava/security/ProtectionDomain;
    const/4 v2, 0x0

    #@1a
    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    #@1d
    .line 142
    .restart local v0    # "pd":Ljava/security/ProtectionDomain;
    iget-object v2, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 144
    return-object v0

    #@24
    .line 136
    .end local v0    # "pd":Ljava/security/ProtectionDomain;
    .end local v1    # "perms":Ljava/security/PermissionCollection;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
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
    const/4 v3, 0x0

    #@1
    .line 118
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    #@4
    move-result-object v2

    #@5
    .line 119
    .local v2, "data":[B
    if-nez p3, :cond_0

    #@7
    array-length v0, v2

    #@8
    invoke-virtual {p0, p1, v2, v3, v0}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    :goto_0
    return-object v0

    #@d
    .line 120
    :cond_0
    array-length v4, v2

    #@e
    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    #@11
    move-result-object v5

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    goto :goto_0
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
    .line 93
    if-nez p5, :cond_0

    #@2
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    .line 94
    :cond_0
    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    #@a
    move-result-object v5

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    move v3, p3

    #@f
    move v4, p4

    #@10
    .line 93
    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1
    .param p1, "codesource"    # Ljava/security/CodeSource;

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/security/Permissions;

    #@2
    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    #@5
    return-object v0
.end method
