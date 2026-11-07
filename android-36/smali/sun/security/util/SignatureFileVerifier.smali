.class public Lsun/security/util/SignatureFileVerifier;
.super Ljava/lang/Object;
.source "SignatureFileVerifier.java"


# static fields
.field private static final greylist-max-o ATTR_DIGEST:Ljava/lang/String;

.field private static final greylist-max-o DIGEST_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final greylist-max-o debug:Lsun/security/util/Debug;

.field private static final greylist-max-o hexc:[C


# instance fields
.field private greylist-max-o block:Lsun/security/pkcs/PKCS7;

.field private greylist-max-o certificateFactory:Ljava/security/cert/CertificateFactory;

.field private greylist-max-o createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o md:Lsun/security/util/ManifestDigester;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o sfBytes:[B

.field private greylist-max-o signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o workaround:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    .line 64
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 65
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 67
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string v1, "jdk.jar.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 73
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 75
    const-string v1, "-DIGEST-Manifest-Main-Attributes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    .line 575
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_32

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    return-void

    nop

    :array_32
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

.method public constructor blacklist <init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V
    .registers 8
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
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

    .line 112
    .local p1, "signerCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "obj":Ljava/lang/Object;
    :try_start_a
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 118
    new-instance v2, Lsun/security/pkcs/PKCS7;

    invoke-direct {v2, p4}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    .line 119
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v2}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 120
    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_45

    .line 122
    invoke-static {v1}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 123
    nop

    .line 124
    const-string v2, "."

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    .line 127
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    .line 128
    return-void

    .line 122
    :catchall_45
    move-exception v0

    invoke-static {v1}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 123
    throw v0
.end method

.method static greylist-max-o contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z
    .registers 4
    .param p0, "set"    # [Ljava/security/CodeSigner;
    .param p1, "signer"    # Ljava/security/CodeSigner;

    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 598
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/security/CodeSigner;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 599
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 228
    sget-object v0, Lsun/security/util/SignatureFileVerifier;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v1, Lsun/security/util/SignatureFileVerifier;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 235
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    if-nez v0, :cond_16

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    .line 238
    :cond_16
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 240
    .local v0, "digest":Ljava/security/MessageDigest;
    if-nez v0, :cond_2c

    .line 242
    :try_start_20
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v0, v1

    .line 243
    iget-object v1, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 246
    goto :goto_2c

    .line 244
    :catch_2b
    move-exception v1

    .line 248
    :cond_2c
    :goto_2c
    return-object v0

    .line 229
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_2d
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignatureFile check failed. Disabled algorithm used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "e":Ljava/security/SignatureException;
    throw v0
.end method

.method private greylist-max-o getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;
    .registers 11
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

    .line 548
    const/4 v0, 0x0

    .line 550
    .local v0, "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_49

    .line 552
    aget-object v2, p1, v1

    .line 553
    .local v2, "info":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v2, p2}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    .line 554
    .local v3, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v4, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v4

    .line 555
    .local v4, "certChain":Ljava/security/cert/CertPath;
    if-nez v0, :cond_19

    .line 556
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 559
    :cond_19
    new-instance v5, Ljava/security/CodeSigner;

    invoke-virtual {v2}, Lsun/security/pkcs/SignerInfo;->getTimestamp()Ljava/security/Timestamp;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_46

    .line 562
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature Block Certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 563
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 562
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 550
    .end local v2    # "info":Lsun/security/pkcs/SignerInfo;
    .end local v3    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "certChain":Ljava/security/cert/CertPath;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 567
    .end local v1    # "i":I
    :cond_49
    if-eqz v0, :cond_58

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/CodeSigner;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    return-object v1

    .line 570
    :cond_58
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist isBlockOrSF(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 171
    const-string v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 172
    const-string v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 175
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSigningRelated(Ljava/lang/String;)Z
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 189
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 190
    const-string v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 191
    return v1

    .line 193
    :cond_10
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 194
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    .line 195
    return v1

    .line 197
    :cond_20
    invoke-static {p0}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_77

    const-string v0, "MANIFEST.MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_77

    .line 199
    :cond_30
    const-string v0, "SIG-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 203
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 204
    .local v0, "extIndex":I
    if-eq v0, v2, :cond_75

    .line 205
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "ext":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_74

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_54

    goto :goto_74

    .line 211
    :cond_54
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_75

    .line 212
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 214
    .local v5, "cc":C
    const/16 v6, 0x41

    if-lt v5, v6, :cond_67

    const/16 v6, 0x5a

    if-le v5, v6, :cond_70

    :cond_67
    const/16 v6, 0x30

    if-lt v5, v6, :cond_73

    const/16 v6, 0x39

    if-le v5, v6, :cond_70

    goto :goto_73

    .line 211
    .end local v5    # "cc":C
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 215
    .restart local v5    # "cc":C
    :cond_73
    :goto_73
    return v1

    .line 208
    .end local v4    # "index":I
    .end local v5    # "cc":C
    :cond_74
    :goto_74
    return v1

    .line 219
    .end local v2    # "ext":Ljava/lang/String;
    :cond_75
    return v3

    .line 221
    .end local v0    # "extIndex":I
    :cond_76
    return v1

    .line 198
    :cond_77
    :goto_77
    return v3
.end method

.method static greylist-max-o isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .registers 5
    .param p0, "subset"    # [Ljava/security/CodeSigner;
    .param p1, "set"    # [Ljava/security/CodeSigner;

    .line 608
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 609
    return v0

    .line 612
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 613
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 614
    const/4 v0, 0x0

    return v0

    .line 612
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 616
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method static greylist-max-o matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .registers 7
    .param p0, "signers"    # [Ljava/security/CodeSigner;
    .param p1, "oldSigners"    # [Ljava/security/CodeSigner;
    .param p2, "newSigners"    # [Ljava/security/CodeSigner;

    .line 628
    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-ne p0, p2, :cond_6

    .line 629
    return v0

    .line 634
    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    invoke-static {p1, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 635
    return v1

    .line 638
    :cond_10
    invoke-static {p2, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 639
    return v1

    .line 645
    :cond_17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_36

    .line 646
    if-eqz p1, :cond_25

    aget-object v3, p0, v2

    .line 647
    invoke-static {p1, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_25
    aget-object v3, p0, v2

    .line 648
    invoke-static {p2, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2d
    move v3, v0

    goto :goto_30

    :cond_2f
    move v3, v1

    .line 649
    .local v3, "found":Z
    :goto_30
    if-nez v3, :cond_33

    .line 650
    return v1

    .line 645
    .end local v3    # "found":Z
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 652
    .end local v2    # "i":I
    :cond_36
    return v0
.end method

.method private greylist-max-o processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
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

    .line 280
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "manifestDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    .line 281
    .local v0, "sf":Ljava/util/jar/Manifest;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 283
    nop

    .line 284
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "version":Ljava/lang/String;
    if-eqz v1, :cond_fa

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_fa

    .line 292
    :cond_26
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-virtual {v2, v3}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 294
    .local v2, "infos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v2, :cond_df

    .line 300
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-direct {p0, v2, v3}, Lsun/security/util/SignatureFileVerifier;->getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;

    move-result-object v3

    .line 303
    .local v3, "newSigners":[Ljava/security/CodeSigner;
    if-nez v3, :cond_39

    .line 304
    return-void

    .line 306
    :cond_39
    nop

    .line 307
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 310
    .local v4, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    iget-object v5, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v0, v5, p2}, Lsun/security/util/SignatureFileVerifier;->verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Ljava/util/List;)Z

    move-result v5

    .line 313
    .local v5, "manifestSigned":Z
    if-nez v5, :cond_5f

    iget-object v6, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v0, v6}, Lsun/security/util/SignatureFileVerifier;->verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;)Z

    move-result v6

    if-eqz v6, :cond_57

    goto :goto_5f

    .line 314
    :cond_57
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Invalid signature file digest for Manifest main attributes"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 319
    :cond_5f
    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 322
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 324
    .local v7, "name":Ljava/lang/String;
    if-nez v5, :cond_9f

    .line 325
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/Attributes;

    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v8, v7, v9}, Lsun/security/util/SignatureFileVerifier;->verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;)Z

    move-result v8

    if-eqz v8, :cond_82

    goto :goto_9f

    .line 339
    :cond_82
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_d8

    .line 340
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processSignature unsigned name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_d8

    .line 327
    :cond_9f
    :goto_9f
    const-string v8, "./"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 328
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    :cond_ac
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 331
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 333
    :cond_b9
    invoke-virtual {p0, v3, p1, v7}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 335
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_d8

    .line 336
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processSignature signed name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 342
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_d8
    :goto_d8
    goto :goto_5f

    .line 345
    :cond_d9
    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v3, p1, v6}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 346
    return-void

    .line 295
    .end local v3    # "newSigners":[Ljava/security/CodeSigner;
    .end local v4    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v5    # "manifestSigned":Z
    :cond_df
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot verify signature block file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    .end local v2    # "infos":[Lsun/security/pkcs/SignerInfo;
    :cond_fa
    :goto_fa
    return-void
