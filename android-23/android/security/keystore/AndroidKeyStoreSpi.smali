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


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    #@3
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
    .line 179
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v0

    #@5
    .line 180
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@7
    .line 182
    return-object v2

    #@8
    .line 185
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
    .line 186
    .local v1, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1e
    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 192
    invoke-static {v1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 198
    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "encodedCert"    # [B

    #@0
    .prologue
    .line 162
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
    .line 288
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 290
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v2, "EC"

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 292
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    #@14
    .line 293
    const/16 v2, 0xc

    #@16
    .line 292
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@19
    .line 296
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x6

    #@1a
    new-array v2, v2, [Ljava/lang/String;

    #@1c
    .line 297
    const-string/jumbo v3, "NONE"

    #@1f
    aput-object v3, v2, v5

    #@21
    .line 298
    const-string/jumbo v3, "SHA-1"

    #@24
    aput-object v3, v2, v6

    #@26
    .line 299
    const-string/jumbo v3, "SHA-224"

    #@29
    aput-object v3, v2, v7

    #@2b
    .line 300
    const-string/jumbo v3, "SHA-256"

    #@2e
    aput-object v3, v2, v8

    #@30
    .line 301
    const-string/jumbo v3, "SHA-384"

    #@33
    aput-object v3, v2, v4

    #@35
    .line 302
    const-string/jumbo v3, "SHA-512"

    #@38
    const/4 v4, 0x5

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 296
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@3e
    .line 334
    :goto_0
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@41
    .line 336
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 303
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
    .line 305
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    #@51
    .line 306
    const/16 v2, 0xf

    #@53
    .line 305
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    #@56
    .line 311
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x7

    #@57
    new-array v2, v2, [Ljava/lang/String;

    #@59
    .line 312
    const-string/jumbo v3, "NONE"

    #@5c
    aput-object v3, v2, v5

    #@5e
    .line 313
    const-string/jumbo v3, "MD5"

    #@61
    aput-object v3, v2, v6

    #@63
    .line 314
    const-string/jumbo v3, "SHA-1"

    #@66
    aput-object v3, v2, v7

    #@68
    .line 315
    const-string/jumbo v3, "SHA-224"

    #@6b
    aput-object v3, v2, v8

    #@6d
    .line 316
    const-string/jumbo v3, "SHA-256"

    #@70
    aput-object v3, v2, v4

    #@72
    .line 317
    const-string/jumbo v3, "SHA-384"

    #@75
    const/4 v4, 0x5

    #@76
    aput-object v3, v2, v4

    #@78
    .line 318
    const-string/jumbo v3, "SHA-512"

    #@7b
    const/4 v4, 0x6

    #@7c
    aput-object v3, v2, v4

    #@7e
    .line 311
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@81
    .line 321
    new-array v2, v8, [Ljava/lang/String;

    #@83
    .line 322
    const-string/jumbo v3, "NoPadding"

    #@86
    aput-object v3, v2, v5

    #@88
    .line 323
    const-string/jumbo v3, "PKCS1Padding"

    #@8b
    aput-object v3, v2, v6

    #@8d
    .line 324
    const-string/jumbo v3, "OAEPPadding"

    #@90
    aput-object v3, v2, v7

    #@92
    .line 321
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@95
    .line 325
    new-array v2, v7, [Ljava/lang/String;

    #@97
    .line 326
    const-string/jumbo v3, "PKCS1"

    #@9a
    aput-object v3, v2, v5

    #@9c
    .line 327
    const-string/jumbo v3, "PSS"

    #@9f
    aput-object v3, v2, v6

    #@a1
    .line 325
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    #@a4
    .line 330
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    #@a7
    goto :goto_0

    #@a8
    .line 332
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
    .line 238
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;)J

    #@5
    move-result-wide v0

    #@6
    .line 239
    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    #@8
    cmp-long v2, v0, v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 240
    const/4 v2, 0x0

    #@d
    return-object v2

    #@e
    .line 243
    :cond_0
    new-instance v2, Ljava/util/Date;

    #@10
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@13
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
    .line 773
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2
    const-string/jumbo v5, ""

    #@5
    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 774
    .local v3, "rawAliases":[Ljava/lang/String;
    if-nez v3, :cond_0

    #@b
    .line 775
    new-instance v4, Ljava/util/HashSet;

    #@d
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@10
    return-object v4

    #@11
    .line 778
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@13
    array-length v4, v3

    #@14
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    #@17
    .line 779
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@18
    array-length v5, v3

    #@19
    :goto_0
    if-ge v4, v5, :cond_3

    #@1b
    aget-object v0, v3, v4

    #@1d
    .line 780
    .local v0, "alias":Ljava/lang/String;
    const/16 v6, 0x5f

    #@1f
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v2

    #@23
    .line 781
    .local v2, "idx":I
    const/4 v6, -0x1

    #@24
    if-eq v2, v6, :cond_1

    #@26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@29
    move-result v6

    #@2a
    if-gt v6, v2, :cond_2

    #@2c
    .line 782
    :cond_1
    const-string/jumbo v6, "AndroidKeyStore"

    #@2f
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "invalid alias: "

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 779
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_0

    #@49
    .line 786
    :cond_2
    new-instance v6, Ljava/lang/String;

    #@4b
    add-int/lit8 v7, v2, 0x1

    #@4d
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@54
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    goto :goto_1

    #@58
    .line 789
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
    .line 840
    if-nez p1, :cond_0

    #@2
    .line 841
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 844
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
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 820
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
    .line 824
    if-nez p1, :cond_0

    #@2
    .line 825
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 828
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
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 832
    if-nez p1, :cond_0

    #@2
    .line 833
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 836
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
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 30
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
    .line 341
    const/4 v7, 0x0

    #@1
    .line 343
    .local v7, "flags":I
    if-nez p4, :cond_2

    #@3
    .line 344
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    #@6
    move-result-object v25

    #@7
    .line 361
    .local v25, "spec":Landroid/security/keystore/KeyProtection;
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
    .line 362
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    #@10
    const-string/jumbo v3, "Must supply at least one Certificate with PrivateKey"

    #@13
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 345
    .end local v25    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_2
    move-object/from16 v0, p4

    #@19
    instance-of v2, v0, Landroid/security/KeyStoreParameter;

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 346
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    #@20
    move-result-object v25

    #@21
    .restart local v25    # "spec":Landroid/security/keystore/KeyProtection;
    move-object/from16 v20, p4

    #@23
    .line 347
    check-cast v20, Landroid/security/KeyStoreParameter;

    #@25
    .line 348
    .local v20, "legacySpec":Landroid/security/KeyStoreParameter;
    invoke-virtual/range {v20 .. v20}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 349
    const/4 v7, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 351
    .end local v20    # "legacySpec":Landroid/security/KeyStoreParameter;
    .end local v25    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_3
    move-object/from16 v0, p4

    #@2f
    instance-of v2, v0, Landroid/security/keystore/KeyProtection;

    #@31
    if-eqz v2, :cond_4

    #@33
    move-object/from16 v25, p4

    #@35
    .line 352
    check-cast v25, Landroid/security/keystore/KeyProtection;

    #@37
    .restart local v25    # "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_0

    #@38
    .line 354
    .end local v25    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_4
    new-instance v2, Ljava/security/KeyStoreException;

    #@3a
    .line 355
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
    .line 356
    const-string/jumbo v5, ". Supported: "

    #@55
    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 356
    const-class v5, Landroid/security/keystore/KeyProtection;

    #@5b
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 356
    const-string/jumbo v5, ", "

    #@66
    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    .line 357
    const-class v5, Landroid/security/KeyStoreParameter;

    #@6c
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    .line 354
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 366
    .restart local v25    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_5
    move-object/from16 v0, p3

    #@7e
    array-length v2, v0

    #@7f
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    #@81
    move-object/from16 v29, v0

    #@83
    .line 367
    .local v29, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    #@84
    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p3

    #@86
    array-length v2, v0

    #@87
    if-ge v15, v2, :cond_8

    #@89
    .line 368
    const-string/jumbo v2, "X.509"

    #@8c
    aget-object v3, p3, v15

    #@8e
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v2

    #@96
    if-nez v2, :cond_6

    #@98
    .line 369
    new-instance v2, Ljava/security/KeyStoreException;

    #@9a
    new-instance v3, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v5, "Certificates must be in X.509 format: invalid cert #"

    #@a2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v2

    #@b2
    .line 373
    :cond_6
    aget-object v2, p3, v15

    #@b4
    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    #@b6
    if-nez v2, :cond_7

    #@b8
    .line 374
    new-instance v2, Ljava/security/KeyStoreException;

    #@ba
    new-instance v3, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v5, "Certificates must be in X.509 format: invalid cert #"

    #@c2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v3

    #@ca
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v2

    #@d2
    .line 378
    :cond_7
    aget-object v2, p3, v15

    #@d4
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@d6
    aput-object v2, v29, v15

    #@d8
    .line 367
    add-int/lit8 v15, v15, 0x1

    #@da
    goto :goto_1

    #@db
    .line 383
    :cond_8
    const/4 v2, 0x0

    #@dc
    :try_start_0
    aget-object v2, v29, v2

    #@de
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@e1
    move-result-object v28

    #@e2
    .line 394
    .local v28, "userCertBytes":[B
    move-object/from16 v0, p3

    #@e4
    array-length v2, v0

    #@e5
    const/4 v3, 0x1

    #@e6
    if-le v2, v3, :cond_a

    #@e8
    .line 399
    move-object/from16 v0, v29

    #@ea
    array-length v2, v0

    #@eb
    add-int/lit8 v2, v2, -0x1

    #@ed
    new-array v10, v2, [[B

    #@ef
    .line 400
    .local v10, "certsBytes":[[B
    const/16 v27, 0x0

    #@f1
    .line 401
    .local v27, "totalCertLength":I
    const/4 v15, 0x0

    #@f2
    :goto_2
    array-length v2, v10

    #@f3
    if-ge v15, v2, :cond_9

    #@f5
    .line 403
    add-int/lit8 v2, v15, 0x1

    #@f7
    :try_start_1
    aget-object v2, v29, v2

    #@f9
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@fc
    move-result-object v2

    #@fd
    aput-object v2, v10, v15

    #@ff
    .line 404
    aget-object v2, v10, v15

    #@101
    array-length v2, v2
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@102
    add-int v27, v27, v2

    #@104
    .line 401
    add-int/lit8 v15, v15, 0x1

    #@106
    goto :goto_2

    #@107
    .line 384
    .end local v10    # "certsBytes":[[B
    .end local v27    # "totalCertLength":I
    .end local v28    # "userCertBytes":[B
    :catch_0
    move-exception v13

    #@108
    .line 385
    .local v13, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@10a
    const-string/jumbo v3, "Failed to encode certificate #0"

    #@10d
    invoke-direct {v2, v3, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@110
    throw v2

    #@111
    .line 405
    .end local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v10    # "certsBytes":[[B
    .restart local v27    # "totalCertLength":I
    .restart local v28    # "userCertBytes":[B
    :catch_1
    move-exception v13

    #@112
    .line 406
    .restart local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@114
    new-instance v3, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v5, "Failed to encode certificate #"

    #@11c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v3

    #@124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    invoke-direct {v2, v3, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12b
    throw v2

    #@12c
    .line 414
    .end local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_9
    move/from16 v0, v27

    #@12e
    new-array v11, v0, [B

    #@130
    .line 415
    .local v11, "chainBytes":[B
    const/16 v21, 0x0

    #@132
    .line 416
    .local v21, "outputOffset":I
    const/4 v15, 0x0

    #@133
    :goto_3
    array-length v2, v10

    #@134
    if-ge v15, v2, :cond_b

    #@136
    .line 417
    aget-object v2, v10, v15

    #@138
    array-length v9, v2

    #@139
    .line 418
    .local v9, "certLength":I
    aget-object v2, v10, v15

    #@13b
    const/4 v3, 0x0

    #@13c
    move/from16 v0, v21

    #@13e
    invoke-static {v2, v3, v11, v0, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@141
    .line 419
    add-int v21, v21, v9

    #@143
    .line 420
    const/4 v2, 0x0

    #@144
    aput-object v2, v10, v15

    #@146
    .line 416
    add-int/lit8 v15, v15, 0x1

    #@148
    goto :goto_3

    #@149
    .line 423
    .end local v9    # "certLength":I
    .end local v10    # "certsBytes":[[B
    .end local v11    # "chainBytes":[B
    .end local v21    # "outputOffset":I
    .end local v27    # "totalCertLength":I
    :cond_a
    const/4 v11, 0x0

    #@14a
    .line 427
    :cond_b
    move-object/from16 v0, p2

    #@14c
    instance-of v2, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@14e
    if-eqz v2, :cond_c

    #@150
    move-object/from16 v2, p2

    #@152
    .line 428
    check-cast v2, Landroid/security/keystore/AndroidKeyStoreKey;

    #@154
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@157
    move-result-object v22

    #@158
    .line 436
    :goto_4
    if-eqz v22, :cond_f

    #@15a
    const-string/jumbo v2, "USRPKEY_"

    #@15d
    move-object/from16 v0, v22

    #@15f
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@162
    move-result v2

    #@163
    if-eqz v2, :cond_f

    #@165
    .line 437
    const-string/jumbo v2, "USRPKEY_"

    #@168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@16b
    move-result v2

    #@16c
    move-object/from16 v0, v22

    #@16e
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@171
    move-result-object v17

    #@172
    .line 438
    .local v17, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    #@174
    move-object/from16 v1, v17

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@179
    move-result v2

    #@17a
    if-nez v2, :cond_d

    #@17c
    .line 439
    new-instance v2, Ljava/security/KeyStoreException;

    #@17e
    new-instance v3, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v5, "Can only replace keys with same alias: "

    #@186
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v3

    #@18a
    move-object/from16 v0, p1

    #@18c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v3

    #@190
    .line 440
    const-string/jumbo v5, " != "

    #@193
    .line 439
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v3

    #@197
    move-object/from16 v0, v17

    #@199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v3

    #@19d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v3

    #@1a1
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@1a4
    throw v2

    #@1a5
    .line 430
    .end local v17    # "keySubalias":Ljava/lang/String;
    :cond_c
    const/16 v22, 0x0

    #@1a7
    .local v22, "pkeyAlias":Ljava/lang/String;
    goto :goto_4

    #@1a8
    .line 442
    .end local v22    # "pkeyAlias":Ljava/lang/String;
    .restart local v17    # "keySubalias":Ljava/lang/String;
    :cond_d
    const/16 v24, 0x0

    #@1aa
    .line 443
    .local v24, "shouldReplacePrivateKey":Z
    const/4 v4, 0x0

    #@1ab
    .line 444
    .local v4, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const/4 v6, 0x0

    #@1ac
    .line 513
    .end local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v17    # "keySubalias":Ljava/lang/String;
    :goto_5
    const/16 v26, 0x0

    #@1ae
    .line 516
    .local v26, "success":Z
    if-eqz v24, :cond_15

    #@1b0
    .line 519
    :try_start_2
    move-object/from16 v0, p0

    #@1b2
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1b4
    move-object/from16 v0, p1

    #@1b6
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@1b9
    .line 520
    new-instance v8, Landroid/security/keymaster/KeyCharacteristics;

    #@1bb
    invoke-direct {v8}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@1be
    .line 521
    .local v8, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    #@1c0
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c2
    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c7
    const-string/jumbo v5, "USRPKEY_"

    #@1ca
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v3

    #@1ce
    move-object/from16 v0, p1

    #@1d0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v3

    #@1d4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v3

    #@1d8
    .line 524
    const/4 v5, 0x1

    #@1d9
    .line 521
    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I

    #@1dc
    move-result v14

    #@1dd
    .line 528
    .local v14, "errorCode":I
    const/4 v2, 0x1

    #@1de
    if-eq v14, v2, :cond_16

    #@1e0
    .line 529
    new-instance v2, Ljava/security/KeyStoreException;

    #@1e2
    const-string/jumbo v3, "Failed to store private key"

    #@1e5
    .line 530
    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@1e8
    move-result-object v5

    #@1e9
    .line 529
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1ec
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1ed
    .line 554
    .end local v8    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v14    # "errorCode":I
    :catchall_0
    move-exception v2

    #@1ee
    .line 555
    if-nez v26, :cond_e

    #@1f0
    .line 556
    if-eqz v24, :cond_1b

    #@1f2
    .line 557
    move-object/from16 v0, p0

    #@1f4
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1f6
    move-object/from16 v0, p1

    #@1f8
    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@1fb
    .line 554
    :cond_e
    :goto_6
    throw v2

    #@1fc
    .line 446
    .end local v24    # "shouldReplacePrivateKey":Z
    .end local v26    # "success":Z
    :cond_f
    const/16 v24, 0x1

    #@1fe
    .line 448
    .restart local v24    # "shouldReplacePrivateKey":Z
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@201
    move-result-object v16

    #@202
    .line 449
    .local v16, "keyFormat":Ljava/lang/String;
    if-eqz v16, :cond_10

    #@204
    const-string/jumbo v2, "PKCS#8"

    #@207
    move-object/from16 v0, v16

    #@209
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v2

    #@20d
    if-eqz v2, :cond_10

    #@20f
    .line 457
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    #@212
    move-result-object v6

    #@213
    .line 458
    .local v6, "pkcs8EncodedPrivateKeyBytes":[B
    if-nez v6, :cond_11

    #@215
    .line 459
    new-instance v2, Ljava/security/KeyStoreException;

    #@217
    const-string/jumbo v3, "Private key did not export any key material"

    #@21a
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@21d
    throw v2

    #@21e
    .line 450
    .end local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_10
    new-instance v2, Ljava/security/KeyStoreException;

    #@220
    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    #@222
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@225
    const-string/jumbo v5, "Unsupported private key export format: "

    #@228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v3

    #@22c
    move-object/from16 v0, v16

    #@22e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v3

    #@232
    .line 452
    const-string/jumbo v5, ". Only private keys which export their key material in PKCS#8 format are"

    #@235
    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v3

    #@239
    .line 453
    const-string/jumbo v5, " supported."

    #@23c
    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v3

    #@240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v3

    #@244
    .line 450
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@247
    throw v2

    #@248
    .line 462
    .restart local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_11
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@24a
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@24d
    .line 466
    .local v4, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@250
    move-result-object v2

    #@251
    .line 465
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    #@254
    move-result v2

    #@255
    .line 464
    const v3, 0x10000002

    #@258
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@25b
    .line 467
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    #@25e
    move-result v23

    #@25f
    .line 469
    .local v23, "purposes":I
    invoke-static/range {v23 .. v23}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@262
    move-result-object v2

    #@263
    .line 468
    const v3, 0x20000001

    #@266
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@269
    .line 470
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@26c
    move-result v2

    #@26d
    if-eqz v2, :cond_12

    #@26f
    .line 472
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@272
    move-result-object v2

    #@273
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@276
    move-result-object v2

    #@277
    .line 471
    const v3, 0x20000005

    #@27a
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@27d
    .line 476
    :cond_12
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    #@280
    move-result-object v2

    #@281
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@284
    move-result-object v2

    #@285
    .line 475
    const v3, 0x20000004

    #@288
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@28b
    .line 479
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    #@28e
    move-result-object v2

    #@28f
    .line 478
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@292
    move-result-object v18

    #@293
    .line 480
    .local v18, "keymasterEncryptionPaddings":[I
    and-int/lit8 v2, v23, 0x1

    #@295
    if-eqz v2, :cond_14

    #@297
    .line 481
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    #@29a
    move-result v2

    #@29b
    .line 480
    if-eqz v2, :cond_14

    #@29d
    .line 482
    const/4 v2, 0x0

    #@29e
    move-object/from16 v0, v18

    #@2a0
    array-length v3, v0

    #@2a1
    :goto_7
    if-ge v2, v3, :cond_14

    #@2a3
    aget v19, v18, v2

    #@2a5
    .line 483
    .local v19, "keymasterPadding":I
    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    #@2a8
    move-result v5

    #@2a9
    if-nez v5, :cond_13

    #@2ab
    .line 486
    new-instance v2, Ljava/security/KeyStoreException;

    #@2ad
    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    #@2af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b2
    const-string/jumbo v5, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    #@2b5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v3

    #@2b9
    .line 489
    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@2bc
    move-result-object v5

    #@2bd
    .line 487
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v3

    #@2c1
    .line 491
    const-string/jumbo v5, ". See KeyProtection documentation."

    #@2c4
    .line 487
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v3

    #@2c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v3

    #@2cc
    .line 486
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2cf
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    #@2d0
    .line 507
    .end local v18    # "keymasterEncryptionPaddings":[I
    .end local v19    # "keymasterPadding":I
    .end local v23    # "purposes":I
    :catch_2
    move-exception v12

    #@2d1
    .line 508
    .local v12, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@2d3
    invoke-direct {v2, v12}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@2d6
    throw v2

    #@2d7
    .line 482
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .restart local v18    # "keymasterEncryptionPaddings":[I
    .restart local v19    # "keymasterPadding":I
    .restart local v23    # "purposes":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    #@2d9
    goto :goto_7

    #@2da
    .line 495
    .end local v19    # "keymasterPadding":I
    :cond_14
    const v2, 0x20000006

    #@2dd
    :try_start_4
    move-object/from16 v0, v18

    #@2df
    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2e2
    .line 497
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    #@2e5
    move-result-object v2

    #@2e6
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    #@2e9
    move-result-object v2

    #@2ea
    .line 496
    const v3, 0x20000006

    #@2ed
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2f0
    .line 499
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    #@2f3
    move-result v2

    #@2f4
    .line 500
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    #@2f7
    move-result v3

    #@2f8
    .line 498
    invoke-static {v4, v2, v3}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    #@2fb
    .line 502
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    #@2fe
    move-result-object v2

    #@2ff
    .line 501
    const v3, 0x60000190

    #@302
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@305
    .line 504
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@308
    move-result-object v2

    #@309
    .line 503
    const v3, 0x60000191

    #@30c
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@30f
    .line 506
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@312
    move-result-object v2

    #@313
    .line 505
    const v3, 0x60000192

    #@316
    invoke-virtual {v4, v3, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    #@319
    goto/16 :goto_5

    #@31b
    .line 534
    .end local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v16    # "keyFormat":Ljava/lang/String;
    .end local v18    # "keymasterEncryptionPaddings":[I
    .end local v23    # "purposes":I
    .restart local v26    # "success":Z
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    #@31d
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@31f
    move-object/from16 v0, p1

    #@321
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@324
    .line 535
    move-object/from16 v0, p0

    #@326
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@328
    move-object/from16 v0, p1

    #@32a
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@32d
    .line 539
    :cond_16
    move-object/from16 v0, p0

    #@32f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@331
    new-instance v3, Ljava/lang/StringBuilder;

    #@333
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@336
    const-string/jumbo v5, "USRCERT_"

    #@339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v3

    #@33d
    move-object/from16 v0, p1

    #@33f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v3

    #@343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@346
    move-result-object v3

    #@347
    .line 540
    const/4 v5, -0x1

    #@348
    .line 539
    move-object/from16 v0, v28

    #@34a
    invoke-virtual {v2, v3, v0, v5, v7}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@34d
    move-result v14

    #@34e
    .line 541
    .restart local v14    # "errorCode":I
    const/4 v2, 0x1

    #@34f
    if-eq v14, v2, :cond_17

    #@351
    .line 542
    new-instance v2, Ljava/security/KeyStoreException;

    #@353
    const-string/jumbo v3, "Failed to store certificate #0"

    #@356
    .line 543
    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@359
    move-result-object v5

    #@35a
    .line 542
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35d
    throw v2

    #@35e
    .line 547
    :cond_17
    move-object/from16 v0, p0

    #@360
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@362
    new-instance v3, Ljava/lang/StringBuilder;

    #@364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@367
    const-string/jumbo v5, "CACERT_"

    #@36a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v3

    #@36e
    move-object/from16 v0, p1

    #@370
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@373
    move-result-object v3

    #@374
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@377
    move-result-object v3

    #@378
    .line 548
    const/4 v5, -0x1

    #@379
    .line 547
    invoke-virtual {v2, v3, v11, v5, v7}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@37c
    move-result v14

    #@37d
    .line 549
    const/4 v2, 0x1

    #@37e
    if-eq v14, v2, :cond_18

    #@380
    .line 550
    new-instance v2, Ljava/security/KeyStoreException;

    #@382
    const-string/jumbo v3, "Failed to store certificate chain"

    #@385
    .line 551
    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@388
    move-result-object v5

    #@389
    .line 550
    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38c
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@38d
    .line 553
    :cond_18
    const/16 v26, 0x1

    #@38f
    .line 555
    if-nez v26, :cond_19

    #@391
    .line 556
    if-eqz v24, :cond_1a

    #@393
    .line 557
    move-object/from16 v0, p0

    #@395
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@397
    move-object/from16 v0, p1

    #@399
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@39c
    .line 340
    :cond_19
    :goto_8
    return-void

    #@39d
    .line 559
    :cond_1a
    move-object/from16 v0, p0

    #@39f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3a1
    move-object/from16 v0, p1

    #@3a3
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@3a6
    .line 560
    move-object/from16 v0, p0

    #@3a8
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3aa
    move-object/from16 v0, p1

    #@3ac
    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@3af
    goto :goto_8

    #@3b0
    .line 559
    .end local v14    # "errorCode":I
    :cond_1b
    move-object/from16 v0, p0

    #@3b2
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@3b9
    .line 560
    move-object/from16 v0, p0

    #@3bb
    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3bd
    move-object/from16 v0, p1

    #@3bf
    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@3c2
    goto/16 :goto_6
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 21
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
    .line 569
    if-eqz p3, :cond_0

    #@2
    move-object/from16 v0, p3

    #@4
    instance-of v1, v0, Landroid/security/keystore/KeyProtection;

    #@6
    if-eqz v1, :cond_1

    #@8
    :cond_0
    move-object/from16 v19, p3

    #@a
    .line 574
    check-cast v19, Landroid/security/keystore/KeyProtection;

    #@c
    .line 576
    .local v19, "params":Landroid/security/keystore/KeyProtection;
    move-object/from16 v0, p2

    #@e
    instance-of v1, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@10
    if-eqz v1, :cond_6

    #@12
    .line 579
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@14
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 580
    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    if-nez v2, :cond_2

    #@1a
    .line 581
    new-instance v1, Ljava/security/KeyStoreException;

    #@1c
    const-string/jumbo v4, "KeyStore-backed secret key does not have an alias"

    #@1f
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 570
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v19    # "params":Landroid/security/keystore/KeyProtection;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    #@25
    .line 571
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
    .line 572
    const-string/jumbo v6, ". Supported: "

    #@40
    .line 571
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 572
    const-class v6, Landroid/security/keystore/KeyProtection;

    #@46
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 571
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 570
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1

    #@56
    .line 583
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v19    # "params":Landroid/security/keystore/KeyProtection;
    :cond_2
    const-string/jumbo v1, "USRSKEY_"

    #@59
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_3

    #@5f
    .line 584
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
    .line 588
    :cond_3
    const-string/jumbo v1, "USRSKEY_"

    #@7c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7f
    move-result v1

    #@80
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    .line 589
    .local v10, "keyEntryAlias":Ljava/lang/String;
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-nez v1, :cond_4

    #@8c
    .line 590
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
    .line 591
    const-string/jumbo v6, " != "

    #@a3
    .line 590
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 594
    :cond_4
    if-eqz v19, :cond_5

    #@b5
    .line 595
    new-instance v1, Ljava/security/KeyStoreException;

    #@b7
    const-string/jumbo v4, "Modifying KeyStore-backed key using protection parameters not supported"

    #@ba
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v1

    #@be
    .line 598
    :cond_5
    return-void

    #@bf
    .line 601
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v10    # "keyEntryAlias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_6
    if-nez v19, :cond_7

    #@c1
    .line 602
    new-instance v1, Ljava/security/KeyStoreException;

    #@c3
    .line 603
    const-string/jumbo v4, "Protection parameters must be specified when importing a symmetric key"

    #@c6
    .line 602
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@c9
    throw v1

    #@ca
    .line 607
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@cd
    move-result-object v11

    #@ce
    .line 608
    .local v11, "keyExportFormat":Ljava/lang/String;
    if-nez v11, :cond_8

    #@d0
    .line 609
    new-instance v1, Ljava/security/KeyStoreException;

    #@d2
    .line 610
    const-string/jumbo v4, "Only secret keys that export their key material are supported"

    #@d5
    .line 609
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v1

    #@d9
    .line 611
    :cond_8
    const-string/jumbo v1, "RAW"

    #@dc
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v1

    #@e0
    if-nez v1, :cond_9

    #@e2
    .line 612
    new-instance v1, Ljava/security/KeyStoreException;

    #@e4
    .line 613
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
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v4

    #@f4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v4

    #@f8
    .line 612
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@fb
    throw v1

    #@fc
    .line 615
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@ff
    move-result-object v5

    #@100
    .line 616
    .local v5, "keyMaterial":[B
    if-nez v5, :cond_a

    #@102
    .line 617
    new-instance v1, Ljava/security/KeyStoreException;

    #@104
    const-string/jumbo v4, "Key did not export its key material despite supporting RAW format export"

    #@107
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v1

    #@10b
    .line 621
    :cond_a
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    #@10d
    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@110
    .line 624
    .local v3, "args":Landroid/security/keymaster/KeymasterArguments;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    #@117
    move-result v12

    #@118
    .line 625
    .local v12, "keymasterAlgorithm":I
    const v1, 0x10000002

    #@11b
    invoke-virtual {v3, v1, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@11e
    .line 628
    const/16 v1, 0x80

    #@120
    if-ne v12, v1, :cond_d

    #@122
    .line 635
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@125
    move-result-object v1

    #@126
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    #@129
    move-result v17

    #@12a
    .line 636
    .local v17, "keymasterImpliedDigest":I
    const/4 v1, -0x1

    #@12b
    move/from16 v0, v17

    #@12d
    if-ne v0, v1, :cond_b

    #@12f
    .line 637
    new-instance v1, Ljava/security/ProviderException;

    #@131
    .line 638
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
    .line 639
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@140
    move-result-object v6

    #@141
    .line 638
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v4

    #@145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v4

    #@149
    .line 637
    invoke-direct {v1, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@14c
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@14d
    .line 711
    .end local v12    # "keymasterAlgorithm":I
    .end local v17    # "keymasterImpliedDigest":I
    :catch_0
    move-exception v8

    #@14e
    .line 712
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/KeyStoreException;

    #@150
    invoke-direct {v1, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@153
    throw v1

    #@154
    .line 641
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v12    # "keymasterAlgorithm":I
    .restart local v17    # "keymasterImpliedDigest":I
    :cond_b
    const/4 v1, 0x1

    #@155
    :try_start_1
    new-array v15, v1, [I

    #@157
    const/4 v1, 0x0

    #@158
    aput v17, v15, v1

    #@15a
    .line 642
    .local v15, "keymasterDigests":[I
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@15d
    move-result v1

    #@15e
    if-eqz v1, :cond_e

    #@160
    .line 646
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@163
    move-result-object v1

    #@164
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@167
    move-result-object v16

    #@168
    .line 647
    .local v16, "keymasterDigestsFromParams":[I
    move-object/from16 v0, v16

    #@16a
    array-length v1, v0

    #@16b
    const/4 v4, 0x1

    #@16c
    if-ne v1, v4, :cond_c

    #@16e
    .line 648
    const/4 v1, 0x0

    #@16f
    aget v1, v16, v1

    #@171
    move/from16 v0, v17

    #@173
    if-eq v1, v0, :cond_e

    #@175
    .line 649
    :cond_c
    new-instance v1, Ljava/security/KeyStoreException;

    #@177
    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v6, "Unsupported digests specification: "

    #@17f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v4

    #@183
    .line 651
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@186
    move-result-object v6

    #@187
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@18a
    move-result-object v6

    #@18b
    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v4

    #@18f
    .line 651
    const-string/jumbo v6, ". Only "

    #@192
    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v4

    #@196
    .line 652
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@199
    move-result-object v6

    #@19a
    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v4

    #@19e
    .line 653
    const-string/jumbo v6, " supported for HMAC key algorithm "

    #@1a1
    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    .line 653
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@1a8
    move-result-object v6

    #@1a9
    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v4

    #@1ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v4

    #@1b1
    .line 649
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@1b4
    throw v1

    #@1b5
    .line 658
    .end local v15    # "keymasterDigests":[I
    .end local v16    # "keymasterDigestsFromParams":[I
    .end local v17    # "keymasterImpliedDigest":I
    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    #@1b8
    move-result v1

    #@1b9
    if-eqz v1, :cond_f

    #@1bb
    .line 659
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    #@1be
    move-result-object v1

    #@1bf
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@1c2
    move-result-object v15

    #@1c3
    .line 664
    .restart local v15    # "keymasterDigests":[I
    :cond_e
    :goto_0
    const v1, 0x20000005

    #@1c6
    invoke-virtual {v3, v1, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@1c9
    .line 666
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    #@1cc
    move-result v20

    #@1cd
    .line 668
    .local v20, "purposes":I
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    #@1d0
    move-result-object v1

    #@1d1
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@1d4
    move-result-object v14

    #@1d5
    .line 669
    .local v14, "keymasterBlockModes":[I
    and-int/lit8 v1, v20, 0x1

    #@1d7
    if-eqz v1, :cond_11

    #@1d9
    .line 670
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    #@1dc
    move-result v1

    #@1dd
    .line 669
    if-eqz v1, :cond_11

    #@1df
    .line 671
    const/4 v1, 0x0

    #@1e0
    array-length v4, v14

    #@1e1
    :goto_1
    if-ge v1, v4, :cond_11

    #@1e3
    aget v13, v14, v1

    #@1e5
    .line 672
    .local v13, "keymasterBlockMode":I
    invoke-static {v13}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    #@1e8
    move-result v6

    #@1e9
    if-nez v6, :cond_10

    #@1eb
    .line 674
    new-instance v1, Ljava/security/KeyStoreException;

    #@1ed
    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string/jumbo v6, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    #@1f5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v4

    #@1f9
    .line 677
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    #@1fc
    move-result-object v6

    #@1fd
    .line 675
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v4

    #@201
    .line 678
    const-string/jumbo v6, ". See KeyProtection documentation."

    #@204
    .line 675
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v4

    #@208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v4

    #@20c
    .line 674
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@20f
    throw v1

    #@210
    .line 661
    .end local v13    # "keymasterBlockMode":I
    .end local v14    # "keymasterBlockModes":[I
    .end local v15    # "keymasterDigests":[I
    .end local v20    # "purposes":I
    :cond_f
    sget-object v15, Llibcore/util/EmptyArray;->INT:[I

    #@212
    .restart local v15    # "keymasterDigests":[I
    goto :goto_0

    #@213
    .line 671
    .restart local v13    # "keymasterBlockMode":I
    .restart local v14    # "keymasterBlockModes":[I
    .restart local v20    # "purposes":I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    #@215
    goto :goto_1

    #@216
    .line 683
    .end local v13    # "keymasterBlockMode":I
    :cond_11
    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@219
    move-result-object v1

    #@21a
    .line 682
    const v4, 0x20000001

    #@21d
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@220
    .line 684
    const v1, 0x20000004

    #@223
    invoke-virtual {v3, v1, v14}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@226
    .line 685
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    #@229
    move-result-object v1

    #@22a
    array-length v1, v1

    #@22b
    if-lez v1, :cond_12

    #@22d
    .line 686
    new-instance v1, Ljava/security/KeyStoreException;

    #@22f
    const-string/jumbo v4, "Signature paddings not supported for symmetric keys"

    #@232
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@235
    throw v1

    #@236
    .line 689
    :cond_12
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    #@239
    move-result-object v1

    #@23a
    .line 688
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@23d
    move-result-object v18

    #@23e
    .line 690
    .local v18, "keymasterPaddings":[I
    const v1, 0x20000006

    #@241
    move-object/from16 v0, v18

    #@243
    invoke-virtual {v3, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@246
    .line 692
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    #@249
    move-result v1

    #@24a
    .line 693
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    #@24d
    move-result v4

    #@24e
    .line 691
    invoke-static {v3, v1, v4}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    #@251
    .line 694
    invoke-static {v3, v12, v14, v15}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    #@254
    .line 700
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    #@257
    move-result-object v1

    #@258
    .line 699
    const v4, 0x60000190

    #@25b
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@25e
    .line 702
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@261
    move-result-object v1

    #@262
    .line 701
    const v4, 0x60000191

    #@265
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@268
    .line 704
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@26b
    move-result-object v1

    #@26c
    .line 703
    const v4, 0x60000192

    #@26f
    invoke-virtual {v3, v4, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@272
    .line 706
    and-int/lit8 v1, v20, 0x1

    #@274
    if-eqz v1, :cond_13

    #@276
    .line 707
    invoke-virtual/range {v19 .. v19}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@279
    move-result v1

    #@27a
    if-eqz v1, :cond_14

    #@27c
    .line 715
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    #@27e
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@280
    move-object/from16 v0, p1

    #@282
    invoke-static {v1, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@285
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    #@287
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    const-string/jumbo v4, "USRSKEY_"

    #@28d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v1

    #@291
    move-object/from16 v0, p1

    #@293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v1

    #@297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v2

    #@29b
    .line 717
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    move-object/from16 v0, p0

    #@29d
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@29f
    .line 723
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    #@2a1
    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@2a4
    .line 720
    const/4 v4, 0x3

    #@2a5
    .line 722
    const/4 v6, 0x0

    #@2a6
    .line 717
    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I

    #@2a9
    move-result v9

    #@2aa
    .line 724
    .local v9, "errorCode":I
    const/4 v1, 0x1

    #@2ab
    if-eq v9, v1, :cond_15

    #@2ad
    .line 725
    new-instance v1, Ljava/security/KeyStoreException;

    #@2af
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v6, "Failed to import secret key. Keystore error code: "

    #@2b7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v4

    #@2bb
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v4

    #@2bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v4

    #@2c3
    invoke-direct {v1, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2c6
    throw v1

    #@2c7
    .line 709
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v9    # "errorCode":I
    :cond_14
    const v1, 0x70000007

    #@2ca
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    #@2cd
    goto :goto_2

    #@2ce
    .line 568
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v9    # "errorCode":I
    :cond_15
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 216
    :try_start_0
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v0

    #@7
    .line 218
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 217
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
    .line 219
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@14
    .line 220
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    #@17
    const-string/jumbo v3, "Couldn\'t parse certificate in keystore"

    #@1a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 221
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
    .line 228
    :try_start_0
    const-string/jumbo v2, "X.509"

    #@3
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v0

    #@7
    .line 230
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 229
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 231
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@12
    .line 232
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    #@15
    const-string/jumbo v3, "Couldn\'t parse certificates in keystore"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 233
    new-instance v2, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@20
    return-object v2
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 210
    if-eqz p1, :cond_0

    #@3
    .line 211
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@8
    .line 210
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
    .line 794
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
    .line 799
    if-nez p1, :cond_0

    #@2
    .line 800
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 803
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
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    .line 804
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "USRSKEY_"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@40
    move-result v0

    #@41
    .line 803
    if-nez v0, :cond_1

    #@43
    .line 805
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "USRCERT_"

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@5c
    move-result v0

    #@5d
    .line 803
    if-nez v0, :cond_1

    #@5f
    .line 806
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "CACERT_"

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    .line 803
    :goto_0
    return v0

    #@7a
    :cond_1
    const/4 v0, 0x1

    #@7b
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
    .line 762
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 763
    return-void

    #@7
    .line 767
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    invoke-static {v0, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 768
    new-instance v0, Ljava/security/KeyStoreException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Failed to delete entry: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 761
    :cond_1
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 140
    if-nez p1, :cond_0

    #@3
    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "alias == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 144
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
    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@25
    move-result-object v0

    #@26
    .line 145
    .local v0, "encodedCert":[B
    if-eqz v0, :cond_1

    #@28
    .line 146
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 149
    :cond_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "CACERT_"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@46
    move-result-object v0

    #@47
    .line 150
    if-eqz v0, :cond_2

    #@49
    .line 151
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 155
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
    .line 854
    if-nez p1, :cond_0

    #@4
    .line 855
    return-object v13

    #@5
    .line 857
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
    .line 859
    return-object v13

    #@13
    .line 863
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v6

    #@17
    .line 867
    .local v6, "targetCertBytes":[B
    if-nez v6, :cond_2

    #@19
    .line 868
    return-object v13

    #@1a
    .line 864
    .end local v6    # "targetCertBytes":[B
    :catch_0
    move-exception v4

    #@1b
    .line 865
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    return-object v13

    #@1c
    .line 871
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v6    # "targetCertBytes":[B
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    #@1e
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@21
    .line 879
    .local v5, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@23
    const-string/jumbo v9, "USRCERT_"

    #@26
    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 880
    .local v2, "certAliases":[Ljava/lang/String;
    if-eqz v2, :cond_5

    #@2c
    .line 881
    array-length v9, v2

    #@2d
    move v8, v7

    #@2e
    :goto_0
    if-ge v8, v9, :cond_5

    #@30
    aget-object v0, v2, v8

    #@32
    .line 882
    .local v0, "alias":Ljava/lang/String;
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@34
    new-instance v11, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v12, "USRCERT_"

    #@3c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v11

    #@40
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@4b
    move-result-object v3

    #@4c
    .line 883
    .local v3, "certBytes":[B
    if-nez v3, :cond_4

    #@4e
    .line 881
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@50
    goto :goto_0

    #@51
    .line 887
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    .line 889
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_3

    #@5a
    .line 890
    return-object v0

    #@5b
    .line 899
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    :cond_5
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@5d
    const-string/jumbo v9, "CACERT_"

    #@60
    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 900
    .local v1, "caAliases":[Ljava/lang/String;
    if-eqz v2, :cond_8

    #@66
    .line 901
    array-length v8, v1

    #@67
    :goto_1
    if-ge v7, v8, :cond_8

    #@69
    aget-object v0, v1, v7

    #@6b
    .line 902
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_7

    #@71
    .line 901
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@73
    goto :goto_1

    #@74
    .line 906
    :cond_7
    iget-object v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@76
    new-instance v10, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v11, "CACERT_"

    #@7e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v10

    #@82
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@8d
    move-result-object v3

    #@8e
    .line 907
    .restart local v3    # "certBytes":[B
    if-eqz v3, :cond_6

    #@90
    .line 911
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@93
    move-result v9

    #@94
    if-eqz v9, :cond_6

    #@96
    .line 912
    return-object v0

    #@97
    .line 917
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
    .line 107
    if-nez p1, :cond_0

    #@3
    .line 108
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v8, "alias == null"

    #@8
    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v7

    #@c
    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@12
    .line 112
    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    #@14
    .line 113
    return-object v7

    #@15
    .line 118
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
    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@2e
    move-result-object v0

    #@2f
    .line 119
    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    #@31
    .line 120
    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    #@34
    move-result-object v1

    #@35
    .line 122
    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@38
    move-result v7

    #@39
    add-int/lit8 v7, v7, 0x1

    #@3b
    new-array v2, v7, [Ljava/security/cert/Certificate;

    #@3d
    .line 124
    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v5

    #@41
    .line 125
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    #@42
    .line 126
    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v7

    #@46
    if-eqz v7, :cond_3

    #@48
    .line 127
    add-int/lit8 v4, v3, 0x1

    #@4a
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v7

    #@4e
    check-cast v7, Ljava/security/cert/Certificate;

    #@50
    aput-object v7, v2, v3

    #@52
    move v3, v4

    #@53
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@54
    .line 130
    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    #@55
    new-array v2, v7, [Ljava/security/cert/Certificate;

    #@57
    .line 133
    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    #@58
    aput-object v6, v2, v7

    #@5a
    .line 135
    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    if-nez p1, :cond_0

    #@2
    .line 249
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "alias == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 252
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
    .line 253
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    #@25
    .line 254
    return-object v0

    #@26
    .line 257
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
    .line 258
    if-eqz v0, :cond_2

    #@40
    .line 259
    return-object v0

    #@41
    .line 262
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
    .line 263
    if-eqz v0, :cond_3

    #@5b
    .line 264
    return-object v0

    #@5c
    .line 267
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
    .line 91
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 92
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
    .line 94
    .local v0, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c
    .line 93
    invoke-static {v2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 95
    .end local v0    # "privateKeyAlias":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "USRSKEY_"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 98
    .local v1, "secretKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@3d
    .line 97
    invoke-static {v2, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@40
    move-result-object v2

    #@41
    return-object v2

    #@42
    .line 101
    .end local v1    # "secretKeyAlias":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@43
    return-object v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 849
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
    .line 816
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
    .line 929
    if-eqz p1, :cond_0

    #@2
    .line 930
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "InputStream not supported"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 933
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "password not supported"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 938
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@1c
    .line 928
    return-void
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
    .line 738
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 739
    new-instance v2, Ljava/security/KeyStoreException;

    #@8
    const-string/jumbo v3, "Entry exists and is not a trusted certificate"

    #@b
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 743
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 744
    new-instance v2, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v3, "cert == null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 749
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v1

    #@1e
    .line 754
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
    .line 755
    const/4 v4, -0x1

    #@35
    const/4 v5, 0x0

    #@36
    .line 754
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_2

    #@3c
    .line 756
    new-instance v2, Ljava/security/KeyStoreException;

    #@3e
    const-string/jumbo v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    #@41
    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 750
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    #@46
    .line 751
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@48
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@4b
    throw v2

    #@4c
    .line 737
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
    .line 944
    if-nez p2, :cond_0

    #@2
    .line 945
    new-instance v3, Ljava/security/KeyStoreException;

    #@4
    const-string/jumbo v4, "entry == null"

    #@7
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 948
    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d
    invoke-static {v3, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@10
    .line 950
    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@12
    if-eqz v3, :cond_1

    #@14
    move-object v2, p2

    #@15
    .line 952
    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@17
    .line 953
    .local v2, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@1e
    .line 954
    return-void

    #@1f
    .line 957
    .end local v2    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_1
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@21
    if-eqz v3, :cond_2

    #@23
    move-object v0, p2

    #@24
    .line 958
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    #@26
    .line 959
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    #@31
    .line 943
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    return-void

    #@32
    .line 960
    :cond_2
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    #@34
    if-eqz v3, :cond_3

    #@36
    move-object v1, p2

    #@37
    .line 961
    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    #@39
    .line 962
    .local v1, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    #@40
    goto :goto_0

    #@41
    .line 964
    .end local v1    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    #@43
    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 964
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@5a
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
    .line 273
    if-eqz p3, :cond_0

    #@3
    array-length v0, p3

    #@4
    if-lez v0, :cond_0

    #@6
    .line 274
    new-instance v0, Ljava/security/KeyStoreException;

    #@8
    const-string/jumbo v1, "entries cannot be protected with passwords"

    #@b
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 277
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 278
    check-cast p2, Ljava/security/PrivateKey;

    #@15
    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    #@18
    .line 272
    :goto_0
    return-void

    #@19
    .line 279
    .restart local p2    # "key":Ljava/security/Key;
    :cond_1
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 280
    check-cast p2, Ljavax/crypto/SecretKey;

    #@1f
    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    #@22
    goto :goto_0

    #@23
    .line 282
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
    .line 733
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
    .line 811
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
    .line 923
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Can not serialize AndroidKeyStore to OutputStream"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
