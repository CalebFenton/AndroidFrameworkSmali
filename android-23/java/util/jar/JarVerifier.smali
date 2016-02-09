.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
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

.field private final manifest:Ljava/util/jar/Manifest;

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
    invoke-static {p0, p1, p2}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 57
    const-string/jumbo v1, "SHA-512"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 58
    const-string/jumbo v1, "SHA-384"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 59
    const-string/jumbo v1, "SHA-256"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 60
    const-string/jumbo v1, "SHA1"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 56
    sput-object v0, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@1d
    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v1, 0x5

    #@1
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 69
    new-instance v0, Ljava/util/Hashtable;

    #@6
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@9
    .line 68
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    #@b
    .line 72
    new-instance v0, Ljava/util/Hashtable;

    #@d
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@10
    .line 71
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    #@12
    .line 75
    new-instance v0, Ljava/util/Hashtable;

    #@14
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@17
    .line 74
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@19
    .line 155
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    #@1b
    .line 156
    iput-object p2, p0, Ljava/util/jar/JarVerifier;->manifest:Ljava/util/jar/Manifest;

    #@1d
    .line 157
    iput-object p3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@1f
    .line 158
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributesEnd()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    #@25
    .line 154
    return-void
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
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

.method private static invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
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
    .line 141
    const-string/jumbo v2, " in "

    #@19
    .line 140
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
    .line 371
    const/4 v5, 0x0

    #@1
    .local v5, "i":I
    :goto_0
    sget-object v7, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@3
    array-length v7, v7

    #@4
    if-ge v5, v7, :cond_2

    #@6
    .line 372
    sget-object v7, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@8
    aget-object v0, v7, v5

    #@a
    .line 373
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
    .line 374
    .local v3, "hash":Ljava/lang/String;
    if-nez v3, :cond_0

    #@21
    .line 371
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_0

    #@24
    .line 380
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v6

    #@28
    .line 384
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
    .line 385
    add-int/lit8 v7, p5, -0x1

    #@3c
    sub-int/2addr v7, p4

    #@3d
    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    #@40
    .line 389
    :goto_2
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    #@43
    move-result-object v1

    #@44
    .line 390
    .local v1, "b":[B
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@46
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@49
    move-result-object v4

    #@4a
    .line 391
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
    .line 381
    .end local v1    # "b":[B
    .end local v4    # "hashBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@54
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    #@55
    .line 387
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    sub-int v7, p5, p4

    #@57
    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    #@5a
    goto :goto_2

    #@5b
    .line 393
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    return p7
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 26
    .param p1, "certFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
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
    move-result-object v24

    #@23
    .line 281
    .local v24, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@27
    move-object/from16 v0, v24

    #@29
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v23

    #@2d
    check-cast v23, [B

    #@2f
    .line 282
    .local v23, "sfBytes":[B
    if-nez v23, :cond_0

    #@31
    .line 283
    return-void

    #@32
    .line 286
    :cond_0
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@36
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@39
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, [B

    #@3f
    .line 288
    .local v5, "manifestBytes":[B
    if-nez v5, :cond_1

    #@41
    .line 289
    return-void

    #@42
    .line 292
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v22

    #@4c
    check-cast v22, [B

    #@4e
    .line 295
    .local v22, "sBlockBytes":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@50
    move-object/from16 v0, v23

    #@52
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@55
    .line 296
    new-instance v6, Ljava/io/ByteArrayInputStream;

    #@57
    move-object/from16 v0, v22

    #@59
    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5c
    .line 294
    invoke-static {v2, v6}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    #@5f
    move-result-object v25

    #@60
    .line 297
    .local v25, "signerCertChain":[Ljava/security/cert/Certificate;
    if-eqz v25, :cond_2

    #@62
    .line 298
    move-object/from16 v0, p0

    #@64
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    #@66
    move-object/from16 v0, v24

    #@68
    move-object/from16 v1, v25

    #@6a
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 307
    :cond_2
    new-instance v3, Ljava/util/jar/Attributes;

    #@6f
    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    #@72
    .line 308
    .local v3, "attributes":Ljava/util/jar/Attributes;
    new-instance v18, Ljava/util/HashMap;

    #@74
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    #@77
    .line 310
    .local v18, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_1
    new-instance v20, Ljava/util/jar/ManifestReader;

    #@79
    move-object/from16 v0, v20

    #@7b
    move-object/from16 v1, v23

    #@7d
    invoke-direct {v0, v1, v3}, Ljava/util/jar/ManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    #@80
    .line 311
    .local v20, "im":Ljava/util/jar/ManifestReader;
    const/4 v2, 0x0

    #@81
    move-object/from16 v0, v20

    #@83
    move-object/from16 v1, v18

    #@85
    invoke-virtual {v0, v1, v2}, Ljava/util/jar/ManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@88
    .line 317
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@8a
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    if-nez v2, :cond_3

    #@90
    .line 318
    return-void

    #@91
    .line 302
    .end local v3    # "attributes":Ljava/util/jar/Attributes;
    .end local v18    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v20    # "im":Ljava/util/jar/ManifestReader;
    .end local v25    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v17

    #@92
    .line 303
    .local v17, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    #@94
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    #@96
    move-object/from16 v0, v24

    #@98
    invoke-static {v2, v0}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@9b
    move-result-object v2

    #@9c
    throw v2

    #@9d
    .line 300
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v16

    #@9e
    .line 301
    .local v16, "e":Ljava/io/IOException;
    return-void

    #@9f
    .line 312
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v3    # "attributes":Ljava/util/jar/Attributes;
    .restart local v18    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v25    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_2
    move-exception v16

    #@a0
    .line 313
    .restart local v16    # "e":Ljava/io/IOException;
    return-void

    #@a1
    .line 321
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v20    # "im":Ljava/util/jar/ManifestReader;
    :cond_3
    const/4 v12, 0x0

    #@a2
    .line 322
    .local v12, "createdBySigntool":Z
    const-string/jumbo v2, "Created-By"

    #@a5
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@a8
    move-result-object v15

    #@a9
    .line 323
    .local v15, "createdBy":Ljava/lang/String;
    if-eqz v15, :cond_4

    #@ab
    .line 324
    const-string/jumbo v2, "signtool"

    #@ae
    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b1
    move-result v2

    #@b2
    const/4 v6, -0x1

    #@b3
    if-eq v2, v6, :cond_7

    #@b5
    const/4 v12, 0x1

    #@b6
    .line 331
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    #@b8
    iget v2, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    #@ba
    if-lez v2, :cond_5

    #@bc
    if-eqz v12, :cond_8

    #@be
    .line 339
    :cond_5
    if-eqz v12, :cond_9

    #@c0
    const-string/jumbo v4, "-Digest"

    #@c3
    .line 340
    .local v4, "digestAttribute":Ljava/lang/String;
    :goto_1
    array-length v7, v5

    #@c4
    const/4 v6, 0x0

    #@c5
    const/4 v8, 0x0

    #@c6
    const/4 v9, 0x0

    #@c7
    move-object/from16 v2, p0

    #@c9
    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@cc
    move-result v2

    #@cd
    if-nez v2, :cond_b

    #@cf
    .line 341
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@d2
    move-result-object v2

    #@d3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d6
    move-result-object v21

    #@d7
    .line 342
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v2

    #@db
    if-eqz v2, :cond_b

    #@dd
    .line 343
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e0
    move-result-object v19

    #@e1
    check-cast v19, Ljava/util/Map$Entry;

    #@e3
    .line 344
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    #@e5
    iget-object v6, v0, Ljava/util/jar/JarVerifier;->manifest:Ljava/util/jar/Manifest;

    #@e7
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ea
    move-result-object v2

    #@eb
    check-cast v2, Ljava/lang/String;

    #@ed
    invoke-virtual {v6, v2}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;

    #@f0
    move-result-object v14

    #@f1
    .line 345
    .local v14, "chunk":Ljava/util/jar/Manifest$Chunk;
    if-nez v14, :cond_a

    #@f3
    .line 346
    return-void

    #@f4
    .line 324
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v14    # "chunk":Ljava/util/jar/Manifest$Chunk;
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_7
    const/4 v12, 0x0

    #@f5
    goto :goto_0

    #@f6
    .line 332
    :cond_8
    const-string/jumbo v4, "-Digest-Manifest-Main-Attributes"

    #@f9
    .line 333
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    move-object/from16 v0, p0

    #@fb
    iget v7, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    #@fd
    const/4 v6, 0x0

    #@fe
    const/4 v8, 0x0

    #@ff
    const/4 v9, 0x1

    #@100
    move-object/from16 v2, p0

    #@102
    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@105
    move-result v2

    #@106
    if-nez v2, :cond_5

    #@108
    .line 334
    move-object/from16 v0, p0

    #@10a
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    #@10c
    move-object/from16 v0, v24

    #@10e
    invoke-static {v2, v0}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@111
    move-result-object v2

    #@112
    throw v2

    #@113
    .line 339
    .end local v4    # "digestAttribute":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "-Digest-Manifest"

    #@116
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    goto :goto_1

    #@117
    .line 348
    .restart local v14    # "chunk":Ljava/util/jar/Manifest$Chunk;
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@11a
    move-result-object v7

    #@11b
    check-cast v7, Ljava/util/jar/Attributes;

    #@11d
    const-string/jumbo v8, "-Digest"

    #@120
    .line 349
    iget v10, v14, Ljava/util/jar/Manifest$Chunk;->start:I

    #@122
    iget v11, v14, Ljava/util/jar/Manifest$Chunk;->end:I

    #@124
    const/4 v13, 0x0

    #@125
    move-object/from16 v6, p0

    #@127
    move-object v9, v5

    #@128
    .line 348
    invoke-direct/range {v6 .. v13}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    #@12b
    move-result v2

    #@12c
    if-nez v2, :cond_6

    #@12e
    .line 350
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@131
    move-result-object v2

    #@132
    check-cast v2, Ljava/lang/String;

    #@134
    move-object/from16 v0, p0

    #@136
    iget-object v6, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    #@138
    move-object/from16 v0, v24

    #@13a
    invoke-static {v0, v2, v6}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@13d
    move-result-object v2

    #@13e
    throw v2

    #@13f
    .line 354
    .end local v14    # "chunk":Ljava/util/jar/Manifest$Chunk;
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_b
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@143
    const/4 v6, 0x0

    #@144
    move-object/from16 v0, v24

    #@146
    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    .line 355
    move-object/from16 v0, p0

    #@14b
    iget-object v2, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    #@14d
    move-object/from16 v0, v24

    #@14f
    move-object/from16 v1, v18

    #@151
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    .line 278
    return-void
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 238
    return-void
.end method

.method getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [[Ljava/security/cert/Certificate;

    #@8
    return-object v0
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Ljava/util/jar/JarVerifier;->manifest:Ljava/util/jar/Manifest;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 178
    :cond_0
    const/4 v1, 0x0

    #@11
    return-object v1

    #@12
    .line 181
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Ljava/util/jar/JarVerifier;->manifest:Ljava/util/jar/Manifest;

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v1, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@1b
    move-result-object v8

    #@1c
    .line 183
    .local v8, "attributes":Ljava/util/jar/Attributes;
    if-nez v8, :cond_2

    #@1e
    .line 184
    const/4 v1, 0x0

    #@1f
    return-object v1

    #@20
    .line 187
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    #@22
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 188
    .local v10, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    #@27
    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    #@29
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v16

    #@31
    .line 189
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_4

    #@37
    .line 190
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v11

    #@3b
    check-cast v11, Ljava/util/Map$Entry;

    #@3d
    .line 191
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v13

    #@41
    check-cast v13, Ljava/util/HashMap;

    #@43
    .line 192
    .local v13, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 194
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4e
    move-result-object v17

    #@4f
    check-cast v17, Ljava/lang/String;

    #@51
    .line 195
    .local v17, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    #@53
    iget-object v1, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v9

    #@5b
    check-cast v9, [Ljava/security/cert/Certificate;

    #@5d
    .line 196
    .local v9, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v9, :cond_3

    #@5f
    .line 197
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_0

    #@63
    .line 203
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
    .line 204
    const/4 v1, 0x0

    #@6a
    return-object v1

    #@6b
    .line 206
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
    .line 208
    .local v5, "certChainsArray":[[Ljava/security/cert/Certificate;
    const/4 v14, 0x0

    #@78
    .local v14, "i":I
    :goto_1
    sget-object v1, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@7a
    array-length v1, v1

    #@7b
    if-ge v14, v1, :cond_7

    #@7d
    .line 209
    sget-object v1, Ljava/util/jar/JarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    #@7f
    aget-object v7, v1, v14

    #@81
    .line 210
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
    .line 211
    .local v12, "hash":Ljava/lang/String;
    if-nez v12, :cond_6

    #@9b
    .line 208
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 214
    :cond_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@a0
    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@a3
    move-result-object v4

    #@a4
    .line 217
    .local v4, "hashBytes":[B
    :try_start_0
    new-instance v1, Ljava/util/jar/JarVerifier$VerifierEntry;

    #@a6
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a9
    move-result-object v3

    #@aa
    .line 218
    move-object/from16 v0, p0

    #@ac
    iget-object v6, v0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    #@ae
    move-object/from16 v2, p1

    #@b0
    .line 217
    invoke-direct/range {v1 .. v6}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b3
    return-object v1

    #@b4
    .line 222
    .end local v4    # "hashBytes":[B
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v12    # "hash":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@b5
    return-object v1

    #@b6
    .line 219
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
    .line 366
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

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
    .line 260
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 261
    const/4 v2, 0x0

    #@a
    monitor-exit p0

    #@b
    return v2

    #@c
    .line 264
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@e
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    .line 265
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 267
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
    .line 268
    :cond_2
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    #@40
    .line 269
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
    .line 272
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
    .line 414
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 413
    return-void
.end method
