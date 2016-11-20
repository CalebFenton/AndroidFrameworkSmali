.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    #@3
    .line 87
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@6
    .line 83
    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedCert"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 180
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v0

    #@5
    .line 181
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@7
    .line 183
    return-object v2

    #@8
    .line 186
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "USRPKEY_"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 187
    .local v1, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1e
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@20
    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 193
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@28
    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    #@2b
    move-result-object v2

    #@2c
    return-object v2

    #@2d
    .line 199
    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "encodedCert"    # [B

    #@0
    .prologue
    .line 163
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 289
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 291
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v2, "EC"

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 293
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    #@14
    .line 294
    const/16 v2, 0xc

    #@16
    .line 293
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@19
    .line 297
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x6

    #@1a
    new-array v2, v2, [Ljava/lang/String;

    #@1c
    .line 298
    const-string/jumbo v3, "NONE"

    #@1f
    aput-object v3, v2, v5

    #@21
    .line 299
    const-string/jumbo v3, "SHA-1"

    #@24
    aput-object v3, v2, v6

    #@26
    .line 300
    const-string/jumbo v3, "SHA-224"

    #@29
    aput-object v3, v2, v7

    #@2b
    .line 301
    const-string/jumbo v3, "SHA-256"

    #@2e
    aput-object v3, v2, v8

    #@30
    .line 302
    const-string/jumbo v3, "SHA-384"

    #@33
    aput-object v3, v2, v4

    #@35
    .line 303
    const-string/jumbo v3, "SHA-512"

    #@38
    const/4 v4, 0x5

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 297
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@3e
    .line 335
    :goto_0
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@41
    .line 337
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 304
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_0
    const-string/jumbo v2, "RSA"

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_1

    #@4f
    .line 306
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    #@51
    .line 307
    const/16 v2, 0xf

    #@53
    .line 306
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@56
    .line 312
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x7

    #@57
    new-array v2, v2, [Ljava/lang/String;

    #@59
    .line 313
    const-string/jumbo v3, "NONE"

    #@5c
    aput-object v3, v2, v5

    #@5e
    .line 314
    const-string/jumbo v3, "MD5"

    #@61
    aput-object v3, v2, v6

    #@63
    .line 315
    const-string/jumbo v3, "SHA-1"

    #@66
    aput-object v3, v2, v7

    #@68
    .line 316
    const-string/jumbo v3, "SHA-224"

    #@6b
    aput-object v3, v2, v8

    #@6d
    .line 317
    const-string/jumbo v3, "SHA-256"

    #@70
    aput-object v3, v2, v4

    #@72
    .line 318
    const-string/jumbo v3, "SHA-384"

    #@75
    const/4 v4, 0x5

    #@76
    aput-object v3, v2, v4

    #@78
    .line 319
    const-string/jumbo v3, "SHA-512"

    #@7b
    const/4 v4, 0x6

    #@7c
    aput-object v3, v2, v4

    #@7e
    .line 312
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@81
    .line 322
    new-array v2, v8, [Ljava/lang/String;

    #@83
    .line 323
    const-string/jumbo v3, "NoPadding"

    #@86
    aput-object v3, v2, v5

    #@88
    .line 324
    const-string/jumbo v3, "PKCS1Padding"

    #@8b
    aput-object v3, v2, v6

    #@8d
    .line 325
    const-string/jumbo v3, "OAEPPadding"

    #@90
    aput-object v3, v2, v7

    #@92
    .line 322
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@95
    .line 326
    new-array v2, v7, [Ljava/lang/String;

    #@97
    .line 327
    const-string/jumbo v3, "PKCS1"

    #@9a
    aput-object v3, v2, v5

    #@9c
    .line 328
    const-string/jumbo v3, "PSS"

    #@9f
    aput-object v3, v2, v6

    #@a1
    .line 326
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@a4
    .line 331
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@a7
    goto :goto_0

    #@a8
    .line 333
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    #@aa
    new-instance v3, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v4, "Unsupported key algorithm: "

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v2
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@4
    invoke-virtual {v2, p1, v3}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    #@7
    move-result-wide v0

    #@8
    .line 240
    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    #@a
    cmp-long v2, v0, v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 241
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 244
    :cond_0
    new-instance v2, Ljava/util/Date;

    #@12
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@15
    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 774
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    const-string/jumbo v5, ""

    #@5
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@7
    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 775
    .local v3, "rawAliases":[Ljava/lang/String;
    if-nez v3, :cond_0

    #@d
    .line 776
    new-instance v4, Ljava/util/HashSet;

    #@f
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@12
    return-object v4

    #@13
    .line 779
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@15
    array-length v4, v3

    #@16
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    #@19
    .line 780
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1a
    array-length v5, v3

    #@1b
    :goto_0
    if-ge v4, v5, :cond_3

    #@1d
    aget-object v0, v3, v4

    #@1f
    .line 781
    .local v0, "alias":Ljava/lang/String;
    const/16 v6, 0x5f

    #@21
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v2

    #@25
    .line 782
    .local v2, "idx":I
    const/4 v6, -0x1

    #@26
    if-eq v2, v6, :cond_1

    #@28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2b
    move-result v6

    #@2c
    if-gt v6, v2, :cond_2

    #@2e
    .line 783
    :cond_1
    const-string/jumbo v6, "AndroidKeyStore"

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "invalid alias: "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 780
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 787
    :cond_2
    new-instance v6, Ljava/lang/String;

    #@4d
    add-int/lit8 v7, v2, 0x1

    #@4f
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@56
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@59
    goto :goto_1

    #@5a
    .line 790
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "idx":I
    :cond_3
    return-object v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    if-nez p1, :cond_0

    #@2
    .line 842
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 845
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "CACERT_"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 821
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 825
    if-nez p1, :cond_0

    #@2
    .line 826
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 829
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "USRPKEY_"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 833
    if-nez p1, :cond_0

    #@2
    .line 834
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 837
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "USRSKEY_"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 31
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    const/4 v8, 0x0

    #@1
    .line 344
    .local v8, "flags":I
    if-nez p4, :cond_2

    #@3
    .line 345
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    #@6
    move-result-object v26

    #@7
    .line 362
    .local v26, "spec":Landroid/security/keystore/KeyProtection;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    #@9
    move-object/from16 v0, p3

    #@b
    array-length v2, v0

    #@c
    if-nez v2, :cond_5

    #@e
    .line 363
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    #@10
    const-string/jumbo v3, "Must supply at least one Certificate with PrivateKey"

    #@13
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 346
    .end local v26    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_2
    move-object/from16 v0, p4

    #@19
    instance-of v2, v0, Landroid/security/KeyStoreParameter;

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 347
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    #@20
    move-result-object v26

    #@21
    .restart local v26    # "spec":Landroid/security/keystore/KeyProtection;
    move-object/from16 v21, p4

    #@23
    .line 348
    check-cast v21, Landroid/security/KeyStoreParameter;

    #@25
    .line 349
    .local v21, "legacySpec":Landroid/security/KeyStoreParameter;
    invoke-virtual/range {v21 .. v21}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 350
    const/4 v8, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 352
    .end local v21    # "legacySpec":Landroid/security/KeyStoreParameter;
    .end local v26    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_3
    move-object/from16 v0, p4

    #@2f
    instance-of v2, v0, Landroid/security/keystore/KeyProtection;

    #@31
    if-eqz v2, :cond_4

    #@33
    move-object/from16 v26, p4

    #@35
    .line 353
    check-cast v26, Landroid/security/keystore/KeyProtection;

    #@37
    .restart local v26    # "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_0

    #@38
    .line 355
    .end local v26    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_4
    new-instance v2, Ljava/security/KeyStoreException;

    #@3a
    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, "Unsupported protection parameter class:"

    #@42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 357
    const-string/jumbo v5, ". Supported: "

    #@55
    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 357
    const-class v5, Landroid/security/keystore/KeyProtection;

    #@5b
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 357
    const-string/jumbo v5, ", "

    #@66
    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    .line 358
    const-class v5, Landroid/security/KeyStoreParameter;

    #@6c
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    .line 355
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 367
    .restart local v26    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_5
    move-object/from16 v0, p3

    #@7e
    array-length v2, v0

    #@7f
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    #@81
    move-object/from16 v30, v0

    #@83
    .line 368
    .local v30, "x509chain":[Ljava/security/cert/X509Certificate;
    const/16 v16, 0x0

    #@85
    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p3

    #@87
    array-length v2, v0

    #@88
    move/from16 v0, v16

    #@8a
    if-ge v0, v2, :cond_8

    #@8c
    .line 369
    const-string/jumbo v2, "X.509"

    #@8f
    aget-object v3, p3, v16

    #@91
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-nez v2, :cond_6

    #@9b
    .line 370
    new-instance v2, Ljava/security/KeyStoreException;

    #@9d
    new-instance v3, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v5, "Certificates must be in X.509 format: invalid cert #"

    #@a5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    move/from16 v0, v16

    #@ab
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v2

    #@b7
    .line 374
    :cond_6
    aget-object v2, p3, v16

    #@b9
    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    #@bb
    if-nez v2, :cond_7

    #@bd
    .line 375
    new-instance v2, Ljava/security/KeyStoreException;

    #@bf
    new-instance v3, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v5, "Certificates must be in X.509 format: invalid cert #"

    #@c7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v3

    #@cb
    move/from16 v0, v16

    #@cd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v2

    #@d9
    .line 379
    :cond_7
    aget-object v2, p3, v16

    #@db
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@dd
    aput-object v2, v30, v16

    #@df
    .line 368
    add-int/lit8 v16, v16, 0x1

    #@e1
    goto :goto_1

    #@e2
    .line 384
    :cond_8
    const/4 v2, 0x0

    #@e3
    :try_start_0
    aget-object v2, v30, v2

    #@e5
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@e8
    move-result-object v29

    #@e9
    .line 395
    .local v29, "userCertBytes":[B
    move-object/from16 v0, p3

    #@eb
    array-length v2, v0

    #@ec
    const/4 v3, 0x1

    #@ed
    if-le v2, v3, :cond_a

    #@ef
    .line 400
    move-object/from16 v0, v30

    #@f1
    array-length v2, v0

    #@f2
    add-int/lit8 v2, v2, -0x1

    #@f4
    new-array v11, v2, [[B

    #@f6
    .line 401
    .local v11, "certsBytes":[[B
    const/16 v28, 0x0

    #@f8
    .line 402
    .local v28, "totalCertLength":I
    const/16 v16, 0x0

    #@fa
    :goto_2
    array-length v2, v11

    #@fb
    move/from16 v0, v16

    #@fd
    if-ge v0, v2, :cond_9

    #@ff
    .line 404
    add-int/lit8 v2, v16, 0x1

    #@101
    :try_start_1
    aget-object v2, v30, v2

    #@103
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@106
    move-result-object v2

    #@107
    aput-object v2, v11, v16

    #@109
    .line 405
    aget-object v2, v11, v16

    #@10b
    array-length v2, v2
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@10c
    add-int v28, v28, v2

    #@10e
    .line 402
    add-int/lit8 v16, v16, 0x1

    #@110
    goto :goto_2

    #@111
    .line 385
    .end local v11    # "certsBytes":[[B
    .end local v28    # "totalCertLength":I
    .end local v29    # "userCertBytes":[B
    :catch_0
    move-exception v14

    #@112
    .line 386
    .local v14, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@114
    const-string/jumbo v3, "Failed to encode certificate #0"

    #@117
    invoke-direct {v2, v3, v14}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11a
    throw v2

    #@11b
    .line 406
    .end local v14    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v11    # "certsBytes":[[B
    .restart local v28    # "totalCertLength":I
    .restart local v29    # "userCertBytes":[B
    :catch_1
    move-exception v14

    #@11c
    .line 407
    .restart local v14    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@11e
    new-instance v3, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v5, "Failed to encode certificate #"

    #@126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v3

    #@12a
    move/from16 v0, v16

    #@12c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v3

    #@130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v3

    #@134
    invoke-direct {v2, v3, v14}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@137
    throw v2

    #@138
    .line 415
    .end local v14    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_9
    move/from16 v0, v28

    #@13a
    new-array v12, v0, [B

    #@13c
    .line 416
    .local v12, "chainBytes":[B
    const/16 v22, 0x0

    #@13e
    .line 417
    .local v22, "outputOffset":I
    const/16 v16, 0x0

    #@140
    :goto_3
    array-length v2, v11

    #@141
    move/from16 v0, v16

    #@143
    if-ge v0, v2, :cond_b

    #@145
    .line 418
    aget-object v2, v11, v16

    #@147
    array-length v10, v2

    #@148
    .line 419
    .local v10, "certLength":I
    aget-object v2, v11, v16

    #@14a
    const/4 v3, 0x0

    #@14b
    move/from16 v0, v22

    #@14d
    invoke-static {v2, v3, v12, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@150
    .line 420
    add-int v22, v22, v10

    #@152
    .line 421
    const/4 v2, 0x0

    #@153
    aput-object v2, v11, v16

    #@155
    .line 417
    add-int/lit8 v16, v16, 0x1

    #@157
    goto :goto_3

    #@158
    .line 424
    .end local v10    # "certLength":I
    .end local v11    # "certsBytes":[[B
    .end local v12    # "chainBytes":[B
    .end local v22    # "outputOffset":I
    .end local v28    # "totalCertLength":I
    :cond_a
    const/4 v12, 0x0

    #@159
    .line 428
    :cond_b
    move-object/from16 v0, p2

    #@15b
    instance-of v2, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@15d
    if-eqz v2, :cond_c

    #@15f
    move-object/from16 v2, p2

    #@161
    .line 429
    check-cast v2, Landroid/security/keystore/AndroidKeyStoreKey;

    #@163
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@166
    move-result-object v23

    #@167
    .line 437
    :goto_4
    if-eqz v23, :cond_f

    #@169
    const-string/jumbo v2, "USRPKEY_"

    #@16c
    move-object/from16 v0, v23

    #@16e
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_f

    #@174
    .line 438
    const-string/jumbo v2, "USRPKEY_"

    #@177
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@17a
    move-result v2

    #@17b
    move-object/from16 v0, v23

    #@17d
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@180
    move-result-object v18

    #@181
    .line 439
    .local v18, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    #@183
    move-object/from16 v1, v18

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@188
    move-result v2

    #@189
    if-nez v2, :cond_d

    #@18b
    .line 440
    new-instance v2, Ljava/security/KeyStoreException;

    #@18d
    new-instance v3, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v5, "Can only replace keys with same alias: "

    #@195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v3

    #@199
    move-object/from16 v0, p1

    #@19b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v3

    #@19f
    .line 441
    const-string/jumbo v5, " != "

    #@1a2
    .line 440
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v3

    #@1a6
    move-object/from16 v0, v18

    #@1a8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v3

    #@1b0
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@1b3
    throw v2

    #@1b4
    .line 431
    .end local v18    # "keySubalias":Ljava/lang/String;
    :cond_c
    const/16 v23, 0x0

    #@1b6
    .local v23, "pkeyAlias":Ljava/lang/String;
    goto :goto_4

    #@1b7
    .line 443
    .end local v23    # "pkeyAlias":Ljava/lang/String;
    .restart local v18    # "keySubalias":Ljava/lang/String;
    :cond_d
    const/16 v25, 0x0

    #@1b9
    .line 444
    .local v25, "shouldReplacePrivateKey":Z
    const/4 v4, 0x0

    #@1ba
    .line 445
    .local v4, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const/4 v6, 0x0

    #@1bb
    .line 516
    .end local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v18    # "keySubalias":Ljava/lang/String;
    :goto_5
    const/16 v27, 0x0

    #@1bd
    .line 519
    .local v27, "success":Z
    if-eqz v25, :cond_15

    #@1bf
    .line 522
    :try_start_2
    move-object/from16 v0, p0

    #@1c1
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@1cc
    .line 523
    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    #@1ce
    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@1d1
    .line 524
    .local v9, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    #@1d3
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1d5
    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1da
    const-string/jumbo v5, "USRPKEY_"

    #@1dd
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v3

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v3

    #@1e7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v3

    #@1eb
    .line 529
    move-object/from16 v0, p0

    #@1ed
    iget v7, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@1ef
    .line 527
    const/4 v5, 0x1

    #@1f0
    .line 524
    invoke-virtual/range {v2 .. v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@1f3
    move-result v15

    #@1f4
    .line 532
    .local v15, "errorCode":I
    const/4 v2, 0x1

    #@1f5
    if-eq v15, v2, :cond_16

    #@1f7
    .line 533
    new-instance v2, Ljava/security/KeyStoreException;

    #@1f9
    const-string/jumbo v3, "Failed to store private key"

    #@1fc
    .line 534
    invoke-static {v15}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@1ff
    move-result-object v5

    #@200
    .line 533
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@203
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@204
    .line 558
    .end local v9    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v15    # "errorCode":I
    :catchall_0
    move-exception v2

    #@205
    .line 559
    if-nez v27, :cond_e

    #@207
    .line 560
    if-eqz v25, :cond_1b

    #@209
    .line 561
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@20d
    move-object/from16 v0, p0

    #@20f
    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@211
    move-object/from16 v0, p1

    #@213
    invoke-static {v3, v0, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@216
    .line 558
    :cond_e
    :goto_6
    throw v2

    #@217
    .line 447
    .end local v25    # "shouldReplacePrivateKey":Z
    .end local v27    # "success":Z
    :cond_f
    const/16 v25, 0x1

    #@219
    .line 449
    .restart local v25    # "shouldReplacePrivateKey":Z
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@21c
    move-result-object v17

    #@21d
    .line 450
    .local v17, "keyFormat":Ljava/lang/String;
    if-eqz v17, :cond_10

    #@21f
    const-string/jumbo v2, "PKCS#8"

    #@222
    move-object/from16 v0, v17

    #@224
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@227
    move-result v2

    #@228
    if-eqz v2, :cond_10

    #@22a
    .line 458
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    #@22d
    move-result-object v6

    #@22e
    .line 459
    .local v6, "pkcs8EncodedPrivateKeyBytes":[B
    if-nez v6, :cond_11

    #@230
    .line 460
    new-instance v2, Ljava/security/KeyStoreException;

    #@232
    const-string/jumbo v3, "Private key did not export any key material"

    #@235
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@238
    throw v2

    #@239
    .line 451
    .end local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_10
    new-instance v2, Ljava/security/KeyStoreException;

    #@23b
    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    const-string/jumbo v5, "Unsupported private key export format: "

    #@243
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v3

    #@247
    move-object/from16 v0, v17

    #@249
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v3

    #@24d
    .line 453
    const-string/jumbo v5, ". Only private keys which export their key material in PKCS#8 format are"

    #@250
    .line 452
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v3

    #@254
    .line 454
    const-string/jumbo v5, " supported."

    #@257
    .line 452
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v3

    #@25b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v3

    #@25f
    .line 451
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@262
    throw v2

    #@263
    .line 463
    .restart local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_11
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@265
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@268
    .line 467
    .local v4, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@26b
    move-result-object v2

    #@26c
    .line 466
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    #@26f
    move-result v2

    #@270
    .line 465
    const v3, 0x10000002

    #@273
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@276
    .line 468
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    #@279
    move-result v24

    #@27a
    .line 470
    .local v24, "purposes":I
    invoke-static/range {v24 .. v24}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@27d
    move-result-object v2

    #@27e
    .line 469
    const v3, 0x20000001

    #@281
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@284
    .line 471
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@287
    move-result v2

    #@288
    if-eqz v2, :cond_12

    #@28a
    .line 473
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@28d
    move-result-object v2

    #@28e
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@291
    move-result-object v2

    #@292
    .line 472
    const v3, 0x20000005

    #@295
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@298
    .line 477
    :cond_12
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    #@29b
    move-result-object v2

    #@29c
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@29f
    move-result-object v2

    #@2a0
    .line 476
    const v3, 0x20000004

    #@2a3
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2a6
    .line 480
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    #@2a9
    move-result-object v2

    #@2aa
    .line 479
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@2ad
    move-result-object v19

    #@2ae
    .line 481
    .local v19, "keymasterEncryptionPaddings":[I
    and-int/lit8 v2, v24, 0x1

    #@2b0
    if-eqz v2, :cond_14

    #@2b2
    .line 482
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    #@2b5
    move-result v2

    #@2b6
    .line 481
    if-eqz v2, :cond_14

    #@2b8
    .line 483
    const/4 v2, 0x0

    #@2b9
    move-object/from16 v0, v19

    #@2bb
    array-length v3, v0

    #@2bc
    :goto_7
    if-ge v2, v3, :cond_14

    #@2be
    aget v20, v19, v2

    #@2c0
    .line 484
    .local v20, "keymasterPadding":I
    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    #@2c3
    move-result v5

    #@2c4
    if-nez v5, :cond_13

    #@2c6
    .line 487
    new-instance v2, Ljava/security/KeyStoreException;

    #@2c8
    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    #@2ca
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2cd
    const-string/jumbo v5, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    #@2d0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d3
    move-result-object v3

    #@2d4
    .line 490
    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@2d7
    move-result-object v5

    #@2d8
    .line 488
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v3

    #@2dc
    .line 492
    const-string/jumbo v5, ". See KeyProtection documentation."

    #@2df
    .line 488
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v3

    #@2e3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v3

    #@2e7
    .line 487
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2ea
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    #@2eb
    .line 510
    .end local v19    # "keymasterEncryptionPaddings":[I
    .end local v20    # "keymasterPadding":I
    .end local v24    # "purposes":I
    :catch_2
    move-exception v13

    #@2ec
    .line 511
    .local v13, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@2ee
    invoke-direct {v2, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@2f1
    throw v2

    #@2f2
    .line 483
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "keymasterEncryptionPaddings":[I
    .restart local v20    # "keymasterPadding":I
    .restart local v24    # "purposes":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    #@2f4
    goto :goto_7

    #@2f5
    .line 496
    .end local v20    # "keymasterPadding":I
    :cond_14
    const v2, 0x20000006

    #@2f8
    :try_start_4
    move-object/from16 v0, v19

    #@2fa
    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2fd
    .line 498
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    #@300
    move-result-object v2

    #@301
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@304
    move-result-object v2

    #@305
    .line 497
    const v3, 0x20000006

    #@308
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@30b
    .line 500
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    #@30e
    move-result v2

    #@30f
    .line 501
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    #@312
    move-result v3

    #@313
    .line 502
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    #@316
    move-result v5

    #@317
    .line 503
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    #@31a
    move-result v7

    #@31b
    .line 499
    invoke-static {v4, v2, v3, v5, v7}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V

    #@31e
    .line 505
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    #@321
    move-result-object v2

    #@322
    .line 504
    const v3, 0x60000190

    #@325
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@328
    .line 507
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@32b
    move-result-object v2

    #@32c
    .line 506
    const v3, 0x60000191

    #@32f
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@332
    .line 509
    invoke-virtual/range {v26 .. v26}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@335
    move-result-object v2

    #@336
    .line 508
    const v3, 0x60000192

    #@339
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    #@33c
    goto/16 :goto_5

    #@33e
    .line 538
    .end local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v17    # "keyFormat":Ljava/lang/String;
    .end local v19    # "keymasterEncryptionPaddings":[I
    .end local v24    # "purposes":I
    .restart local v27    # "success":Z
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    #@340
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@342
    move-object/from16 v0, p0

    #@344
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@346
    move-object/from16 v0, p1

    #@348
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@34b
    .line 539
    move-object/from16 v0, p0

    #@34d
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@34f
    move-object/from16 v0, p0

    #@351
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@353
    move-object/from16 v0, p1

    #@355
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@358
    .line 543
    :cond_16
    move-object/from16 v0, p0

    #@35a
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@35c
    new-instance v3, Ljava/lang/StringBuilder;

    #@35e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@361
    const-string/jumbo v5, "USRCERT_"

    #@364
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v3

    #@368
    move-object/from16 v0, p1

    #@36a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v3

    #@36e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@371
    move-result-object v3

    #@372
    .line 544
    move-object/from16 v0, p0

    #@374
    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@376
    .line 543
    move-object/from16 v0, v29

    #@378
    invoke-virtual {v2, v3, v0, v5, v8}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@37b
    move-result v15

    #@37c
    .line 545
    .restart local v15    # "errorCode":I
    const/4 v2, 0x1

    #@37d
    if-eq v15, v2, :cond_17

    #@37f
    .line 546
    new-instance v2, Ljava/security/KeyStoreException;

    #@381
    const-string/jumbo v3, "Failed to store certificate #0"

    #@384
    .line 547
    invoke-static {v15}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@387
    move-result-object v5

    #@388
    .line 546
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38b
    throw v2

    #@38c
    .line 551
    :cond_17
    move-object/from16 v0, p0

    #@38e
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@390
    new-instance v3, Ljava/lang/StringBuilder;

    #@392
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@395
    const-string/jumbo v5, "CACERT_"

    #@398
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39b
    move-result-object v3

    #@39c
    move-object/from16 v0, p1

    #@39e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a1
    move-result-object v3

    #@3a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a5
    move-result-object v3

    #@3a6
    .line 552
    move-object/from16 v0, p0

    #@3a8
    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@3aa
    .line 551
    invoke-virtual {v2, v3, v12, v5, v8}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@3ad
    move-result v15

    #@3ae
    .line 553
    const/4 v2, 0x1

    #@3af
    if-eq v15, v2, :cond_18

    #@3b1
    .line 554
    new-instance v2, Ljava/security/KeyStoreException;

    #@3b3
    const-string/jumbo v3, "Failed to store certificate chain"

    #@3b6
    .line 555
    invoke-static {v15}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@3b9
    move-result-object v5

    #@3ba
    .line 554
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3bd
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3be
    .line 557
    :cond_18
    const/16 v27, 0x1

    #@3c0
    .line 559
    if-nez v27, :cond_19

    #@3c2
    .line 560
    if-eqz v25, :cond_1a

    #@3c4
    .line 561
    move-object/from16 v0, p0

    #@3c6
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@3cc
    move-object/from16 v0, p1

    #@3ce
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@3d1
    .line 341
    :cond_19
    :goto_8
    return-void

    #@3d2
    .line 563
    :cond_1a
    move-object/from16 v0, p0

    #@3d4
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3d6
    move-object/from16 v0, p0

    #@3d8
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@3da
    move-object/from16 v0, p1

    #@3dc
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@3df
    .line 564
    move-object/from16 v0, p0

    #@3e1
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3e3
    move-object/from16 v0, p0

    #@3e5
    iget v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@3e7
    move-object/from16 v0, p1

    #@3e9
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@3ec
    goto :goto_8

    #@3ed
    .line 563
    .end local v15    # "errorCode":I
    :cond_1b
    move-object/from16 v0, p0

    #@3ef
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3f1
    move-object/from16 v0, p0

    #@3f3
    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@3f5
    move-object/from16 v0, p1

    #@3f7
    invoke-static {v3, v0, v5}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@3fa
    .line 564
    move-object/from16 v0, p0

    #@3fc
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3fe
    move-object/from16 v0, p0

    #@400
    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@402
    move-object/from16 v0, p1

    #@404
    invoke-static {v3, v0, v5}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@407
    goto/16 :goto_6
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 22
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    if-eqz p3, :cond_0

    #@2
    move-object/from16 v0, p3

    #@4
    instance-of v1, v0, Landroid/security/keystore/KeyProtection;

    #@6
    if-eqz v1, :cond_1

    #@8
    :cond_0
    move-object/from16 v20, p3

    #@a
    .line 578
    check-cast v20, Landroid/security/keystore/KeyProtection;

    #@c
    .line 580
    .local v20, "params":Landroid/security/keystore/KeyProtection;
    move-object/from16 v0, p2

    #@e
    instance-of v1, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@10
    if-eqz v1, :cond_6

    #@12
    .line 583
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@14
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 584
    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    if-nez v2, :cond_2

    #@1a
    .line 585
    new-instance v1, Ljava/security/KeyStoreException;

    #@1c
    const-string/jumbo v4, "KeyStore-backed secret key does not have an alias"

    #@1f
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 574
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v20    # "params":Landroid/security/keystore/KeyProtection;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    #@25
    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Unsupported protection parameter class: "

    #@2d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 576
    const-string/jumbo v6, ". Supported: "

    #@40
    .line 575
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 576
    const-class v6, Landroid/security/keystore/KeyProtection;

    #@46
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 575
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 574
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1

    #@56
    .line 587
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v20    # "params":Landroid/security/keystore/KeyProtection;
    :cond_2
    const-string/jumbo v1, "USRSKEY_"

    #@59
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_3

    #@5f
    .line 588
    new-instance v1, Ljava/security/KeyStoreException;

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "KeyStore-backed secret key has invalid alias: "

    #@69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@78
    throw v1

    #@79
    .line 592
    :cond_3
    const-string/jumbo v1, "USRSKEY_"

    #@7c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7f
    move-result v1

    #@80
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@83
    move-result-object v11

    #@84
    .line 593
    .local v11, "keyEntryAlias":Ljava/lang/String;
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-nez v1, :cond_4

    #@8c
    .line 594
    new-instance v1, Ljava/security/KeyStoreException;

    #@8e
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v6, "Can only replace KeyStore-backed keys with same alias: "

    #@96
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 595
    const-string/jumbo v6, " != "

    #@a3
    .line 594
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 598
    :cond_4
    if-eqz v20, :cond_5

    #@b5
    .line 599
    new-instance v1, Ljava/security/KeyStoreException;

    #@b7
    const-string/jumbo v4, "Modifying KeyStore-backed key using protection parameters not supported"

    #@ba
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v1

    #@be
    .line 602
    :cond_5
    return-void

    #@bf
    .line 605
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v11    # "keyEntryAlias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_6
    if-nez v20, :cond_7

    #@c1
    .line 606
    new-instance v1, Ljava/security/KeyStoreException;

    #@c3
    .line 607
    const-string/jumbo v4, "Protection parameters must be specified when importing a symmetric key"

    #@c6
    .line 606
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@c9
    throw v1

    #@ca
    .line 611
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@cd
    move-result-object v12

    #@ce
    .line 612
    .local v12, "keyExportFormat":Ljava/lang/String;
    if-nez v12, :cond_8

    #@d0
    .line 613
    new-instance v1, Ljava/security/KeyStoreException;

    #@d2
    .line 614
    const-string/jumbo v4, "Only secret keys that export their key material are supported"

    #@d5
    .line 613
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v1

    #@d9
    .line 615
    :cond_8
    const-string/jumbo v1, "RAW"

    #@dc
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v1

    #@e0
    if-nez v1, :cond_9

    #@e2
    .line 616
    new-instance v1, Ljava/security/KeyStoreException;

    #@e4
    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v6, "Unsupported secret key material export format: "

    #@ec
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v4

    #@f4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v4

    #@f8
    .line 616
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@fb
    throw v1

    #@fc
    .line 619
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@ff
    move-result-object v5

    #@100
    .line 620
    .local v5, "keyMaterial":[B
    if-nez v5, :cond_a

    #@102
    .line 621
    new-instance v1, Ljava/security/KeyStoreException;

    #@104
    const-string/jumbo v4, "Key did not export its key material despite supporting RAW format export"

    #@107
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v1

    #@10b
    .line 625
    :cond_a
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    #@10d
    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@110
    .line 628
    .local v3, "args":Landroid/security/keymaster/KeymasterArguments;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    #@117
    move-result v13

    #@118
    .line 629
    .local v13, "keymasterAlgorithm":I
    const v1, 0x10000002

    #@11b
    invoke-virtual {v3, v1, v13}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@11e
    .line 632
    const/16 v1, 0x80

    #@120
    if-ne v13, v1, :cond_d

    #@122
    .line 639
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@125
    move-result-object v1

    #@126
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    #@129
    move-result v18

    #@12a
    .line 640
    .local v18, "keymasterImpliedDigest":I
    const/4 v1, -0x1

    #@12b
    move/from16 v0, v18

    #@12d
    if-ne v0, v1, :cond_b

    #@12f
    .line 641
    new-instance v1, Ljava/security/ProviderException;

    #@131
    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v6, "HMAC key algorithm digest unknown for key algorithm "

    #@139
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v4

    #@13d
    .line 643
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@140
    move-result-object v6

    #@141
    .line 642
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v4

    #@145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v4

    #@149
    .line 641
    invoke-direct {v1, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@14c
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@14d
    .line 717
    .end local v13    # "keymasterAlgorithm":I
    .end local v18    # "keymasterImpliedDigest":I
    :catch_0
    move-exception v9

    #@14e
    .line 718
    .local v9, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/KeyStoreException;

    #@150
    invoke-direct {v1, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@153
    throw v1

    #@154
    .line 645
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "keymasterAlgorithm":I
    .restart local v18    # "keymasterImpliedDigest":I
    :cond_b
    const/4 v1, 0x1

    #@155
    :try_start_1
    new-array v0, v1, [I

    #@157
    move-object/from16 v16, v0

    #@159
    const/4 v1, 0x0

    #@15a
    aput v18, v16, v1

    #@15c
    .line 646
    .local v16, "keymasterDigests":[I
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@15f
    move-result v1

    #@160
    if-eqz v1, :cond_e

    #@162
    .line 650
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@165
    move-result-object v1

    #@166
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@169
    move-result-object v17

    #@16a
    .line 651
    .local v17, "keymasterDigestsFromParams":[I
    move-object/from16 v0, v17

    #@16c
    array-length v1, v0

    #@16d
    const/4 v4, 0x1

    #@16e
    if-ne v1, v4, :cond_c

    #@170
    .line 652
    const/4 v1, 0x0

    #@171
    aget v1, v17, v1

    #@173
    move/from16 v0, v18

    #@175
    if-eq v1, v0, :cond_e

    #@177
    .line 653
    :cond_c
    new-instance v1, Ljava/security/KeyStoreException;

    #@179
    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v6, "Unsupported digests specification: "

    #@181
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v4

    #@185
    .line 655
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@188
    move-result-object v6

    #@189
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@18c
    move-result-object v6

    #@18d
    .line 654
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v4

    #@191
    .line 655
    const-string/jumbo v6, ". Only "

    #@194
    .line 654
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v4

    #@198
    .line 656
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@19b
    move-result-object v6

    #@19c
    .line 654
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v4

    #@1a0
    .line 657
    const-string/jumbo v6, " supported for HMAC key algorithm "

    #@1a3
    .line 654
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v4

    #@1a7
    .line 657
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@1aa
    move-result-object v6

    #@1ab
    .line 654
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v4

    #@1af
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v4

    #@1b3
    .line 653
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@1b6
    throw v1

    #@1b7
    .line 662
    .end local v16    # "keymasterDigests":[I
    .end local v17    # "keymasterDigestsFromParams":[I
    .end local v18    # "keymasterImpliedDigest":I
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@1ba
    move-result v1

    #@1bb
    if-eqz v1, :cond_f

    #@1bd
    .line 663
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@1c4
    move-result-object v16

    #@1c5
    .line 668
    .restart local v16    # "keymasterDigests":[I
    :cond_e
    :goto_0
    const v1, 0x20000005

    #@1c8
    move-object/from16 v0, v16

    #@1ca
    invoke-virtual {v3, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@1cd
    .line 670
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    #@1d0
    move-result v21

    #@1d1
    .line 672
    .local v21, "purposes":I
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    #@1d4
    move-result-object v1

    #@1d5
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@1d8
    move-result-object v15

    #@1d9
    .line 673
    .local v15, "keymasterBlockModes":[I
    and-int/lit8 v1, v21, 0x1

    #@1db
    if-eqz v1, :cond_11

    #@1dd
    .line 674
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    #@1e0
    move-result v1

    #@1e1
    .line 673
    if-eqz v1, :cond_11

    #@1e3
    .line 675
    const/4 v1, 0x0

    #@1e4
    array-length v4, v15

    #@1e5
    :goto_1
    if-ge v1, v4, :cond_11

    #@1e7
    aget v14, v15, v1

    #@1e9
    .line 676
    .local v14, "keymasterBlockMode":I
    invoke-static {v14}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    #@1ec
    move-result v6

    #@1ed
    if-nez v6, :cond_10

    #@1ef
    .line 678
    new-instance v1, Ljava/security/KeyStoreException;

    #@1f1
    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v6, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    #@1f9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v4

    #@1fd
    .line 681
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    #@200
    move-result-object v6

    #@201
    .line 679
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v4

    #@205
    .line 682
    const-string/jumbo v6, ". See KeyProtection documentation."

    #@208
    .line 679
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v4

    #@20c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v4

    #@210
    .line 678
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@213
    throw v1

    #@214
    .line 665
    .end local v14    # "keymasterBlockMode":I
    .end local v15    # "keymasterBlockModes":[I
    .end local v16    # "keymasterDigests":[I
    .end local v21    # "purposes":I
    :cond_f
    sget-object v16, Llibcore/util/EmptyArray;->INT:[I

    #@216
    .restart local v16    # "keymasterDigests":[I
    goto :goto_0

    #@217
    .line 675
    .restart local v14    # "keymasterBlockMode":I
    .restart local v15    # "keymasterBlockModes":[I
    .restart local v21    # "purposes":I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    #@219
    goto :goto_1

    #@21a
    .line 687
    .end local v14    # "keymasterBlockMode":I
    :cond_11
    invoke-static/range {v21 .. v21}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@21d
    move-result-object v1

    #@21e
    .line 686
    const v4, 0x20000001

    #@221
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@224
    .line 688
    const v1, 0x20000004

    #@227
    invoke-virtual {v3, v1, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@22a
    .line 689
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    #@22d
    move-result-object v1

    #@22e
    array-length v1, v1

    #@22f
    if-lez v1, :cond_12

    #@231
    .line 690
    new-instance v1, Ljava/security/KeyStoreException;

    #@233
    const-string/jumbo v4, "Signature paddings not supported for symmetric keys"

    #@236
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@239
    throw v1

    #@23a
    .line 693
    :cond_12
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    #@23d
    move-result-object v1

    #@23e
    .line 692
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@241
    move-result-object v19

    #@242
    .line 694
    .local v19, "keymasterPaddings":[I
    const v1, 0x20000006

    #@245
    move-object/from16 v0, v19

    #@247
    invoke-virtual {v3, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@24a
    .line 696
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    #@24d
    move-result v1

    #@24e
    .line 697
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    #@251
    move-result v4

    #@252
    .line 698
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    #@255
    move-result v6

    #@256
    .line 699
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    #@259
    move-result v7

    #@25a
    .line 695
    invoke-static {v3, v1, v4, v6, v7}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V

    #@25d
    .line 700
    move-object/from16 v0, v16

    #@25f
    invoke-static {v3, v13, v15, v0}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    #@262
    .line 706
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    #@265
    move-result-object v1

    #@266
    .line 705
    const v4, 0x60000190

    #@269
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@26c
    .line 708
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@26f
    move-result-object v1

    #@270
    .line 707
    const v4, 0x60000191

    #@273
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@276
    .line 710
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@279
    move-result-object v1

    #@27a
    .line 709
    const v4, 0x60000192

    #@27d
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@280
    .line 712
    and-int/lit8 v1, v21, 0x1

    #@282
    if-eqz v1, :cond_13

    #@284
    .line 713
    invoke-virtual/range {v20 .. v20}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@287
    move-result v1

    #@288
    if-eqz v1, :cond_14

    #@28a
    .line 721
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    #@28c
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@28e
    move-object/from16 v0, p0

    #@290
    iget v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@292
    move-object/from16 v0, p1

    #@294
    invoke-static {v1, v0, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@297
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    #@299
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29c
    const-string/jumbo v4, "USRSKEY_"

    #@29f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v1

    #@2a3
    move-object/from16 v0, p1

    #@2a5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v1

    #@2a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ac
    move-result-object v2

    #@2ad
    .line 723
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2af
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2b1
    .line 728
    move-object/from16 v0, p0

    #@2b3
    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@2b5
    .line 730
    new-instance v8, Landroid/security/keymaster/KeyCharacteristics;

    #@2b7
    invoke-direct {v8}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@2ba
    .line 726
    const/4 v4, 0x3

    #@2bb
    .line 729
    const/4 v7, 0x0

    #@2bc
    .line 723
    invoke-virtual/range {v1 .. v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@2bf
    move-result v10

    #@2c0
    .line 731
    .local v10, "errorCode":I
    const/4 v1, 0x1

    #@2c1
    if-eq v10, v1, :cond_15

    #@2c3
    .line 732
    new-instance v1, Ljava/security/KeyStoreException;

    #@2c5
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2ca
    const-string/jumbo v6, "Failed to import secret key. Keystore error code: "

    #@2cd
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v4

    #@2d1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v4

    #@2d5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v4

    #@2d9
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2dc
    throw v1

    #@2dd
    .line 715
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v10    # "errorCode":I
    :cond_14
    const v1, 0x70000007

    #@2e0
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e3
    goto :goto_2

    #@2e4
    .line 572
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v10    # "errorCode":I
    :cond_15
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 217
    :try_start_0
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v0

    #@7
    .line 219
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 218
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    return-object v2

    #@13
    .line 220
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@14
    .line 221
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    #@17
    const-string/jumbo v3, "Couldn\'t parse certificate in keystore"

    #@1a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 222
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v0

    #@7
    .line 231
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 230
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 232
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@12
    .line 233
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    #@15
    const-string/jumbo v3, "Couldn\'t parse certificates in keystore"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@20
    return-object v2
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    if-eqz p2, :cond_0

    #@3
    .line 212
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    #@5
    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    #@8
    .line 211
    :cond_0
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 795
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 800
    if-nez p1, :cond_0

    #@2
    .line 801
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 804
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "USRPKEY_"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 805
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "USRSKEY_"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@44
    move-result v0

    #@45
    .line 804
    if-nez v0, :cond_1

    #@47
    .line 806
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "USRCERT_"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@62
    move-result v0

    #@63
    .line 804
    if-nez v0, :cond_1

    #@65
    .line 807
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@67
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "CACERT_"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@7d
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@80
    move-result v0

    #@81
    .line 804
    :goto_0
    return v0

    #@82
    :cond_1
    const/4 v0, 0x1

    #@83
    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@4
    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 769
    new-instance v0, Ljava/security/KeyStoreException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Failed to delete entry: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 767
    :cond_0
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 141
    if-nez p1, :cond_0

    #@3
    .line 142
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "alias == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 145
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "USRCERT_"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@27
    move-result-object v0

    #@28
    .line 146
    .local v0, "encodedCert":[B
    if-eqz v0, :cond_1

    #@2a
    .line 147
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 150
    :cond_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "CACERT_"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@47
    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@4a
    move-result-object v0

    #@4b
    .line 151
    if-eqz v0, :cond_2

    #@4d
    .line 152
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    #@50
    move-result-object v1

    #@51
    return-object v1

    #@52
    .line 156
    :cond_2
    return-object v4
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v13, 0x0

    #@2
    .line 855
    if-nez p1, :cond_0

    #@4
    .line 856
    return-object v13

    #@5
    .line 858
    :cond_0
    const-string/jumbo v8, "X.509"

    #@8
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@b
    move-result-object v9

    #@c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v8

    #@10
    if-nez v8, :cond_1

    #@12
    .line 860
    return-object v13

    #@13
    .line 864
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v6

    #@17
    .line 868
    .local v6, "targetCertBytes":[B
    if-nez v6, :cond_2

    #@19
    .line 869
    return-object v13

    #@1a
    .line 865
    .end local v6    # "targetCertBytes":[B
    :catch_0
    move-exception v4

    #@1b
    .line 866
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    return-object v13

    #@1c
    .line 872
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v6    # "targetCertBytes":[B
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    #@1e
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@21
    .line 880
    .local v5, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@23
    const-string/jumbo v9, "USRCERT_"

    #@26
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@28
    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 881
    .local v2, "certAliases":[Ljava/lang/String;
    if-eqz v2, :cond_5

    #@2e
    .line 882
    array-length v9, v2

    #@2f
    move v8, v7

    #@30
    :goto_0
    if-ge v8, v9, :cond_5

    #@32
    aget-object v0, v2, v8

    #@34
    .line 883
    .local v0, "alias":Ljava/lang/String;
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@36
    new-instance v11, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v12, "USRCERT_"

    #@3e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v11

    #@42
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@4c
    invoke-virtual {v10, v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@4f
    move-result-object v3

    #@50
    .line 884
    .local v3, "certBytes":[B
    if-nez v3, :cond_4

    #@52
    .line 882
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@54
    goto :goto_0

    #@55
    .line 888
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@58
    .line 890
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_3

    #@5e
    .line 891
    return-object v0

    #@5f
    .line 900
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    :cond_5
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@61
    const-string/jumbo v9, "CACERT_"

    #@64
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@66
    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 901
    .local v1, "caAliases":[Ljava/lang/String;
    if-eqz v2, :cond_8

    #@6c
    .line 902
    array-length v8, v1

    #@6d
    :goto_1
    if-ge v7, v8, :cond_8

    #@6f
    aget-object v0, v1, v7

    #@71
    .line 903
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@74
    move-result v9

    #@75
    if-eqz v9, :cond_7

    #@77
    .line 902
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 907
    :cond_7
    iget-object v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@7c
    new-instance v10, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v11, "CACERT_"

    #@84
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v10

    #@90
    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@92
    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@95
    move-result-object v3

    #@96
    .line 908
    .restart local v3    # "certBytes":[B
    if-eqz v3, :cond_6

    #@98
    .line 912
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@9b
    move-result v9

    #@9c
    if-eqz v9, :cond_6

    #@9e
    .line 913
    return-object v0

    #@9f
    .line 918
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    :cond_8
    return-object v13
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 108
    if-nez p1, :cond_0

    #@3
    .line 109
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v8, "alias == null"

    #@8
    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v7

    #@c
    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@12
    .line 113
    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    #@14
    .line 114
    return-object v7

    #@15
    .line 119
    :cond_1
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@17
    new-instance v8, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v9, "CACERT_"

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@2d
    invoke-virtual {v7, v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@30
    move-result-object v0

    #@31
    .line 120
    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    #@33
    .line 121
    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    #@36
    move-result-object v1

    #@37
    .line 123
    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@3a
    move-result v7

    #@3b
    add-int/lit8 v7, v7, 0x1

    #@3d
    new-array v2, v7, [Ljava/security/cert/Certificate;

    #@3f
    .line 125
    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v5

    #@43
    .line 126
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    #@44
    .line 127
    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v7

    #@48
    if-eqz v7, :cond_3

    #@4a
    .line 128
    add-int/lit8 v4, v3, 0x1

    #@4c
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v7

    #@50
    check-cast v7, Ljava/security/cert/Certificate;

    #@52
    aput-object v7, v2, v3

    #@54
    move v3, v4

    #@55
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@56
    .line 131
    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    #@57
    new-array v2, v7, [Ljava/security/cert/Certificate;

    #@59
    .line 134
    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    #@5a
    aput-object v6, v2, v7

    #@5c
    .line 136
    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    if-nez p1, :cond_0

    #@2
    .line 250
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "alias == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "USRPKEY_"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    #@22
    move-result-object v0

    #@23
    .line 254
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    #@25
    .line 255
    return-object v0

    #@26
    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "USRSKEY_"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    #@3d
    move-result-object v0

    #@3e
    .line 259
    if-eqz v0, :cond_2

    #@40
    .line 260
    return-object v0

    #@41
    .line 263
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "USRCERT_"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    #@58
    move-result-object v0

    #@59
    .line 264
    if-eqz v0, :cond_3

    #@5b
    .line 265
    return-object v0

    #@5c
    .line 268
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v2, "CACERT_"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    #@73
    move-result-object v1

    #@74
    return-object v1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "USRPKEY_"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 95
    .local v0, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@1e
    .line 94
    invoke-static {v2, v0, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 96
    .end local v0    # "privateKeyAlias":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "USRSKEY_"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 99
    .local v1, "secretKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3f
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@41
    .line 98
    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 102
    .end local v1    # "secretKeyAlias":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@47
    return-object v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 850
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 817
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 930
    if-eqz p1, :cond_0

    #@2
    .line 931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "InputStream not supported"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 934
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "password not supported"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 939
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c
    .line 940
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@1f
    .line 929
    return-void
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 946
    const/4 v0, -0x1

    #@1
    .line 947
    .local v0, "uid":I
    if-eqz p1, :cond_0

    #@3
    .line 948
    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 949
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    #@9
    .end local p1    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    #@c
    move-result v0

    #@d
    .line 955
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@13
    .line 956
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@15
    .line 945
    return-void

    #@16
    .line 951
    .restart local p1    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Unsupported param type: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 951
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 745
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 746
    new-instance v2, Ljava/security/KeyStoreException;

    #@8
    const-string/jumbo v3, "Entry exists and is not a trusted certificate"

    #@b
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 750
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 751
    new-instance v2, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v3, "cert == null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 756
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v1

    #@1e
    .line 761
    .local v1, "encoded":[B
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "CACERT_"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@36
    const/4 v5, 0x0

    #@37
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_2

    #@3d
    .line 762
    new-instance v2, Ljava/security/KeyStoreException;

    #@3f
    const-string/jumbo v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    #@42
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 757
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    #@47
    .line 758
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@49
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@4c
    throw v2

    #@4d
    .line 744
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 962
    if-nez p2, :cond_0

    #@2
    .line 963
    new-instance v3, Ljava/security/KeyStoreException;

    #@4
    const-string/jumbo v4, "entry == null"

    #@7
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 966
    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    #@f
    invoke-static {v3, p1, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@12
    .line 968
    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@14
    if-eqz v3, :cond_1

    #@16
    move-object v2, p2

    #@17
    .line 970
    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@19
    .line 971
    .local v2, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@20
    .line 972
    return-void

    #@21
    .line 975
    .end local v2    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_1
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@23
    if-eqz v3, :cond_2

    #@25
    move-object v0, p2

    #@26
    .line 976
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    #@28
    .line 977
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    #@33
    .line 961
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    return-void

    #@34
    .line 978
    :cond_2
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    #@36
    if-eqz v3, :cond_3

    #@38
    move-object v1, p2

    #@39
    .line 979
    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    #@3b
    .line 980
    .local v1, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    #@42
    goto :goto_0

    #@43
    .line 982
    .end local v1    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    #@45
    .line 983
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    .line 982
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 274
    if-eqz p3, :cond_0

    #@3
    array-length v0, p3

    #@4
    if-lez v0, :cond_0

    #@6
    .line 275
    new-instance v0, Ljava/security/KeyStoreException;

    #@8
    const-string/jumbo v1, "entries cannot be protected with passwords"

    #@b
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 278
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 279
    check-cast p2, Ljava/security/PrivateKey;

    #@15
    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    #@18
    .line 273
    :goto_0
    return-void

    #@19
    .line 280
    .restart local p2    # "key":Ljava/security/Key;
    :cond_1
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 281
    check-cast p2, Ljavax/crypto/SecretKey;

    #@1f
    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    #@22
    goto :goto_0

    #@23
    .line 283
    .restart local p2    # "key":Ljava/security/Key;
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    #@25
    const-string/jumbo v1, "Only PrivateKey and SecretKey are supported"

    #@28
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 740
    new-instance v0, Ljava/security/KeyStoreException;

    #@2
    const-string/jumbo v1, "Operation not supported because key encoding is unknown"

    #@5
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public engineSize()I
    .locals 1

    #@0
    .prologue
    .line 812
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 924
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Can not serialize AndroidKeyStore to OutputStream"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
