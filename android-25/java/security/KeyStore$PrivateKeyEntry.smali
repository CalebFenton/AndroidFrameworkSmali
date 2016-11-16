.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private final chain:[Ljava/security/cert/Certificate;

.field private final privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 422
    if-eqz p1, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    .line 423
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v4, "invalid null input"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 425
    :cond_1
    array-length v3, p2

    #@12
    if-nez v3, :cond_2

    #@14
    .line 426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    .line 427
    const-string/jumbo v4, "invalid zero-length input chain"

    #@19
    .line 426
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3

    #@1d
    .line 430
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, [Ljava/security/cert/Certificate;

    #@23
    .line 431
    .local v1, "clonedChain":[Ljava/security/cert/Certificate;
    aget-object v3, v1, v5

    #@25
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 432
    .local v0, "certType":Ljava/lang/String;
    const/4 v2, 0x1

    #@2a
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@2b
    if-ge v2, v3, :cond_4

    #@2d
    .line 433
    aget-object v3, v1, v2

    #@2f
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_3

    #@39
    .line 434
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3b
    .line 435
    const-string/jumbo v4, "chain does not contain certificates of the same type"

    #@3e
    .line 434
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 432
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 439
    :cond_4
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 440
    aget-object v4, v1, v5

    #@4b
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@4e
    move-result-object v4

    #@4f
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v3

    #@57
    if-nez v3, :cond_5

    #@59
    .line 441
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5b
    .line 442
    const-string/jumbo v4, "private key algorithm does not match algorithm of public key in end entity certificate (at index 0)"

    #@5e
    .line 441
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 446
    :cond_5
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    #@64
    .line 448
    aget-object v3, v1, v5

    #@66
    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    #@68
    if-eqz v3, :cond_6

    #@6a
    .line 449
    instance-of v3, v1, [Ljava/security/cert/X509Certificate;

    #@6c
    if-eqz v3, :cond_7

    #@6e
    .line 455
    :cond_6
    iput-object v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@70
    .line 421
    :goto_1
    return-void

    #@71
    .line 451
    :cond_7
    array-length v3, v1

    #@72
    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    #@74
    iput-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@76
    .line 453
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@78
    array-length v4, v1

    #@79
    .line 452
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7c
    goto :goto_1
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 2

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/security/cert/Certificate;

    #@8
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 503
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Private key entry and certificate chain with "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 504
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@e
    array-length v3, v3

    #@f
    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 504
    const-string/jumbo v3, " elements:\r\n"

    #@16
    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 505
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@1b
    const/4 v2, 0x0

    #@1c
    array-length v4, v3

    #@1d
    :goto_0
    if-ge v2, v4, :cond_0

    #@1f
    aget-object v0, v3, v2

    #@21
    .line 506
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 507
    const-string/jumbo v5, "\r\n"

    #@27
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 505
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 509
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    return-object v2
.end method
