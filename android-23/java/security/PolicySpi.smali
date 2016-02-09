.class public abstract Ljava/security/PolicySpi;
.super Ljava/lang/Object;
.source "PolicySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1
    .param p1, "codesource"    # Ljava/security/CodeSource;

    #@0
    .prologue
    .line 86
    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    #@2
    return-object v0
.end method

.method protected engineGetPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .locals 1
    .param p1, "domain"    # Ljava/security/ProtectionDomain;

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    #@2
    return-object v0
.end method

.method protected abstract engineImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
.end method

.method protected engineRefresh()V
    .locals 0

    #@0
    .prologue
    .line 63
    return-void
.end method
