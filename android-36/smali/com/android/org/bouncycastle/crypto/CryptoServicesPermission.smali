.class public Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;
.source "CryptoServicesPermission.java"


# instance fields
.field private final blacklist actions:Ljava/util/Set;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    .line 41
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 66
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_12

    .line 68
    check-cast p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 70
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 4

    .line 46
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_21

    .line 48
    check-cast p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 50
    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    .line 55
    :cond_16
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
