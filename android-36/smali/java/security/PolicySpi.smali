.class public abstract Ljava/security/PolicySpi;
.super Ljava/lang/Object;
.source "PolicySpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .line 92
    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method protected whitelist test-api engineGetPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "domain"    # Ljava/security/ProtectionDomain;

    .line 116
    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method protected abstract whitelist test-api engineImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
.end method

.method protected whitelist test-api engineRefresh()V
    .registers 1

    .line 69
    return-void
.end method
