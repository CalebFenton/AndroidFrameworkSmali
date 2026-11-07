.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "actions"    # Ljava/lang/String;
    .param p4, "certs"    # [Ljava/security/cert/Certificate;

    .line 50
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUnresolvedActions()Ljava/lang/String;
    .registers 2

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .registers 2

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUnresolvedName()Ljava/lang/String;
    .registers 2

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUnresolvedType()Ljava/lang/String;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 52
    const/4 v0, 0x0

    return v0
.end method
