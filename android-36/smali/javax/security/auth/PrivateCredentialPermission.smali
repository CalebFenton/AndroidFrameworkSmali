.class public final Ljavax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;
.source "PrivateCredentialPermission.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 42
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p1, "credentialClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getCredentialClass()Ljava/lang/String;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPrincipals()[[Ljava/lang/String;
    .registers 2

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 48
    const/4 v0, 0x1

    return v0
.end method
