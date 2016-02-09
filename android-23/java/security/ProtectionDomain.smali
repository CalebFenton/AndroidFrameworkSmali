.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .locals 0
    .param p1, "cs"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .locals 0
    .param p1, "cs"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .param p4, "principals"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 28
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getCodeSource()Ljava/security/CodeSource;
    .locals 1

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getPermissions()Ljava/security/PermissionCollection;
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getPrincipals()[Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 36
    const/4 v0, 0x1

    #@1
    return v0
.end method
