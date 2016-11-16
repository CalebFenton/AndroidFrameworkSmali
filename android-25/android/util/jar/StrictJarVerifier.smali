.class Landroid/util/jar/StrictJarVerifier;
.super Ljava/lang/Object;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field private final mainAttributesEnd:I

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatureSchemeRollbackProtectionsEnforced:Z

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 66
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 67
    const-string/jumbo v1, "SHA-512"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 68
    const-string/jumbo v1, "SHA-384"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 69
    const-string/jumbo v1, "SHA-256"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 70
    const-string/jumbo v1, "SHA1"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 66
    sput-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@1d
    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p4, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v1, 0x5

    #@1
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 80
    new-instance v0, Ljava/util/Hashtable;

    #@6
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@9
    .line 79
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    #@b
    .line 83
    new-instance v0, Ljava/util/Hashtable;

    #@d
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@10
    .line 82
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    #@12
    .line 86
    new-instance v0, Ljava/util/Hashtable;

    #@14
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@17
    .line 85
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@19
    .line 177
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    #@1b
    .line 178
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    #@1d
    .line 179
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@1f
    .line 180
    invoke-virtual {p2}, Landroid/util/jar/StrictJarManifest;->getMainAttributesEnd()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    #@25
    .line 181
    iput-boolean p4, p0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    #@27
    .line 176
    return-void
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/SecurityException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " failed verification of "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 161
    new-instance v0, Ljava/lang/SecurityException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " failed verification of "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v0
.end method

