.class public final Ljavax/security/auth/PrivateCredentialPermission;
.super Ljava/security/Permission;
.source "PrivateCredentialPermission.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "credentialClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCredentialClass()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPrincipals()[[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "p"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 46
    const/4 v0, 0x1

    #@1
    return v0
.end method