.end method

.method static greylist-max-o toHex([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .line 585
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 587
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 588
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 591
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Ljava/util/List;)Z
    .registers 16
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Lsun/security/util/ManifestDigester;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 356
    .local p3, "manifestDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 357
    .local v0, "mattr":Ljava/util/jar/Attributes;
    const/4 v1, 0x0

    .line 360
    .local v1, "manifestSigned":Z
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 362
    .local v3, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-DIGEST-MANIFEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 366
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "algorithm":Ljava/lang/String;
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-direct {p0, v5}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 371
    .local v6, "digest":Ljava/security/MessageDigest;
    if-eqz v6, :cond_c0

    .line 372
    invoke-virtual {p2, v6}, Lsun/security/util/ManifestDigester;->manifestDigest(Ljava/security/MessageDigest;)[B

    move-result-object v7

    .line 374
    .local v7, "computedHash":[B
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 376
    .local v8, "expectedHash":[B
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_b9

    .line 377
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Signature File: Manifest digest "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 378
    invoke-virtual {v6}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 377
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 379
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  sigfile  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 380
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  computed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 381
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v9}, Lsun/security/util/Debug;->println()V

    .line 384
    :cond_b9
    invoke-static {v7, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 386
    const/4 v1, 0x1

    .line 392
    .end local v3    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v7    # "computedHash":[B
    .end local v8    # "expectedHash":[B
    :cond_c0
    goto/16 :goto_d

    .line 393
    :cond_c2
    return v1
.end method

.method private greylist-max-o verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;)Z
    .registers 16
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 401
    .local v0, "mattr":Ljava/util/jar/Attributes;
    const/4 v1, 0x1

    .line 405
    .local v1, "attrsVerified":Z
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 406
    .local v3, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 409
    nop

    .line 410
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v5}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 413
    .local v7, "digest":Ljava/security/MessageDigest;
    if-eqz v7, :cond_d5

    .line 414
    nop

    .line 415
    const-string v8, "Manifest-Main-Attributes"

    invoke-virtual {p2, v8, v6}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v6

    .line 416
    .local v6, "mde":Lsun/security/util/ManifestDigester$Entry;
    invoke-virtual {v6, v7}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v8

    .line 418
    .local v8, "computedHash":[B
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v9

    .line 420
    .local v9, "expectedHash":[B
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_bc

    .line 421
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signature File: Manifest Main Attributes digest "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 423
    invoke-virtual {v7}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 424
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  sigfile  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  computed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 426
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v10}, Lsun/security/util/Debug;->println()V

    .line 429
    :cond_bc
    invoke-static {v8, v9}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v10

    if-eqz v10, :cond_c3

    goto :goto_d5

    .line 434
    :cond_c3
    const/4 v1, 0x0

    .line 435
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_d7

    .line 436
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    const-string v10, "Verification of Manifest main attributes failed"

    invoke-virtual {v2, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 438
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v2}, Lsun/security/util/Debug;->println()V

    goto :goto_d7

    .line 444
    .end local v3    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "mde":Lsun/security/util/ManifestDigester$Entry;
    .end local v7    # "digest":Ljava/security/MessageDigest;
    .end local v8    # "computedHash":[B
    .end local v9    # "expectedHash":[B
    :cond_d5
    :goto_d5
    goto/16 :goto_d

    .line 449
    :cond_d7
    :goto_d7
    return v1
.end method

.method private greylist-max-o verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;)Z
    .registers 20
    .param p1, "sfAttr"    # Ljava/util/jar/Attributes;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "md"    # Lsun/security/util/ManifestDigester;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 467
    .local v2, "oneDigestVerified":Z
    iget-object v3, v0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v3}, Lsun/security/pkcs/PKCS7;->isOldStyle()Z

    move-result v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v1, v3}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v3

    .line 469
    .local v3, "mde":Lsun/security/util/ManifestDigester$Entry;
    if-eqz v3, :cond_141

    .line 474
    if-eqz p1, :cond_140

    .line 480
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_140

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 481
    .local v6, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "key":Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-DIGEST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 485
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "algorithm":Ljava/lang/String;
    invoke-direct {v0, v8}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 489
    .local v9, "digest":Ljava/security/MessageDigest;
    if-eqz v9, :cond_13e

    .line 490
    const/4 v10, 0x0

    .line 493
    .local v10, "ok":Z
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v11

    .line 495
    .local v11, "expected":[B
    iget-boolean v12, v0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-eqz v12, :cond_68

    .line 496
    invoke-virtual {v3, v9}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v12

    .local v12, "computed":[B
    goto :goto_6c

    .line 498
    .end local v12    # "computed":[B
    :cond_68
    invoke-virtual {v3, v9}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v12

    .line 501
    .restart local v12    # "computed":[B
    :goto_6c
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_d3

    .line 502
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Block File: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " digest="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 503
    invoke-virtual {v9}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 502
    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 504
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 505
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  computed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 506
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v13}, Lsun/security/util/Debug;->println()V

    .line 509
    :cond_d3
    invoke-static {v12, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v13

    if-eqz v13, :cond_dc

    .line 510
    const/4 v2, 0x1

    .line 511
    const/4 v10, 0x1

    goto :goto_114

    .line 514
    :cond_dc
    iget-boolean v13, v0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-nez v13, :cond_114

    .line 515
    invoke-virtual {v3, v9}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v12

    .line 516
    invoke-static {v12, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 517
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_10f

    .line 518
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  re-computed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 519
    sget-object v13, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v13}, Lsun/security/util/Debug;->println()V

    .line 521
    :cond_10f
    const/4 v13, 0x1

    iput-boolean v13, v0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 522
    const/4 v2, 0x1

    .line 523
    const/4 v10, 0x1

    .line 527
    :cond_114
    :goto_114
    if-eqz v10, :cond_117

    goto :goto_13e

    .line 528
    :cond_117
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 529
    invoke-virtual {v9}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " signature file digest for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 534
    .end local v6    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "algorithm":Ljava/lang/String;
    .end local v9    # "digest":Ljava/security/MessageDigest;
    .end local v10    # "ok":Z
    .end local v11    # "expected":[B
    .end local v12    # "computed":[B
    :cond_13e
    :goto_13e
    goto/16 :goto_1d

    .line 536
    :cond_140
    return v2

    .line 470
    :cond_141
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no manifest section for signature file entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public blacklist needSignatureFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist needSignatureFileBytes()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist process(Ljava/util/Hashtable;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
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

    .line 265
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "manifestDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "obj":Ljava/lang/Object;
    :try_start_1
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 268
    invoke-direct {p0, p1, p2}, Lsun/security/util/SignatureFileVerifier;->processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    .line 270
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 271
    nop

    .line 273
    return-void

    .line 270
    :catchall_e
    move-exception v1

    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 271
    throw v1
.end method

.method public blacklist setSignatureFile([B)V
    .registers 2
    .param p1, "sfBytes"    # [B

    .line 157
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 158
    return-void
.end method

.method greylist-max-o updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 9
    .param p1, "newSigners"    # [Ljava/security/CodeSigner;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/CodeSigner;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 658
    .local p2, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 665
    .local v0, "oldSigners":[Ljava/security/CodeSigner;
    iget-object v1, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 666
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    .line 667
    .local v2, "cachedSigners":[Ljava/security/CodeSigner;
    invoke-static {v2, v0, p1}, Lsun/security/util/SignatureFileVerifier;->matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 668
    invoke-virtual {p2, p3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void

    .line 665
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 673
    .end local v1    # "i":I
    .end local v2    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_26
    if-nez v0, :cond_2a

    .line 674
    move-object v1, p1

    .local v1, "cachedSigners":[Ljava/security/CodeSigner;
    goto :goto_39

    .line 676
    .end local v1    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_2a
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/security/CodeSigner;

    .line 678
    .restart local v1    # "cachedSigners":[Ljava/security/CodeSigner;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    array-length v2, v0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    :goto_39
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {p2, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    return-void
.end method