.method private static invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    new-instance v0, Ljava/lang/SecurityException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " has invalid digest for "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 152
    const-string/jumbo v2, " in "

    #@19
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 9
    .param p1, "attributes"    # Ljava/util/jar/Attributes;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "ignoreSecondEndline"    # Z
    .param p7, "ignorable"    # Z

    #@0
    .prologue
    .line 474
    const/4 v5, 0x0

    #@1
    .local v5, "i":I
    :goto_0
    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@3
    array-length v7, v7

    #@4
    if-ge v5, v7, :cond_2

    #@6
    .line 475
    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@8
    aget-object v0, v7, v5

    #@a
    .line 476
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {p1, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 477
    .local v3, "hash":Ljava/lang/String;
    if-nez v3, :cond_0

    #@21
    .line 474
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_0

    #@24
    .line 483
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v6

    #@28
    .line 487
    .local v6, "md":Ljava/security/MessageDigest;
    if-eqz p6, :cond_1

    #@2a
    add-int/lit8 v7, p5, -0x1

    #@2c
    aget-byte v7, p3, v7

    #@2e
    const/16 v8, 0xa

    #@30
    if-ne v7, v8, :cond_1

    #@32
    add-int/lit8 v7, p5, -0x2

    #@34
    aget-byte v7, p3, v7

    #@36
    const/16 v8, 0xa

    #@38
    if-ne v7, v8, :cond_1

    #@3a
    .line 488
    add-int/lit8 v7, p5, -0x1

    #@3c
    sub-int/2addr v7, p4

    #@3d
    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    #@40
    .line 492
    :goto_2
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    #@43
    move-result-object v1

    #@44
    .line 493
    .local v1, "b":[B
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@46
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@49
    move-result-object v4

    #@4a
    .line 494
    .local v4, "hashBytes":[B
    invoke-static {v4}, Llibcore/io/Base64;->decode([B)[B

    #@4d
    move-result-object v7

    #@4e
    invoke-static {v1, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@51
    move-result v7

    #@52
    return v7

    #@53
    .line 484
    .end local v1    # "b":[B
    .end local v4    # "hashBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@54
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    #@55
    .line 490
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    sub-int v7, p5, p4

    #@57
    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    #@5a
    goto :goto_2

    #@5b
    .line 496
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    return p7
.end method

.method static verifyBytes([B[B)[Ljava/security/cert/Certificate;
    .locals 8
    .param p0, "blockBytes"    # [B
    .param p1, "sfBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    const/4 v2, 0x0

    #@1
    .line 311
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    .line 312
    new-instance v0, Lsun/security/pkcs/PKCS7;

    #@7
    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    #@a
    .line 313
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0, p1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    #@d
    move-result-object v5

    #@e
    .line 314
    .local v5, "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v5, :cond_0

    #@10
    array-length v6, v5

    #@11
    if-nez v6, :cond_1

    #@13
    .line 315
    :cond_0
    new-instance v6, Ljava/security/GeneralSecurityException;

    #@15
    .line 316
    const-string/jumbo v7, "Failed to verify signature: no verified SignerInfos"

    #@18
    .line 315
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 336
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v5    # "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    :catch_0
    move-exception v1

    #@1d
    .line 337
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/security/GeneralSecurityException;

    #@1f
    const-string/jumbo v7, "IO exception verifying jar cert"

    #@22
    invoke-direct {v6, v7, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 338
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@27
    .line 339
    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@2a
    .line 338
    throw v6

    #@2b
    .line 322
    .restart local v0    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v5    # "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    :cond_1
    const/4 v6, 0x0

    #@2c
    :try_start_2
    aget-object v4, v5, v6

    #@2e
    .line 324
    .local v4, "verifiedSignerInfo":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v4, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    #@31
    move-result-object v3

    #@32
    .line 325
    .local v3, "verifiedSignerCertChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_2

    #@34
    .line 327
    new-instance v6, Ljava/security/GeneralSecurityException;

    #@36
    .line 328
    const-string/jumbo v7, "Failed to find verified SignerInfo certificate chain"

    #@39
    .line 327
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v6

    #@3d
    .line 329
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 331
    new-instance v6, Ljava/security/GeneralSecurityException;

    #@45
    .line 332
    const-string/jumbo v7, "Verified SignerInfo certificate chain is emtpy"

    #@48
    .line 331
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v6

    #@4c
    .line 335
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@4f
    move-result v6

    #@50
    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    #@52
    .line 334
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@55
    move-result-object v6

    #@56
    check-cast v6, [Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    .line 339
    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    #@5b
    .line 334
    return-object v6
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 32
    .param p1, "certFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v6, 0x2e

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@c
    move-result v6

    #@d
    const/4 v7, 0x0

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v6, ".SF"

    #@1b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v28

    #@23
    .line 349
    .local v28, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@27
    move-object/from16 v0, v28

    #@29
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v27

    #@2d
    check-cast v27, [B

    #@2f
    .line 350
    .local v27, "sfBytes":[B
    if-nez v27, :cond_0

    #@31
    .line 351
    return-void

    #@32
    .line 354
    :cond_0
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@36
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@39
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, [B

    #@3f
    .line 356
    .local v5, "manifestBytes":[B
    if-nez v5, :cond_1

    #@41
    .line 357
    return-void

    #@42
    .line 360
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v26

    #@4c
    check-cast v26, [B

    #@4e
    .line 362
    .local v26, "sBlockBytes":[B
    :try_start_0
    invoke-static/range {v26 .. v27}, Landroid/util/jar/StrictJarVerifier;->verifyBytes([B[B)[Ljava/security/cert/Certificate;

    #@51
    move-result-object v29

    #@52
    .line 363
    .local v29, "signerCertChain":[Ljava/security/cert/Certificate;
    if-eqz v29, :cond_2

    #@54
    .line 364
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    #@58
    move-object/from16 v0, v28

    #@5a
    move-object/from16 v1, v29

    #@5c
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 371
    :cond_2
    new-instance v3, Ljava/util/jar/Attributes;

    #@61
    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    #@64
    .line 372
    .local v3, "attributes":Ljava/util/jar/Attributes;
    new-instance v19, Ljava/util/HashMap;

    #@66
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    #@69
    .line 374
    .local v19, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_1
    new-instance v24, Landroid/util/jar/StrictJarManifestReader;

    #@6b
    move-object/from16 v0, v24

    #@6d
    move-object/from16 v1, v27

    #@6f
    invoke-direct {v0, v1, v3}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    #@72
    .line 375
    .local v24, "im":Landroid/util/jar/StrictJarManifestReader;
    const/4 v2, 0x0

    #@73
    move-object/from16 v0, v24

    #@75
    move-object/from16 v1, v19

    #@77
    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7a
    .line 381
    move-object/from16 v0, p0

    #@7c
    iget-boolean v2, v0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    #@7e
    if-eqz v2, :cond_5

    #@80
    .line 384
    const-string/jumbo v2, "X-Android-APK-Signed"

    #@83
    .line 383
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v14

    #@87
    .line 385
    .local v14, "apkSignatureSchemeIdList":Ljava/lang/String;
    if-eqz v14, :cond_5

    #@89
    .line 390
    const/16 v31, 0x0

    #@8b
    .line 391
    .local v31, "v2SignatureGenerated":Z
    new-instance v30, Ljava/util/StringTokenizer;

    #@8d
    const-string/jumbo v2, ","

    #@90
    move-object/from16 v0, v30

    #@92
    invoke-direct {v0, v14, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 392
    .local v30, "tokenizer":Ljava/util/StringTokenizer;
    :cond_3
    :goto_0
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_4

    #@9b
    .line 393
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a2
    move-result-object v22

    #@a3
    .line 394
    .local v22, "idText":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    #@a6
    move-result v2

    #@a7
    if-nez v2, :cond_3

    #@a9
    .line 399
    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@ac
    move-result v21

    #@ad
    .line 403
    .local v21, "id":I
    const/4 v2, 0x2

    #@ae
    move/from16 v0, v21

    #@b0
    if-ne v0, v2, :cond_3

    #@b2
    .line 406
    const/16 v31, 0x1

    #@b4
    .line 411
    .end local v21    # "id":I
    .end local v22    # "idText":Ljava/lang/String;
    :cond_4
    if-eqz v31, :cond_5

    #@b6
    .line 412
    new-instance v2, Ljava/lang/SecurityException;

    #@b8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    move-object/from16 v0, v28

    #@bf
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    const-string/jumbo v7, " indicates "

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v7, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    #@ce
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    .line 413
    const-string/jumbo v7, " is signed using APK Signature Scheme v2, but no such signature was"

    #@d5
    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v6

    #@d9
    .line 414
    const-string/jumbo v7, " found. Signature stripped?"

    #@dc
    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v6

    #@e0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v6

    #@e4
    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e7
    throw v2

    #@e8
    .line 366
    .end local v3    # "attributes":Ljava/util/jar/Attributes;
    .end local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .end local v19    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v24    # "im":Landroid/util/jar/StrictJarManifestReader;
    .end local v29    # "signerCertChain":[Ljava/security/cert/Certificate;
    .end local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v31    # "v2SignatureGenerated":Z
    :catch_0
    move-exception v18

    #@e9
    .line 367
    .local v18, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    #@ed
    move-object/from16 v0, v28

    #@ef
    move-object/from16 v1, v18

    #@f1
    invoke-static {v2, v0, v1}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;

    #@f4
    move-result-object v2

    #@f5
    throw v2

    #@f6
    .line 376
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "attributes":Ljava/util/jar/Attributes;
    .restart local v19    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v29    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v17

    #@f7
    .line 377
    .local v17, "e":Ljava/io/IOException;
    return-void

    #@f8
    .line 400
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .restart local v22    # "idText":Ljava/lang/String;
    .restart local v24    # "im":Landroid/util/jar/StrictJarManifestReader;
    .restart local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v31    # "v2SignatureGenerated":Z
    :catch_2
    move-exception v23

    #@f9
    .local v23, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@fa
    .line 420
    .end local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .end local v22    # "idText":Ljava/lang/String;
    .end local v23    # "ignored":Ljava/lang/Exception;
    .end local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v31    # "v2SignatureGenerated":Z
    :cond_5
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@fc
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    move-result-object v2

    #@100
    if-nez v2, :cond_6

    #@102
    .line 421
    return-void

    #@103
    .line 424
    :cond_6
    const/4 v12, 0x0

    #@104
    .line 425
    .local v12, "createdBySigntool":Z
    const-string/jumbo v2, "Created-By"

    #@107
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@10a
    move-result-object v16

    #@10b
    .line 426
    .local v16, "createdBy":Ljava/lang/String;
    if-eqz v16, :cond_7

    #@10d
    .line 427
    const-string/jumbo v2, "signtool"

    #@110
    move-object/from16 v0, v16

    #@112
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@115
    move-result v2

    #@116
    const/4 v6, -0x1

    #@117
    if-eq v2, v6, :cond_a

    #@119
    const/4 v12, 0x1

    #@11a
    .line 434
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    #@11c
    iget v2, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    #@11e
    if-lez v2, :cond_8

    #@120
    if-eqz v12, :cond_b

    #@122
    .line 442
    :cond_8
    if-eqz v12, :cond_c

    #@124
    const-string/jumbo v4, "-Digest"

    #@127
    .line 443
    .local v4, "digestAttribute":Ljava/lang/String;
    :goto_2
    array-length v7, v5

    #@128
    const/4 v6, 0x0

    #@129
    const/4 v8, 0x0

    #@12a
    const/4 v9, 0x0

    #@12b
    move-object/from16 v2, p0

    #@12d
    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@130
    move-result v2

    #@131
    if-nez v2, :cond_e

    #@133
    .line 444
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@136
    move-result-object v2

    #@137
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13a
    move-result-object v25

    #@13b
    .line 445
    .local v25, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@13e
    move-result v2

    #@13f
    if-eqz v2, :cond_e

    #@141
    .line 446
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@144
    move-result-object v20

    #@145
    check-cast v20, Ljava/util/Map$Entry;

    #@147
    .line 447
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    #@149
    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    #@14b
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@14e
    move-result-object v2

    #@14f
    check-cast v2, Ljava/lang/String;

    #@151
    invoke-virtual {v6, v2}, Landroid/util/jar/StrictJarManifest;->getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;

    #@154
    move-result-object v15

    #@155
    .line 448
    .local v15, "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    if-nez v15, :cond_d

    #@157
    .line 449
    return-void

    #@158
    .line 427
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_a
    const/4 v12, 0x0

    #@159
    goto :goto_1

    #@15a
    .line 435
    :cond_b
    const-string/jumbo v4, "-Digest-Manifest-Main-Attributes"

    #@15d
    .line 436
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15f
    iget v7, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    #@161
    const/4 v6, 0x0

    #@162
    const/4 v8, 0x0

    #@163
    const/4 v9, 0x1

    #@164
    move-object/from16 v2, p0

    #@166
    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@169
    move-result v2

    #@16a
    if-nez v2, :cond_8

    #@16c
    .line 437
    move-object/from16 v0, p0

    #@16e
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    #@170
    move-object/from16 v0, v28

    #@172
    invoke-static {v2, v0}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@175
    move-result-object v2

    #@176
    throw v2

    #@177
    .line 442
    .end local v4    # "digestAttribute":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "-Digest-Manifest"

    #@17a
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    goto :goto_2

    #@17b
    .line 451
    .restart local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17e
    move-result-object v7

    #@17f
    check-cast v7, Ljava/util/jar/Attributes;

    #@181
    const-string/jumbo v8, "-Digest"

    #@184
    .line 452
    iget v10, v15, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    #@186
    iget v11, v15, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    #@188
    const/4 v13, 0x0

    #@189
    move-object/from16 v6, p0

    #@18b
    move-object v9, v5

    #@18c
    .line 451
    invoke-direct/range {v6 .. v13}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@18f
    move-result v2

    #@190
    if-nez v2, :cond_9

    #@192
    .line 453
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@195
    move-result-object v2

    #@196
    check-cast v2, Ljava/lang/String;

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    #@19c
    move-object/from16 v0, v28

    #@19e
    invoke-static {v0, v2, v6}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@1a1
    move-result-object v2

    #@1a2
    throw v2

    #@1a3
    .line 457
    .end local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_e
    move-object/from16 v0, p0

    #@1a5
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@1a7
    const/4 v6, 0x0

    #@1a8
    move-object/from16 v0, v28

    #@1aa
    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 458
    move-object/from16 v0, p0

    #@1af
    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    #@1b1
    move-object/from16 v0, v28

    #@1b3
    move-object/from16 v1, v19

    #@1b5
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b8
    .line 346
    return-void
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 262
    return-void
.end method

.method getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [[Ljava/security/cert/Certificate;

    #@8
    return-object v0
.end method

.method initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 202
    :cond_0
    const/4 v1, 0x0

    #@11
    return-object v1

    #@12
    .line 205
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarManifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@1b
    move-result-object v8

    #@1c
    .line 207
    .local v8, "attributes":Ljava/util/jar/Attributes;
    if-nez v8, :cond_2

    #@1e
    .line 208
    const/4 v1, 0x0

    #@1f
    return-object v1

    #@20
    .line 211
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    #@22
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 212
    .local v10, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    #@27
    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    #@29
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v16

    #@31
    .line 213
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_4

    #@37
    .line 214
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v11

    #@3b
    check-cast v11, Ljava/util/Map$Entry;

    #@3d
    .line 215
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v13

    #@41
    check-cast v13, Ljava/util/HashMap;

    #@43
    .line 216
    .local v13, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 218
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4e
    move-result-object v17

    #@4f
    check-cast v17, Ljava/lang/String;

    #@51
    .line 219
    .local v17, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    #@53
    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v9

    #@5b
    check-cast v9, [Ljava/security/cert/Certificate;

    #@5d
    .line 220
    .local v9, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v9, :cond_3

    #@5f
    .line 221
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_0

    #@63
    .line 227
    .end local v9    # "certChain":[Ljava/security/cert/Certificate;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v13    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v17    # "signatureFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_5

    #@69
    .line 228
    const/4 v1, 0x0

    #@6a
    return-object v1

    #@6b
    .line 230
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v1

    #@6f
    new-array v1, v1, [[Ljava/security/cert/Certificate;

    #@71
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@74
    move-result-object v5

    #@75
    check-cast v5, [[Ljava/security/cert/Certificate;

    #@77
    .line 232
    .local v5, "certChainsArray":[[Ljava/security/cert/Certificate;
    const/4 v14, 0x0

    #@78
    .local v14, "i":I
    :goto_1
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@7a
    array-length v1, v1

    #@7b
    if-ge v14, v1, :cond_7

    #@7d
    .line 233
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@7f
    aget-object v7, v1, v14

    #@81
    .line 234
    .local v7, "algorithm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    const-string/jumbo v2, "-Digest"

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v8, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v12

    #@99
    .line 235
    .local v12, "hash":Ljava/lang/String;
    if-nez v12, :cond_6

    #@9b
    .line 232
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 238
    :cond_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@a0
    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@a3
    move-result-object v4

    #@a4
    .line 241
    .local v4, "hashBytes":[B
    :try_start_0
    new-instance v1, Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@a6
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a9
    move-result-object v3

    #@aa
    .line 242
    move-object/from16 v0, p0

    #@ac
    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@ae
    move-object/from16 v2, p1

    #@b0
    .line 241
    invoke-direct/range {v1 .. v6}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b3
    return-object v1

    #@b4
    .line 246
    .end local v4    # "hashBytes":[B
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v12    # "hash":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@b5
    return-object v1

    #@b6
    .line 243
    .restart local v4    # "hashBytes":[B
    .restart local v7    # "algorithm":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v15

    #@b7
    .local v15, "ignored":Ljava/security/NoSuchAlgorithmException;
    goto :goto_2
.end method

.method isSignedJar()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 469
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method declared-synchronized readCertificates()Z
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 285
    const/4 v2, 0x0

    #@a
    monitor-exit p0

    #@b
    return v2

    #@c
    .line 288
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@e
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    .line 289
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 291
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, ".DSA"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_2

    #@2b
    const-string/jumbo v2, ".RSA"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_2

    #@34
    const-string/jumbo v2, ".EC"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 292
    :cond_2
    invoke-direct {p0, v1}, Landroid/util/jar/StrictJarVerifier;->verifyCertificate(Ljava/lang/String;)V

    #@40
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit p0

    #@46
    throw v2

    #@47
    .line 296
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x1

    #@48
    monitor-exit p0

    #@49
    return v2
.end method

.method removeMetaEntries()V
    .locals 1

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 516
    return-void
.end method
