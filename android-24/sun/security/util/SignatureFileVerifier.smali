.class public Lsun/security/util/SignatureFileVerifier;
.super Ljava/lang/Object;
.source "SignatureFileVerifier.java"


# static fields
.field private static final ATTR_DIGEST:Ljava/lang/String;

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexc:[C


# instance fields
.field private block:Lsun/security/pkcs/PKCS7;

.field private certificateFactory:Ljava/security/cert/CertificateFactory;

.field private createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private md:Lsun/security/util/ManifestDigester;

.field private name:Ljava/lang/String;

.field private sfBytes:[B

.field private signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private workaround:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "jar"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@9
    .line 52
    const-string/jumbo v0, "-DIGEST-Manifest-Main-Attributes"

    #@c
    .line 53
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@e
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 51
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    #@14
    .line 588
    const/16 v0, 0x10

    #@16
    new-array v0, v0, [C

    #@18
    fill-array-data v0, :array_0

    #@1b
    .line 587
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    #@1d
    .line 43
    return-void

    #@1e
    .line 588
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V
    .locals 3
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Lsun/security/util/ManifestDigester;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "signerCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 73
    iput-boolean v2, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    #@6
    .line 76
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    #@9
    .line 93
    const/4 v0, 0x0

    #@a
    .line 95
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 96
    new-instance v1, Lsun/security/pkcs/PKCS7;

    #@10
    invoke-direct {v1, p4}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    #@13
    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    #@15
    .line 97
    iget-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    #@17
    invoke-virtual {v1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getData()[B

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    #@21
    .line 98
    const-string/jumbo v1, "X509"

    #@24
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 100
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@2d
    .line 102
    const-string/jumbo v1, "."

    #@30
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@33
    move-result v1

    #@34
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 103
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3a
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    #@40
    .line 104
    iput-object p2, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    #@42
    .line 105
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    #@44
    .line 89
    return-void

    #@45
    .line 99
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@46
    .line 100
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@49
    .line 99
    throw v1
.end method

.method static contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z
    .locals 2
    .param p0, "set"    # [Ljava/security/CodeSigner;
    .param p1, "signer"    # Ljava/security/CodeSigner;

    #@0
    .prologue
    .line 609
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 610
    aget-object v1, p0, v0

    #@6
    invoke-virtual {v1, p1}, Ljava/security/CodeSigner;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 611
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 613
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 161
    new-instance v2, Ljava/util/HashMap;

    #@6
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    #@b
    .line 163
    :cond_0
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/MessageDigest;

    #@13
    .line 165
    .local v0, "digest":Ljava/security/MessageDigest;
    if-nez v0, :cond_1

    #@15
    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@18
    move-result-object v0

    #@19
    .line 168
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 173
    :cond_1
    :goto_0
    return-object v0

    #@1f
    .line 169
    :catch_0
    move-exception v1

    #@20
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;
    .locals 9
    .param p1, "infos"    # [Lsun/security/pkcs/SignerInfo;
    .param p2, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 477
    const/4 v4, 0x0

    #@2
    .line 479
    .local v4, "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    #@3
    .end local v4    # "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    .local v2, "i":I
    :goto_0
    array-length v5, p1

    #@4
    if-ge v2, v5, :cond_2

    #@6
    .line 481
    aget-object v3, p1, v2

    #@8
    .line 482
    .local v3, "info":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v3, p2}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    #@b
    move-result-object v1

    #@c
    .line 483
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v5, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    #@e
    invoke-virtual {v5, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@11
    move-result-object v0

    #@12
    .line 484
    .local v0, "certChain":Ljava/security/cert/CertPath;
    if-nez v4, :cond_0

    #@14
    .line 485
    new-instance v4, Ljava/util/ArrayList;

    #@16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 488
    :cond_0
    new-instance v5, Ljava/security/CodeSigner;

    #@1b
    invoke-direct {p0, v3}, Lsun/security/util/SignatureFileVerifier;->getTimestamp(Lsun/security/pkcs/SignerInfo;)Ljava/security/Timestamp;

    #@1e
    move-result-object v6

    #@1f
    invoke-direct {v5, v0, v6}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    #@22
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 490
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 491
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "Signature Block Certificate: "

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 492
    const/4 v7, 0x0

    #@38
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    .line 491
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@47
    .line 479
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 496
    .end local v0    # "certChain":Ljava/security/cert/CertPath;
    .end local v1    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "info":Lsun/security/pkcs/SignerInfo;
    :cond_2
    if-eqz v4, :cond_3

    #@4c
    .line 497
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v5

    #@50
    new-array v5, v5, [Ljava/security/CodeSigner;

    #@52
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    check-cast v5, [Ljava/security/CodeSigner;

    #@58
    return-object v5

    #@59
    .line 499
    :cond_3
    return-object v8
.end method

.method private getTimestamp(Lsun/security/pkcs/SignerInfo;)Ljava/security/Timestamp;
    .locals 10
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 527
    const/4 v2, 0x0

    #@1
    .line 530
    .local v2, "timestamp":Ljava/security/Timestamp;
    invoke-virtual {p1}, Lsun/security/pkcs/SignerInfo;->getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;

    #@4
    move-result-object v8

    #@5
    .line 531
    .local v8, "unsignedAttrs":Lsun/security/pkcs/PKCS9Attributes;
    if-eqz v8, :cond_0

    #@7
    .line 533
    const-string/jumbo v9, "signatureTimestampToken"

    #@a
    invoke-virtual {v8, v9}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;

    #@d
    move-result-object v4

    #@e
    .line 534
    .local v4, "timestampTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    if-eqz v4, :cond_0

    #@10
    .line 536
    new-instance v3, Lsun/security/pkcs/PKCS7;

    #@12
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    check-cast v9, [B

    #@18
    invoke-direct {v3, v9}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    #@1b
    .line 539
    .local v3, "timestampToken":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Lsun/security/pkcs/ContentInfo;->getData()[B

    #@22
    move-result-object v1

    #@23
    .line 543
    .local v1, "encodedTimestampTokenInfo":[B
    invoke-virtual {v3, v1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    #@26
    move-result-object v6

    #@27
    .line 546
    .local v6, "tsa":[Lsun/security/pkcs/SignerInfo;
    const/4 v9, 0x0

    #@28
    aget-object v9, v6, v9

    #@2a
    invoke-virtual {v9, v3}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    #@2d
    move-result-object v0

    #@2e
    .line 547
    .local v0, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    #@30
    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@33
    move-result-object v7

    #@34
    .line 550
    .local v7, "tsaChain":Ljava/security/cert/CertPath;
    new-instance v5, Lsun/security/timestamp/TimestampToken;

    #@36
    invoke-direct {v5, v1}, Lsun/security/timestamp/TimestampToken;-><init>([B)V

    #@39
    .line 552
    .local v5, "timestampTokenInfo":Lsun/security/timestamp/TimestampToken;
    invoke-virtual {p1}, Lsun/security/pkcs/SignerInfo;->getEncryptedDigest()[B

    #@3c
    move-result-object v9

    #@3d
    invoke-direct {p0, v5, v9}, Lsun/security/util/SignatureFileVerifier;->verifyTimestamp(Lsun/security/timestamp/TimestampToken;[B)V

    #@40
    .line 555
    new-instance v2, Ljava/security/Timestamp;

    #@42
    .end local v2    # "timestamp":Ljava/security/Timestamp;
    invoke-virtual {v5}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    #@45
    move-result-object v9

    #@46
    invoke-direct {v2, v9, v7}, Ljava/security/Timestamp;-><init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V

    #@49
    .line 558
    .end local v0    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "encodedTimestampTokenInfo":[B
    .end local v3    # "timestampToken":Lsun/security/pkcs/PKCS7;
    .end local v4    # "timestampTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    .end local v5    # "timestampTokenInfo":Lsun/security/timestamp/TimestampToken;
    .end local v6    # "tsa":[Lsun/security/pkcs/SignerInfo;
    .end local v7    # "tsaChain":Ljava/security/cert/CertPath;
    :cond_0
    return-object v2
.end method

.method public static isBlockOrSF(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    const-string/jumbo v0, ".SF"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, ".DSA"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 150
    const-string/jumbo v0, ".RSA"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 149
    if-nez v0, :cond_0

    #@1b
    .line 150
    const-string/jumbo v0, ".EC"

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    .line 149
    if-eqz v0, :cond_1

    #@24
    .line 151
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 153
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method static isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 3
    .param p0, "subset"    # [Ljava/security/CodeSigner;
    .param p1, "set"    # [Ljava/security/CodeSigner;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 620
    if-ne p1, p0, :cond_0

    #@3
    .line 621
    return v2

    #@4
    .line 624
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@6
    if-ge v0, v1, :cond_2

    #@8
    .line 625
    aget-object v1, p0, v0

    #@a
    invoke-static {p1, v1}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 626
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 628
    :cond_2
    return v2
.end method

.method static matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 5
    .param p0, "signers"    # [Ljava/security/CodeSigner;
    .param p1, "oldSigners"    # [Ljava/security/CodeSigner;
    .param p2, "newSigners"    # [Ljava/security/CodeSigner;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 640
    if-nez p1, :cond_0

    #@4
    if-ne p0, p2, :cond_0

    #@6
    .line 641
    return v2

    #@7
    .line 646
    :cond_0
    if-eqz p1, :cond_1

    #@9
    invoke-static {p1, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 650
    :cond_1
    invoke-static {p2, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_3

    #@15
    .line 651
    return v4

    #@16
    .line 647
    :cond_2
    return v4

    #@17
    .line 657
    :cond_3
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@19
    if-ge v1, v3, :cond_7

    #@1b
    .line 659
    if-eqz p1, :cond_4

    #@1d
    aget-object v3, p0, v1

    #@1f
    invoke-static {p1, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_5

    #@25
    .line 660
    :cond_4
    aget-object v3, p0, v1

    #@27
    invoke-static {p2, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    #@2a
    move-result v0

    #@2b
    .line 661
    .local v0, "found":Z
    :goto_1
    if-nez v0, :cond_6

    #@2d
    .line 662
    return v4

    #@2e
    .end local v0    # "found":Z
    :cond_5
    move v0, v2

    #@2f
    .line 659
    goto :goto_1

    #@30
    .line 657
    .restart local v0    # "found":Z
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 664
    .end local v0    # "found":Z
    :cond_7
    return v2
.end method

.method private processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 12
    .param p2, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    new-instance v7, Ljava/util/jar/Manifest;

    #@2
    invoke-direct {v7}, Ljava/util/jar/Manifest;-><init>()V

    #@5
    .line 206
    .local v7, "sf":Ljava/util/jar/Manifest;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    #@7
    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    #@9
    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    invoke-virtual {v7, v9}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    #@f
    .line 209
    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@12
    move-result-object v9

    #@13
    sget-object v10, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@15
    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    .line 211
    .local v8, "version":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@1b
    const-string/jumbo v9, "1.0"

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_0

    #@24
    .line 217
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    #@26
    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    #@28
    invoke-virtual {v9, v10}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    #@2b
    move-result-object v3

    #@2c
    .line 219
    .local v3, "infos":[Lsun/security/pkcs/SignerInfo;
    if-nez v3, :cond_1

    #@2e
    .line 220
    new-instance v9, Ljava/lang/SecurityException;

    #@30
    new-instance v10, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v11, "cannot verify signature block file "

    #@38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    .line 221
    iget-object v11, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    #@3e
    .line 220
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@49
    throw v9

    #@4a
    .line 214
    .end local v3    # "infos":[Lsun/security/pkcs/SignerInfo;
    :cond_0
    return-void

    #@4b
    .line 224
    .restart local v3    # "infos":[Lsun/security/pkcs/SignerInfo;
    :cond_1
    new-instance v0, Lsun/misc/BASE64Decoder;

    #@4d
    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    #@50
    .line 226
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    #@52
    invoke-direct {p0, v3, v9}, Lsun/security/util/SignatureFileVerifier;->getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;

    #@55
    move-result-object v6

    #@56
    .line 229
    .local v6, "newSigners":[Ljava/security/CodeSigner;
    if-nez v6, :cond_2

    #@58
    .line 230
    return-void

    #@59
    .line 233
    :cond_2
    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@5c
    move-result-object v9

    #@5d
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@60
    move-result-object v9

    #@61
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v2

    #@65
    .line 236
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    #@67
    invoke-direct {p0, v7, v9, v0, p2}, Lsun/security/util/SignatureFileVerifier;->verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;Ljava/util/List;)Z

    #@6a
    move-result v4

    #@6b
    .line 239
    .local v4, "manifestSigned":Z
    if-nez v4, :cond_3

    #@6d
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    #@6f
    invoke-direct {p0, v7, v9, v0}, Lsun/security/util/SignatureFileVerifier;->verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z

    #@72
    move-result v9

    #@73
    if-eqz v9, :cond_7

    #@75
    .line 245
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v9

    #@79
    if-eqz v9, :cond_9

    #@7b
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Ljava/util/Map$Entry;

    #@81
    .line 248
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@84
    move-result-object v5

    #@85
    check-cast v5, Ljava/lang/String;

    #@87
    .line 250
    .local v5, "name":Ljava/lang/String;
    if-nez v4, :cond_4

    #@89
    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8c
    move-result-object v9

    #@8d
    check-cast v9, Ljava/util/jar/Attributes;

    #@8f
    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    #@91
    invoke-direct {p0, v9, v5, v10, v0}, Lsun/security/util/SignatureFileVerifier;->verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z

    #@94
    move-result v9

    #@95
    .line 250
    if-eqz v9, :cond_8

    #@97
    .line 253
    :cond_4
    const-string/jumbo v9, "./"

    #@9a
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9d
    move-result v9

    #@9e
    if-eqz v9, :cond_5

    #@a0
    .line 254
    const/4 v9, 0x2

    #@a1
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    .line 256
    :cond_5
    const-string/jumbo v9, "/"

    #@a8
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ab
    move-result v9

    #@ac
    if-eqz v9, :cond_6

    #@ae
    .line 257
    const/4 v9, 0x1

    #@af
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    .line 259
    :cond_6
    invoke-virtual {p0, v6, p1, v5}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    #@b6
    .line 261
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@b8
    if-eqz v9, :cond_3

    #@ba
    .line 262
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@bc
    new-instance v10, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v11, "processSignature signed name = "

    #@c4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@d3
    goto :goto_0

    #@d4
    .line 240
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/SecurityException;

    #@d6
    .line 241
    const-string/jumbo v10, "Invalid signature file digest for Manifest main attributes"

    #@d9
    .line 240
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v9

    #@dd
    .line 265
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v5    # "name":Ljava/lang/String;
    :cond_8
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@df
    if-eqz v9, :cond_3

    #@e1
    .line 266
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@e3
    new-instance v10, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v11, "processSignature unsigned name = "

    #@eb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v10

    #@ef
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v10

    #@f3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v10

    #@f7
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 271
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "META-INF/MANIFEST.MF"

    #@ff
    invoke-virtual {p0, v6, p1, v9}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    #@102
    .line 203
    return-void
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 597
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    array-length v2, p0

    #@3
    mul-int/lit8 v2, v2, 0x2

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@8
    .line 599
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 600
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    #@e
    aget-byte v3, p0, v0

    #@10
    shr-int/lit8 v3, v3, 0x4

    #@12
    and-int/lit8 v3, v3, 0xf

    #@14
    aget-char v2, v2, v3

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 601
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    #@1b
    aget-byte v3, p0, v0

    #@1d
    and-int/lit8 v3, v3, 0xf

    #@1f
    aget-char v2, v2, v3

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    .line 599
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 603
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method private verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;Ljava/util/List;)Z
    .locals 13
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "decoder"    # Lsun/misc/BASE64Decoder;
    .param p4, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@3
    move-result-object v7

    #@4
    .line 284
    .local v7, "mattr":Ljava/util/jar/Attributes;
    const/4 v6, 0x0

    #@5
    .line 287
    .local v6, "manifestSigned":Z
    invoke-virtual {v7}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v10

    #@9
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v9

    #@d
    .local v9, "se$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v10

    #@11
    if-eqz v10, :cond_2

    #@13
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    check-cast v8, Ljava/util/Map$Entry;

    #@19
    .line 289
    .local v8, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 291
    .local v5, "key":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@23
    invoke-virtual {v5, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    const-string/jumbo v11, "-DIGEST-MANIFEST"

    #@2a
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2d
    move-result v10

    #@2e
    if-eqz v10, :cond_0

    #@30
    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@33
    move-result v10

    #@34
    add-int/lit8 v10, v10, -0x10

    #@36
    const/4 v11, 0x0

    #@37
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 295
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p4

    #@3d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    .line 296
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@43
    move-result-object v10

    #@44
    move-object/from16 v0, p4

    #@46
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    .line 297
    invoke-direct {p0, v1}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@4c
    move-result-object v3

    #@4d
    .line 298
    .local v3, "digest":Ljava/security/MessageDigest;
    if-eqz v3, :cond_0

    #@4f
    .line 299
    invoke-virtual {p2, v3}, Lsun/security/util/ManifestDigester;->manifestDigest(Ljava/security/MessageDigest;)[B

    #@52
    move-result-object v2

    #@53
    .line 301
    .local v2, "computedHash":[B
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@56
    move-result-object v10

    #@57
    check-cast v10, Ljava/lang/String;

    #@59
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {v0, v10}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@5e
    move-result-object v4

    #@5f
    .line 303
    .local v4, "expectedHash":[B
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@61
    if-eqz v10, :cond_1

    #@63
    .line 304
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@65
    new-instance v11, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v12, "Signature File: Manifest digest "

    #@6d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v11

    #@71
    .line 305
    invoke-virtual {v3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@74
    move-result-object v12

    #@75
    .line 304
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v11

    #@79
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@80
    .line 306
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@82
    new-instance v11, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v12, "  sigfile  "

    #@8a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v11

    #@8e
    invoke-static {v4}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v11

    #@96
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v11

    #@9a
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@9d
    .line 307
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@9f
    new-instance v11, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v12, "  computed "

    #@a7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v11

    #@ab
    invoke-static {v2}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@ae
    move-result-object v12

    #@af
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ba
    .line 308
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@bc
    invoke-virtual {v10}, Lsun/security/util/Debug;->println()V

    #@bf
    .line 311
    :cond_1
    invoke-static {v2, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@c2
    move-result v10

    #@c3
    if-eqz v10, :cond_0

    #@c5
    .line 313
    const/4 v6, 0x1

    #@c6
    goto/16 :goto_0

    #@c8
    .line 320
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "computedHash":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "expectedHash":[B
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    return v6
.end method

.method private verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z
    .locals 14
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "decoder"    # Lsun/misc/BASE64Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@3
    move-result-object v7

    #@4
    .line 329
    .local v7, "mattr":Ljava/util/jar/Attributes;
    const/4 v2, 0x1

    #@5
    .line 333
    .local v2, "attrsVerified":Z
    invoke-virtual {v7}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v11

    #@9
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v10

    #@d
    .local v10, "se$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v11

    #@11
    if-eqz v11, :cond_2

    #@13
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v9

    #@17
    check-cast v9, Ljava/util/Map$Entry;

    #@19
    .line 334
    .local v9, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v11

    #@1d
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    .line 336
    .local v6, "key":Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@23
    invoke-virtual {v6, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@26
    move-result-object v11

    #@27
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    #@29
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2c
    move-result v11

    #@2d
    if-eqz v11, :cond_0

    #@2f
    .line 338
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@32
    move-result v11

    #@33
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    #@35
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@38
    move-result v12

    #@39
    sub-int/2addr v11, v12

    #@3a
    const/4 v12, 0x0

    #@3b
    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 340
    .local v1, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v1}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@42
    move-result-object v4

    #@43
    .line 341
    .local v4, "digest":Ljava/security/MessageDigest;
    if-eqz v4, :cond_0

    #@45
    .line 343
    const-string/jumbo v11, "Manifest-Main-Attributes"

    #@48
    const/4 v12, 0x0

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v11, v12}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    #@4e
    move-result-object v8

    #@4f
    .line 344
    .local v8, "mde":Lsun/security/util/ManifestDigester$Entry;
    invoke-virtual {v8, v4}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    #@52
    move-result-object v3

    #@53
    .line 346
    .local v3, "computedHash":[B
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@56
    move-result-object v11

    #@57
    check-cast v11, Ljava/lang/String;

    #@59
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {v0, v11}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@5e
    move-result-object v5

    #@5f
    .line 348
    .local v5, "expectedHash":[B
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@61
    if-eqz v11, :cond_1

    #@63
    .line 349
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@65
    new-instance v12, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v13, "Signature File: Manifest Main Attributes digest "

    #@6d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    .line 351
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@74
    move-result-object v13

    #@75
    .line 349
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@80
    .line 352
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@82
    new-instance v12, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v13, "  sigfile  "

    #@8a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v12

    #@8e
    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v12

    #@9a
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@9d
    .line 353
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@9f
    new-instance v12, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v13, "  computed "

    #@a7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v12

    #@ab
    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@ae
    move-result-object v13

    #@af
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v12

    #@b3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v12

    #@b7
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ba
    .line 354
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@bc
    invoke-virtual {v11}, Lsun/security/util/Debug;->println()V

    #@bf
    .line 357
    :cond_1
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@c2
    move-result v11

    #@c3
    if-nez v11, :cond_0

    #@c5
    .line 362
    const/4 v2, 0x0

    #@c6
    .line 363
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@c8
    if-eqz v11, :cond_2

    #@ca
    .line 364
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@cc
    const-string/jumbo v12, "Verification of Manifest main attributes failed"

    #@cf
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@d2
    .line 366
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@d4
    invoke-virtual {v11}, Lsun/security/util/Debug;->println()V

    #@d7
    .line 377
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "computedHash":[B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "expectedHash":[B
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "mde":Lsun/security/util/ManifestDigester$Entry;
    .end local v9    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    return v2
.end method

.method private verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z
    .locals 15
    .param p1, "sfAttr"    # Ljava/util/jar/Attributes;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "md"    # Lsun/security/util/ManifestDigester;
    .param p4, "decoder"    # Lsun/misc/BASE64Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    const/4 v9, 0x0

    #@1
    .line 396
    .local v9, "oneDigestVerified":Z
    iget-object v12, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    #@3
    invoke-virtual {v12}, Lsun/security/pkcs/PKCS7;->isOldStyle()Z

    #@6
    move-result v12

    #@7
    move-object/from16 v0, p3

    #@9
    move-object/from16 v1, p2

    #@b
    invoke-virtual {v0, v1, v12}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    #@e
    move-result-object v7

    #@f
    .line 398
    .local v7, "mde":Lsun/security/util/ManifestDigester$Entry;
    if-nez v7, :cond_0

    #@11
    .line 399
    new-instance v12, Ljava/lang/SecurityException;

    #@13
    .line 400
    new-instance v13, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v14, "no manifiest section for signature file entry "

    #@1b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v13

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v13

    #@25
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v13

    #@29
    .line 399
    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v12

    #@2d
    .line 403
    :cond_0
    if-eqz p1, :cond_7

    #@2f
    .line 409
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@32
    move-result-object v12

    #@33
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v11

    #@37
    .local v11, "se$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v12

    #@3b
    if-eqz v12, :cond_7

    #@3d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v10

    #@41
    check-cast v10, Ljava/util/Map$Entry;

    #@43
    .line 410
    .local v10, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 412
    .local v6, "key":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4d
    invoke-virtual {v6, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@50
    move-result-object v12

    #@51
    const-string/jumbo v13, "-DIGEST"

    #@54
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@57
    move-result v12

    #@58
    if-eqz v12, :cond_1

    #@5a
    .line 414
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5d
    move-result v12

    #@5e
    add-int/lit8 v12, v12, -0x7

    #@60
    const/4 v13, 0x0

    #@61
    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 416
    .local v2, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v2}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@68
    move-result-object v4

    #@69
    .line 418
    .local v4, "digest":Ljava/security/MessageDigest;
    if-eqz v4, :cond_1

    #@6b
    .line 419
    const/4 v8, 0x0

    #@6c
    .line 422
    .local v8, "ok":Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6f
    move-result-object v12

    #@70
    check-cast v12, Ljava/lang/String;

    #@72
    move-object/from16 v0, p4

    #@74
    invoke-virtual {v0, v12}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@77
    move-result-object v5

    #@78
    .line 424
    .local v5, "expected":[B
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    #@7a
    if-eqz v12, :cond_4

    #@7c
    .line 425
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    #@7f
    move-result-object v3

    #@80
    .line 430
    .local v3, "computed":[B
    :goto_0
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@82
    if-eqz v12, :cond_2

    #@84
    .line 431
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@86
    new-instance v13, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v14, "Signature Block File: "

    #@8e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v13

    #@92
    move-object/from16 v0, p2

    #@94
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v13

    #@98
    .line 432
    const-string/jumbo v14, " digest="

    #@9b
    .line 431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v13

    #@9f
    .line 432
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@a2
    move-result-object v14

    #@a3
    .line 431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v13

    #@a7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v13

    #@ab
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ae
    .line 433
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@b0
    new-instance v13, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v14, "  expected "

    #@b8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v13

    #@bc
    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v13

    #@c4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v13

    #@c8
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@cb
    .line 434
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@cd
    new-instance v13, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v14, "  computed "

    #@d5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v13

    #@d9
    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@dc
    move-result-object v14

    #@dd
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v13

    #@e1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v13

    #@e5
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@e8
    .line 435
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@ea
    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    #@ed
    .line 438
    :cond_2
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@f0
    move-result v12

    #@f1
    if-eqz v12, :cond_5

    #@f3
    .line 439
    const/4 v9, 0x1

    #@f4
    .line 440
    const/4 v8, 0x1

    #@f5
    .line 456
    :cond_3
    :goto_1
    if-nez v8, :cond_1

    #@f7
    .line 457
    new-instance v12, Ljava/lang/SecurityException;

    #@f9
    new-instance v13, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v14, "invalid "

    #@101
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v13

    #@105
    .line 458
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@108
    move-result-object v14

    #@109
    .line 457
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v13

    #@10d
    .line 459
    const-string/jumbo v14, " signature file digest for "

    #@110
    .line 457
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v13

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v13

    #@11a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v13

    #@11e
    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@121
    throw v12

    #@122
    .line 427
    .end local v3    # "computed":[B
    :cond_4
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    #@125
    move-result-object v3

    #@126
    .restart local v3    # "computed":[B
    goto/16 :goto_0

    #@128
    .line 443
    :cond_5
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    #@12a
    if-nez v12, :cond_3

    #@12c
    .line 444
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    #@12f
    move-result-object v3

    #@130
    .line 445
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@133
    move-result v12

    #@134
    if-eqz v12, :cond_3

    #@136
    .line 446
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@138
    if-eqz v12, :cond_6

    #@13a
    .line 447
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@13c
    new-instance v13, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v14, "  re-computed "

    #@144
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v13

    #@148
    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    #@14b
    move-result-object v14

    #@14c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v13

    #@150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v13

    #@154
    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@157
    .line 448
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@159
    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    #@15c
    .line 450
    :cond_6
    const/4 v12, 0x1

    #@15d
    iput-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    #@15f
    .line 451
    const/4 v9, 0x1

    #@160
    .line 452
    const/4 v8, 0x1

    #@161
    goto :goto_1

    #@162
    .line 465
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "computed":[B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "expected":[B
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "ok":Z
    .end local v10    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "se$iterator":Ljava/util/Iterator;
    :cond_7
    return v9
.end method

.method private verifyTimestamp(Lsun/security/timestamp/TimestampToken;[B)V
    .locals 4
    .param p1, "token"    # Lsun/security/timestamp/TimestampToken;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@b
    move-result-object v0

    #@c
    .line 572
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashedMessage()[B

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    #@13
    move-result-object v2

    #@14
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 573
    new-instance v1, Ljava/security/SignatureException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Signature timestamp (#"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 574
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    #@2b
    move-result-object v3

    #@2c
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 574
    const-string/jumbo v3, ") generated on "

    #@33
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 574
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    #@3a
    move-result-object v3

    #@3b
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 575
    const-string/jumbo v3, " is inapplicable"

    #@42
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    .line 578
    :cond_0
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@50
    if-eqz v1, :cond_1

    #@52
    .line 579
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@54
    invoke-virtual {v1}, Lsun/security/util/Debug;->println()V

    #@57
    .line 580
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "Detected signature timestamp (#"

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    .line 581
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    #@68
    move-result-object v3

    #@69
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 581
    const-string/jumbo v3, ") generated on "

    #@70
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    .line 581
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    #@77
    move-result-object v3

    #@78
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@83
    .line 582
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    #@85
    invoke-virtual {v1}, Lsun/security/util/Debug;->println()V

    #@88
    .line 567
    :cond_1
    return-void
.end method


# virtual methods
.method public needSignatureFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public needSignatureFileBytes()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public process(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 2
    .param p2, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v0, 0x0

    #@1
    .line 192
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 193
    invoke-direct {p0, p1, p2}, Lsun/security/util/SignatureFileVerifier;->processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 195
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@b
    .line 186
    return-void

    #@c
    .line 194
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@d
    .line 195
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@10
    .line 194
    throw v1
.end method

.method public setSignatureFile([B)V
    .locals 0
    .param p1, "sfBytes"    # [B

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    #@2
    .line 133
    return-void
.end method

.method updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 6
    .param p1, "newSigners"    # [Ljava/security/CodeSigner;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/CodeSigner;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v5, 0x0

    #@1
    .line 670
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, [Ljava/security/CodeSigner;

    #@7
    .line 677
    .local v2, "oldSigners":[Ljava/security/CodeSigner;
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    add-int/lit8 v1, v3, -0x1

    #@f
    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    #@10
    if-eq v1, v3, :cond_1

    #@12
    .line 678
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Ljava/security/CodeSigner;

    #@1a
    .line 679
    .local v0, "cachedSigners":[Ljava/security/CodeSigner;
    invoke-static {v0, v2, p1}, Lsun/security/util/SignatureFileVerifier;->matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 680
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 681
    return-void

    #@24
    .line 677
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 685
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_1
    if-nez v2, :cond_2

    #@29
    .line 686
    move-object v0, p1

    #@2a
    .line 695
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :goto_1
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 696
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 668
    return-void

    #@33
    .line 689
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_2
    array-length v3, v2

    #@34
    array-length v4, p1

    #@35
    add-int/2addr v3, v4

    #@36
    new-array v0, v3, [Ljava/security/CodeSigner;

    #@38
    .line 691
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    array-length v3, v2

    #@39
    .line 690
    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 692
    array-length v3, v2

    #@3d
    .line 693
    array-length v4, p1

    #@3e
    .line 692
    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41
    goto :goto_1
.end method
