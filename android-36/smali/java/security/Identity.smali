.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "1.2"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field greylist-max-o certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o info:Ljava/lang/String;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o publicKey:Ljava/security/PublicKey;

.field greylist-max-o scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 107
    const-string v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "No further information available."

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 122
    if-eqz p2, :cond_8

    .line 123
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 125
    :cond_8
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 126
    return-void
.end method

.method private static greylist-max-o check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

    .line 498
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 499
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 500
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 502
    :cond_9
    return-void
.end method

.method private greylist-max-o keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 8
    .param p1, "aKey"    # Ljava/security/PublicKey;
    .param p2, "anotherKey"    # Ljava/security/PublicKey;

    .line 268
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "aKeyFormat":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "anotherKeyFormat":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    :goto_f
    if-nez v1, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    xor-int/2addr v2, v4

    if-eqz v2, :cond_17

    .line 271
    return v3

    .line 272
    :cond_17
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 274
    return v3

    .line 275
    :cond_22
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 276
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 275
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public whitelist test-api addCertificate(Ljava/security/Certificate;)V
    .registers 4
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 251
    const-string v0, "addIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_10

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 256
    :cond_10
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_29

    .line 257
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/Identity;->keyEquals(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2f

    .line 258
    :cond_21
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "public key different from cert public key"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_29
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 264
    :goto_2f
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public whitelist test-api certificates()[Ljava/security/Certificate;
    .registers 4

    .line 317
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_8

    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/Certificate;

    return-object v0

    .line 320
    :cond_8
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 321
    .local v0, "len":I
    new-array v1, v0, [Ljava/security/Certificate;

    .line 322
    .local v1, "certs":[Ljava/security/Certificate;
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 323
    return-object v1
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "identity"    # Ljava/lang/Object;

    .line 343
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 344
    return v0

    .line 347
    :cond_4
    instance-of v1, p1, Ljava/security/Identity;

    if-eqz v1, :cond_1f

    .line 348
    move-object v1, p1

    check-cast v1, Ljava/security/Identity;

    .line 349
    .local v1, "i":Ljava/security/Identity;
    invoke-virtual {p0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 350
    return v0

    .line 352
    :cond_1a
    invoke-virtual {p0, v1}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v0

    return v0

    .line 355
    .end local v1    # "i":Ljava/security/Identity;
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o fullName()Ljava/lang/String;
    .registers 4

    .line 390
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 391
    .local v0, "parsable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_23

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_23
    return-object v0
.end method

.method public whitelist test-api getInfo()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 163
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final whitelist test-api getScope()Ljava/security/IdentityScope;
    .registers 2

    .line 152
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 494
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api identityEquals(Ljava/security/Identity;)Z
    .registers 6
    .param p1, "identity"    # Ljava/security/Identity;

    .line 372
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 373
    return v1

    .line 375
    :cond_c
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    const/4 v2, 0x1

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    xor-int/2addr v0, v3

    if-eqz v0, :cond_1f

    .line 376
    return v1

    .line 378
    :cond_1f
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_32

    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_32

    .line 379
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 380
    return v1

    .line 382
    :cond_32
    return v2
.end method

.method greylist-max-o printCertificates()Ljava/lang/String;
    .registers 8

    .line 471
    const-string v0, ""

    .line 472
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_9

    .line 473
    const-string v1, "\tno certificates"

    return-object v1

    .line 475
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tcertificates: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    const/4 v1, 0x1

    .line 478
    .local v1, "i":I
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Certificate;

    .line 479
    .local v3, "cert":Ljava/security/Certificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tcertificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\tfor  : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-interface {v3}, Ljava/security/Certificate;->getPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\t\t\tfrom : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-interface {v3}, Ljava/security/Certificate;->getGuarantor()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .end local v3    # "cert":Ljava/security/Certificate;
    move v1, v5

    goto :goto_23

    .line 485
    .end local v5    # "i":I
    :cond_7d
    return-object v0
.end method

.method greylist-max-o printKeys()Ljava/lang/String;
    .registers 3

    .line 461
    const-string v0, ""

    .line 462
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_9

    .line 463
    const-string v0, "\tpublic key initialized"

    goto :goto_b

    .line 465
    :cond_9
    const-string v0, "\tno public key"

    .line 467
    :goto_b
    return-object v0
.end method

.method public whitelist test-api removeCertificate(Ljava/security/Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 300
    const-string v0, "removeIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_1f

    .line 304
    if-eqz p1, :cond_19

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 307
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 305
    :cond_19
    new-instance v0, Ljava/security/KeyManagementException;

    invoke-direct {v0}, Ljava/security/KeyManagementException;-><init>()V

    throw v0

    .line 309
    :cond_1f
    :goto_1f
    return-void
.end method

.method public whitelist test-api setInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 211
    const-string v0, "setIdentityInfo"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public whitelist test-api setPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 189
    const-string v0, "setIdentityPublicKey"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 191
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 192
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 415
    const-string v0, "printIdentity"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 417
    .local v0, "printable":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_2e

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_2e
    return-object v0
.end method

.method public whitelist test-api toString(Z)Ljava/lang/String;
    .registers 6
    .param p1, "detailed"    # Z

    .line 446
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "out":Ljava/lang/String;
    if-eqz p1, :cond_78

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printKeys()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printCertificates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 454
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tno additional information available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_78
    :goto_78
    return-object v0
.end method
