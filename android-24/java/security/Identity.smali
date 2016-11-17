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
.field certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "restoring..."

    #@3
    invoke-direct {p0, v0}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@6
    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    const-string/jumbo v0, "No further information available."

    #@6
    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@8
    .line 132
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@a
    .line 131
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
    .line 119
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 120
    if-eqz p2, :cond_0

    #@5
    .line 121
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    #@8
    .line 123
    :cond_0
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@a
    .line 118
    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    #@0
    .prologue
    .line 496
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    #@9
    .line 495
    :cond_0
    return-void
.end method

.method private keyEquals(Ljava/security/Key;Ljava/security/Key;)Z
    .locals 5
    .param p1, "aKey"    # Ljava/security/Key;
    .param p2, "anotherKey"    # Ljava/security/Key;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 266
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 267
    .local v0, "aKeyFormat":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 268
    .local v1, "anotherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_0

    #@c
    move v4, v2

    #@d
    :goto_0
    if-nez v1, :cond_1

    #@f
    :goto_1
    xor-int/2addr v2, v4

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 269
    return v3

    #@13
    :cond_0
    move v4, v3

    #@14
    .line 268
    goto :goto_0

    #@15
    :cond_1
    move v2, v3

    #@16
    goto :goto_1

    #@17
    .line 270
    :cond_2
    if-eqz v0, :cond_3

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_3

    #@21
    .line 272
    return v3

    #@22
    .line 273
    :cond_3
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@25
    move-result-object v2

    #@26
    .line 274
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    #@29
    move-result-object v3

    #@2a
    .line 273
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@2d
    move-result v2

    #@2e
    return v2
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    const-string/jumbo v0, "addIdentityCertificate"

    #@3
    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    #@6
    .line 251
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 252
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@11
    .line 254
    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 255
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@17
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v0, v1}, Ljava/security/Identity;->keyEquals(Ljava/security/Key;Ljava/security/Key;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 256
    new-instance v0, Ljava/security/KeyManagementException;

    #@23
    .line 257
    const-string/jumbo v1, "public key different from cert public key"

    #@26
    .line 256
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 260
    :cond_1
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@30
    .line 262
    :cond_2
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@32
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    .line 247
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .locals 3

    #@0
    .prologue
    .line 315
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 316
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Ljava/security/Certificate;

    #@7
    return-object v2

    #@8
    .line 318
    :cond_0
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@a
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@d
    move-result v1

    #@e
    .line 319
    .local v1, "len":I
    new-array v0, v1, [Ljava/security/Certificate;

    #@10
    .line 320
    .local v0, "certs":[Ljava/security/Certificate;
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    #@15
    .line 321
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "identity"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 341
    if-ne p1, p0, :cond_0

    #@3
    .line 342
    return v3

    #@4
    .line 345
    :cond_0
    instance-of v1, p1, Ljava/security/Identity;

    #@6
    if-eqz v1, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 346
    nop

    #@a
    nop

    #@b
    .line 347
    .local v0, "i":Ljava/security/Identity;
    invoke-virtual {p0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 348
    return v3

    #@1a
    .line 350
    :cond_1
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 353
    .end local v0    # "i":Ljava/security/Identity;
    :cond_2
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method fullName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@2
    .line 389
    .local v0, "parsable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "."

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@18
    invoke-virtual {v2}, Ljava/security/Identity;->getName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 392
    :cond_0
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .locals 4
    .param p1, "identity"    # Ljava/security/Identity;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 370
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@4
    iget-object v3, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 371
    return v2

    #@d
    .line 373
    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@f
    if-nez v0, :cond_1

    #@11
    move v0, v1

    #@12
    :goto_0
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@14
    if-nez v3, :cond_2

    #@16
    move v3, v1

    #@17
    :goto_1
    xor-int/2addr v0, v3

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 374
    return v2

    #@1b
    :cond_1
    move v0, v2

    #@1c
    .line 373
    goto :goto_0

    #@1d
    :cond_2
    move v3, v2

    #@1e
    goto :goto_1

    #@1f
    .line 376
    :cond_3
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@21
    if-eqz v0, :cond_4

    #@23
    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@25
    if-eqz v0, :cond_4

    #@27
    .line 377
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@29
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_4

    #@31
    .line 378
    return v2

    #@32
    .line 380
    :cond_4
    return v1
.end method

.method printCertificates()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 469
    const-string/jumbo v4, ""

    #@3
    .line 470
    .local v4, "out":Ljava/lang/String;
    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 471
    const-string/jumbo v5, "\tno certificates"

    #@a
    return-object v5

    #@b
    .line 473
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    const-string/jumbo v6, "\tcertificates: \n"

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 475
    const/4 v2, 0x1

    #@20
    .line 476
    .local v2, "i":I
    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/security/Certificate;

    #@32
    .line 477
    .local v0, "cert":Ljava/security/Certificate;
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, "\tcertificate "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    add-int/lit8 v3, v2, 0x1

    #@44
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 478
    const-string/jumbo v6, "\tfor  : "

    #@4b
    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 478
    invoke-interface {v0}, Ljava/security/Certificate;->getPrincipal()Ljava/security/Principal;

    #@52
    move-result-object v6

    #@53
    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 478
    const-string/jumbo v6, "\n"

    #@5a
    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    const-string/jumbo v6, "\t\t\tfrom : "

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 480
    invoke-interface {v0}, Ljava/security/Certificate;->getGuarantor()Ljava/security/Principal;

    #@75
    move-result-object v6

    #@76
    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    .line 480
    const-string/jumbo v6, "\n"

    #@7d
    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    move v2, v3

    #@86
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@87
    .line 483
    .end local v0    # "cert":Ljava/security/Certificate;
    :cond_1
    return-object v4
.end method

.method printKeys()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 459
    const-string/jumbo v0, ""

    #@3
    .line 460
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 461
    const-string/jumbo v0, "\tpublic key initialized"

    #@a
    .line 465
    :goto_0
    return-object v0

    #@b
    .line 463
    :cond_0
    const-string/jumbo v0, "\tno public key"

    #@e
    goto :goto_0
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .locals 1
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    const-string/jumbo v0, "removeIdentityCertificate"

    #@3
    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    #@6
    .line 299
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 302
    if-eqz p1, :cond_1

    #@c
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 305
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@19
    .line 297
    :cond_0
    return-void

    #@1a
    .line 303
    :cond_1
    new-instance v0, Ljava/security/KeyManagementException;

    #@1c
    invoke-direct {v0}, Ljava/security/KeyManagementException;-><init>()V

    #@1f
    throw v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    const-string/jumbo v0, "setIdentityInfo"

    #@3
    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    #@6
    .line 210
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@8
    .line 208
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    const-string/jumbo v0, "setIdentityPublicKey"

    #@3
    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    #@6
    .line 188
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    #@8
    .line 189
    new-instance v0, Ljava/util/Vector;

    #@a
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@d
    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    #@f
    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 413
    const-string/jumbo v1, "printIdentity"

    #@3
    invoke-static {v1}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    #@6
    .line 414
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    #@8
    .line 415
    .local v0, "printable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "["

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    #@1e
    invoke-virtual {v2}, Ljava/security/Identity;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "]"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 418
    :cond_0
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "detailed"    # Z

    #@0
    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 445
    .local v0, "out":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "\n"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0}, Ljava/security/Identity;->printKeys()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, "\n"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {p0}, Ljava/security/Identity;->printCertificates()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 449
    iget-object v1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, "\n\t"

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 455
    :cond_0
    :goto_0
    return-object v0

    #@6a
    .line 452
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, "\n\tno additional information available."

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    goto :goto_0
.end method
