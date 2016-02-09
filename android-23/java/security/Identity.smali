.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const-string/jumbo v0, "no additional info"

    #@6
    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@8
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const-string/jumbo v0, "no additional info"

    #@6
    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@8
    .line 58
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@a
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 76
    if-eqz p2, :cond_0

    #@5
    .line 77
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    #@8
    .line 78
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@a
    .line 74
    :cond_0
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 5
    .param p0, "pk1"    # Ljava/security/PublicKey;
    .param p1, "pk2"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 115
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 117
    .local v0, "format1":Ljava/lang/String;
    if-eqz p1, :cond_3

    #@8
    .line 118
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .local v1, "format2":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@e
    move v4, v2

    #@f
    :goto_0
    if-eqz v0, :cond_2

    #@11
    :goto_1
    xor-int/2addr v2, v4

    #@12
    .line 117
    if-nez v2, :cond_3

    #@14
    .line 119
    if-eqz v0, :cond_0

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 123
    :cond_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@1f
    move-result-object v2

    #@20
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@27
    move-result v2

    #@28
    return v2

    #@29
    :cond_1
    move v4, v3

    #@2a
    .line 118
    goto :goto_0

    #@2b
    :cond_2
    move v2, v3

    #@2c
    goto :goto_1

    #@2d
    .line 120
    .end local v1    # "format2":Ljava/lang/String;
    :cond_3
    return v3
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .locals 3
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "certPK":Ljava/security/PublicKey;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 93
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@a
    invoke-static {v1, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 94
    new-instance v1, Ljava/security/KeyManagementException;

    #@12
    const-string/jumbo v2, "Cert\'s public key does not match Identity\'s public key"

    #@15
    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 97
    :cond_0
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@1b
    .line 99
    :cond_1
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 100
    new-instance v1, Ljava/util/Vector;

    #@21
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@24
    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@26
    .line 102
    :cond_2
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@28
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@2b
    .line 90
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 158
    const/4 v1, 0x0

    #@5
    new-array v1, v1, [Ljava/security/Certificate;

    #@7
    return-object v1

    #@8
    .line 160
    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@d
    move-result v1

    #@e
    new-array v0, v1, [Ljava/security/Certificate;

    #@10
    .line 161
    .local v0, "ret":[Ljava/security/Certificate;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    #@15
    .line 162
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 296
    if-ne p0, p1, :cond_0

    #@3
    .line 297
    return v3

    #@4
    .line 299
    :cond_0
    instance-of v1, p1, Ljava/security/Identity;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 300
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 302
    check-cast v0, Ljava/security/Identity;

    #@d
    .line 303
    .local v0, "i":Ljava/security/Identity;
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@f
    iget-object v2, v0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@19
    iget-object v2, v0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@1b
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 304
    return v3

    #@22
    .line 306
    :cond_2
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    .line 330
    .local v0, "hash":I
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 331
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, 0x0

    #@d
    .line 333
    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 334
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@13
    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    .line 336
    :cond_1
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .locals 3
    .param p1, "identity"    # Ljava/security/Identity;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@3
    iget-object v2, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 183
    return v0

    #@c
    .line 186
    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 187
    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@12
    if-nez v1, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    :cond_1
    return v0

    #@16
    .line 190
    :cond_2
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@18
    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@1a
    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 139
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 140
    new-instance v0, Ljava/security/KeyManagementException;

    #@e
    const-string/jumbo v1, "Certificate not found"

    #@11
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 142
    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@1a
    .line 137
    :cond_1
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 270
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@2
    .line 269
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 238
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@3
    if-eqz v1, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 239
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@9
    invoke-virtual {v1, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    #@c
    move-result-object v0

    #@d
    .line 241
    .local v0, "i":Ljava/security/Identity;
    if-eqz v0, :cond_0

    #@f
    if-eq v0, p0, :cond_0

    #@11
    .line 242
    new-instance v1, Ljava/security/KeyManagementException;

    #@13
    const-string/jumbo v2, "key already used in scope"

    #@16
    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 245
    .end local v0    # "i":Ljava/security/Identity;
    :cond_0
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@1c
    .line 246
    iput-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@1e
    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 347
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@2
    if-nez v1, :cond_1

    #@4
    const-string/jumbo v0, ""

    #@7
    .line 348
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " ["

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@1d
    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "]"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 351
    :cond_0
    return-object v0

    #@31
    .line 347
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@33
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "detailed"    # Z

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 209
    :cond_0
    return-object v0
.end method
