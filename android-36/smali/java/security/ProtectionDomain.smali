.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .registers 5
    .param p1, "codesource"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;
    .param p3, "classloader"    # Ljava/lang/ClassLoader;
    .param p4, "principals"    # [Ljava/security/Principal;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getCodeSource()Ljava/security/CodeSource;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getPermissions()Ljava/security/PermissionCollection;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getPrincipals()[Ljava/security/Principal;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 53
    const/4 v0, 0x1

    return v0
.end method
