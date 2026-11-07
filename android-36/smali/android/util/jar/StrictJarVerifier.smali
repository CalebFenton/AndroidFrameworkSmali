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
.field private static final blacklist DIGEST_ALGORITHMS:[Ljava/lang/String;

.field private static final blacklist MAX_JAR_SIGNERS:I = 0xa

.field private static final blacklist SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"


# instance fields
.field private final blacklist certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist jarName:Ljava/lang/String;

.field private final blacklist mainAttributesEnd:I

.field private final blacklist manifest:Landroid/util/jar/StrictJarManifest;

.field private final blacklist metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist signatureSchemeRollbackProtectionsEnforced:Z

.field private final blacklist signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminvalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifyMessageDigest([B[B)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 74
    const-string v0, "SHA-256"

    const-string v1, "SHA1"

    const-string v2, "SHA-512"

    const-string v3, "SHA-384"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p4, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;Z)V"
        }
    .end annotation

    .line 189
    .local p3, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 190
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 192
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 193
    invoke-virtual {p2}, Landroid/util/jar/StrictJarManifest;->getMainAttributesEnd()I

    move-result v0

    iput v0, p0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    .line 194
    iput-boolean p4, p0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    .line 196
    return-void
.end method

.method private static blacklist failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 5
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;
    .registers 6
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 174
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 6
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .registers 15
    .param p1, "attributes"    # Ljava/util/jar/Attributes;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "ignoreSecondEndline"    # Z
    .param p7, "ignorable"    # Z

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_57

    .line 505
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 506
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "hash":Ljava/lang/String;
    if-nez v2, :cond_22

    .line 508
    goto :goto_54

    .line 513
    :cond_22
    :try_start_22
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_26} :catch_52

    .line 516
    .local v3, "md":Ljava/security/MessageDigest;
    nop

    .line 517
    if-eqz p6, :cond_3e

    add-int/lit8 v4, p5, -0x1

    aget-byte v4, p3, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, p5, -0x2

    aget-byte v4, p3, v4

    if-ne v4, v5, :cond_3e

    .line 518
    add-int/lit8 v4, p5, -0x1

    sub-int/2addr v4, p4

    invoke-virtual {v3, p3, p4, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_43

    .line 520
    :cond_3e
    sub-int v4, p5, p4

    invoke-virtual {v3, p3, p4, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 522
    :goto_43
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 523
    .local v4, "b":[B
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 524
    .local v5, "encodedHashBytes":[B
    invoke-static {v4, v5}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v6

    return v6

    .line 514
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "b":[B
    .end local v5    # "encodedHashBytes":[B
    :catch_52
    move-exception v3

    .line 515
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 504
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    .end local v0    # "i":I
    :cond_57
    return p7
.end method

.method static blacklist verifyBytes([B[B)[Ljava/security/cert/Certificate;
    .registers 9
    .param p0, "blockBytes"    # [B
    .param p1, "sfBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    .line 330
    .local v0, "obj":Ljava/lang/Object;
    :try_start_1
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 331
    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-direct {v1, p0}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 332
    .local v1, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v1, p1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 333
    .local v2, "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v2, :cond_45

    array-length v3, v2

    if-eqz v3, :cond_45

    .line 341
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 342
    .local v3, "verifiedSignerInfo":Lsun/security/pkcs/SignerInfo;
    nop

    .line 343
    invoke-virtual {v3, v1}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v4

    .line 344
    .local v4, "verifiedSignerCertChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_3d

    .line 348
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    .line 353
    nop

    .line 354
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 353
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/Certificate;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_31} :catch_4f
    .catchall {:try_start_1 .. :try_end_31} :catchall_4d

    .line 358
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 353
    return-object v5

    .line 350
    :cond_35
    :try_start_35
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Verified SignerInfo certificate chain is emtpy"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local p0    # "blockBytes":[B
    .end local p1    # "sfBytes":[B
    throw v5

    .line 346
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local p0    # "blockBytes":[B
    .restart local p1    # "sfBytes":[B
    :cond_3d
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Failed to find verified SignerInfo certificate chain"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local p0    # "blockBytes":[B
    .end local p1    # "sfBytes":[B
    throw v5

    .line 334
    .end local v3    # "verifiedSignerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v4    # "verifiedSignerCertChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local p0    # "blockBytes":[B
    .restart local p1    # "sfBytes":[B
    :cond_45
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "Failed to verify signature: no verified SignerInfos"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local p0    # "blockBytes":[B
    .end local p1    # "sfBytes":[B
    throw v3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4d} :catch_4f
    .catchall {:try_start_35 .. :try_end_4d} :catchall_4d

    .line 358
    .end local v1    # "block":Lsun/security/pkcs/PKCS7;
    .end local v2    # "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local p0    # "blockBytes":[B
    .restart local p1    # "sfBytes":[B
    :catchall_4d
    move-exception v1

    goto :goto_58

    .line 355
    :catch_4f
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    :try_start_50
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "IO exception verifying jar cert"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local p0    # "blockBytes":[B
    .end local p1    # "sfBytes":[B
    throw v2
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 358
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local p0    # "blockBytes":[B
    .restart local p1    # "sfBytes":[B
    :goto_58
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 359
    throw v1
.end method

.method private blacklist verifyCertificate(Ljava/lang/String;)V
    .registers 23
    .param p1, "certFile"    # Ljava/lang/String;

    .line 367
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".SF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, "signatureFile":Ljava/lang/String;
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [B

    .line 369
    .local v11, "sfBytes":[B
    if-nez v11, :cond_2e

    .line 370
    return-void

    .line 373
    :cond_2e
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B

    .line 375
    .local v4, "manifestBytes":[B
    if-nez v4, :cond_3c

    .line 376
    return-void

    .line 379
    :cond_3c
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [B

    .line 381
    .local v12, "sBlockBytes":[B
    :try_start_45
    invoke-static {v12, v11}, Landroid/util/jar/StrictJarVerifier;->verifyBytes([B[B)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 382
    .local v0, "signerCertChain":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_50

    .line 383
    iget-object v2, v1, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v2, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/security/GeneralSecurityException; {:try_start_45 .. :try_end_50} :catch_1a3

    .line 387
    .end local v0    # "signerCertChain":[Ljava/security/cert/Certificate;
    :cond_50
    nop

    .line 390
    new-instance v2, Ljava/util/jar/Attributes;

    invoke-direct {v2}, Ljava/util/jar/Attributes;-><init>()V

    .line 391
    .local v2, "attributes":Ljava/util/jar/Attributes;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 393
    .local v13, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_5c
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    invoke-direct {v0, v11, v2}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 394
    .local v0, "im":Landroid/util/jar/StrictJarManifestReader;
    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_19f

    .line 397
    .end local v0    # "im":Landroid/util/jar/StrictJarManifestReader;
    nop

    .line 400
    iget-boolean v0, v1, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    if-eqz v0, :cond_f3

    .line 401
    nop

    .line 402
    const-string v0, "X-Android-APK-Signed"

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "apkSignatureSchemeIdList":Ljava/lang/String;
    if-eqz v5, :cond_f3

    .line 408
    const/4 v6, 0x0

    .line 409
    .local v6, "v2SignatureGenerated":Z
    const/4 v7, 0x0

    .line 410
    .local v7, "v3SignatureGenerated":Z
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v0, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    .line 411
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    :goto_7d
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 412
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 413
    .local v15, "idText":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 414
    goto :goto_7d

    .line 418
    :cond_92
    :try_start_92
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_96} :catch_a3

    .line 421
    .local v0, "id":I
    nop

    .line 422
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9c

    .line 425
    const/4 v6, 0x1

    .line 426
    goto :goto_a6

    .line 428
    :cond_9c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a1

    .line 431
    const/4 v7, 0x1

    .line 432
    goto :goto_a6

    .line 434
    .end local v0    # "id":I
    .end local v15    # "idText":Ljava/lang/String;
    :cond_a1
    const/4 v3, 0x0

    goto :goto_7d

    .line 419
    .restart local v15    # "idText":Ljava/lang/String;
    :catch_a3
    move-exception v0

    .line 420
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_7d

    .line 436
    .end local v0    # "ignored":Ljava/lang/Exception;
    .end local v15    # "idText":Ljava/lang/String;
    :cond_a6
    :goto_a6
    const-string v0, " indicates "

    if-nez v6, :cond_d0

    .line 441
    if-nez v7, :cond_ad

    goto :goto_f3

    .line 442
    :cond_ad
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v1, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " is signed using APK Signature Scheme v3, but no such signature was found. Signature stripped?"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_d0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v1, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " is signed using APK Signature Scheme v2, but no such signature was found. Signature stripped?"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    .end local v5    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .end local v6    # "v2SignatureGenerated":Z
    .end local v7    # "v3SignatureGenerated":Z
    .end local v8    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_f3
    :goto_f3
    sget-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_fc

    .line 451
    return-void

    .line 454
    :cond_fc
    const/4 v0, 0x0

    .line 455
    .local v0, "createdBySigntool":Z
    const-string v3, "Created-By"

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 456
    .local v15, "createdBy":Ljava/lang/String;
    if-eqz v15, :cond_113

    .line 457
    const-string/jumbo v3, "signtool"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_111

    const/4 v3, 0x1

    goto :goto_112

    :cond_111
    const/4 v3, 0x0

    :goto_112
    move v0, v3

    .line 464
    :cond_113
    iget v3, v1, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    if-lez v3, :cond_12e

    if-nez v0, :cond_12e

    .line 465
    const-string v3, "-Digest-Manifest-Main-Attributes"

    .line 466
    .local v3, "digestAttribute":Ljava/lang/String;
    iget v6, v1, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v5

    if-eqz v5, :cond_127

    goto :goto_12e

    .line 467
    :cond_127
    iget-object v5, v1, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v5

    throw v5

    .line 472
    .end local v3    # "digestAttribute":Ljava/lang/String;
    :cond_12e
    :goto_12e
    if-eqz v0, :cond_133

    const-string v3, "-Digest"

    goto :goto_135

    :cond_133
    const-string v3, "-Digest-Manifest"

    .line 473
    .restart local v3    # "digestAttribute":Ljava/lang/String;
    :goto_135
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "attributes":Ljava/util/jar/Attributes;
    .end local v3    # "digestAttribute":Ljava/lang/String;
    .local v16, "attributes":Ljava/util/jar/Attributes;
    .local v17, "digestAttribute":Ljava/lang/String;
    if-nez v5, :cond_193

    .line 474
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 475
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :goto_14b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 476
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/util/Map$Entry;

    .line 477
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    iget-object v2, v1, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/jar/StrictJarManifest;->getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;

    move-result-object v2

    .line 478
    .local v2, "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    if-nez v2, :cond_168

    .line 479
    return-void

    .line 481
    :cond_168
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Attributes;

    iget v5, v2, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    iget v6, v2, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    const/4 v8, 0x0

    move-object v7, v2

    move-object v2, v3

    .end local v2    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .local v7, "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    const-string v3, "-Digest"

    move-object/from16 v20, v7

    move v7, v0

    move-object/from16 v0, v20

    .local v0, "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .local v7, "createdBySigntool":Z
    invoke-direct/range {v1 .. v8}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 485
    .end local v0    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move v0, v7

    goto :goto_14b

    .line 483
    .restart local v0    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :cond_184
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v10, v2, v3}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 475
    .end local v7    # "createdBySigntool":Z
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local v0, "createdBySigntool":Z
    :cond_191
    move v7, v0

    .end local v0    # "createdBySigntool":Z
    .restart local v7    # "createdBySigntool":Z
    goto :goto_194

    .line 473
    .end local v7    # "createdBySigntool":Z
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .restart local v0    # "createdBySigntool":Z
    :cond_193
    move v7, v0

    .line 487
    .end local v0    # "createdBySigntool":Z
    .restart local v7    # "createdBySigntool":Z
    :goto_194
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v0, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void

    .line 395
    .end local v7    # "createdBySigntool":Z
    .end local v15    # "createdBy":Ljava/lang/String;
    .end local v16    # "attributes":Ljava/util/jar/Attributes;
    .end local v17    # "digestAttribute":Ljava/lang/String;
    .local v2, "attributes":Ljava/util/jar/Attributes;
    :catch_19f
    move-exception v0

    move-object/from16 v16, v2

    .line 396
    .end local v2    # "attributes":Ljava/util/jar/Attributes;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "attributes":Ljava/util/jar/Attributes;
    return-void

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v16    # "attributes":Ljava/util/jar/Attributes;
    :catch_1a3
    move-exception v0

    .line 386
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iget-object v2, v1, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v2, v10, v0}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist verifyMessageDigest([B[B)Z
    .registers 4
    .param p0, "expected"    # [B
    .param p1, "encodedActual"    # [B

    .line 532
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_e

    .line 535
    .local v0, "actual":[B
    nop

    .line 536
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    return v1

    .line 533
    .end local v0    # "actual":[B
    :catch_e
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method blacklist addMetaEntry(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .line 276
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method blacklist getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method blacklist initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v6, p1

    goto/16 :goto_ac

    .line 218
    :cond_10
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v0, p1}, Landroid/util/jar/StrictJarManifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v2

    .line 220
    .local v2, "attributes":Ljava/util/jar/Attributes;
    if-nez v2, :cond_19

    .line 221
    return-object v1

    .line 224
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 225
    .local v3, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/cert/Certificate;>;"
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 226
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 229
    .local v5, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 232
    .local v6, "signatureFile":Ljava/lang/String;
    iget-object v7, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/Certificate;

    .line 233
    .local v7, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v7, :cond_54

    .line 234
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v5    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v6    # "signatureFile":Ljava/lang/String;
    .end local v7    # "certChain":[Ljava/security/cert/Certificate;
    :cond_54
    goto :goto_29

    .line 240
    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 241
    return-object v1

    .line 243
    :cond_5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/Certificate;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [[Ljava/security/cert/Certificate;

    .line 245
    .local v9, "certChainsArray":[[Ljava/security/cert/Certificate;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_6b
    sget-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_aa

    .line 246
    sget-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v12, v0, v11

    .line 247
    .local v12, "algorithm":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-Digest"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 248
    .local v13, "hash":Ljava/lang/String;
    if-nez v13, :cond_8f

    .line 249
    move-object v6, p1

    goto :goto_a6

    .line 251
    :cond_8f
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 254
    .local v8, "hashBytes":[B
    :try_start_95
    new-instance v5, Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    iget-object v10, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;
    :try_end_9d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_95 .. :try_end_9d} :catch_a4

    move-object v6, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :try_start_9e
    invoke-direct/range {v5 .. v10}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_a1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9e .. :try_end_a1} :catch_a2

    return-object v5

    .line 256
    :catch_a2
    move-exception v0

    goto :goto_a6

    .end local v6    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_a4
    move-exception v0

    move-object v6, p1

    .line 245
    .end local v8    # "hashBytes":[B
    .end local v12    # "algorithm":Ljava/lang/String;
    .end local v13    # "hash":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :goto_a6
    add-int/lit8 v11, v11, 0x1

    move-object p1, v6

    goto :goto_6b

    .line 259
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "i":I
    .restart local p1    # "name":Ljava/lang/String;
    :cond_aa
    return-object v1

    .line 214
    .end local v2    # "attributes":Ljava/util/jar/Attributes;
    .end local v3    # "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/cert/Certificate;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    .end local v9    # "certChainsArray":[[Ljava/security/cert/Certificate;
    :cond_ab
    move-object v6, p1

    .line 215
    .end local p1    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :goto_ac
    return-object v1
.end method

.method blacklist isSignedJar()Z
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method declared-synchronized blacklist readCertificates()Z
    .registers 6

    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_53

    if-eqz v0, :cond_c

    .line 298
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 301
    :cond_c
    const/4 v0, 0x0

    .line 302
    .local v0, "signerCount":I
    :try_start_d
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, "key":Ljava/lang/String;
    const-string v3, ".DSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, ".RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, ".EC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 306
    .end local p0    # "this":Landroid/util/jar/StrictJarVerifier;
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-gt v0, v3, :cond_48

    .line 311
    invoke-direct {p0, v2}, Landroid/util/jar/StrictJarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 314
    .end local v2    # "key":Ljava/lang/String;
    :cond_47
    goto :goto_17

    .line 307
    .restart local v2    # "key":Ljava/lang/String;
    :cond_48
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "APK Signature Scheme v1 only supports a maximum of 10 signers"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_53

    .line 315
    .end local v2    # "key":Ljava/lang/String;
    :cond_50
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 296
    .end local v0    # "signerCount":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method blacklist removeMetaEntries()V
    .registers 2

    .line 557
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 558
    return-void
.end method
