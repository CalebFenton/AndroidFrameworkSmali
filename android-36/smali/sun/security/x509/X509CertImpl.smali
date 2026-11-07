.class public Lsun/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final blacklist ALG_ID:Ljava/lang/String; = "algorithm"

.field private static final blacklist AUTH_INFO_ACCESS_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field private static final blacklist BASIC_CONSTRAINT_OID:Ljava/lang/String; = "2.5.29.19"

.field private static final blacklist DOT:Ljava/lang/String; = "."

.field private static final blacklist EXTENDED_KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.37"

.field public static final blacklist INFO:Ljava/lang/String; = "info"

.field private static final blacklist ISSUER_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.18"

.field public static final blacklist ISSUER_DN:Ljava/lang/String; = "x509.info.issuer.dname"

.field private static final blacklist KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final blacklist NAME:Ljava/lang/String; = "x509"

.field private static final blacklist NUM_STANDARD_KEY_USAGE:I = 0x9

.field public static final blacklist PUBLIC_KEY:Ljava/lang/String; = "x509.info.key.value"

.field public static final blacklist SERIAL_ID:Ljava/lang/String; = "x509.info.serialNumber.number"

.field public static final blacklist SIG:Ljava/lang/String; = "x509.signature"

.field public static final blacklist SIGNATURE:Ljava/lang/String; = "signature"

.field public static final blacklist SIGNED_CERT:Ljava/lang/String; = "signed_cert"

.field public static final blacklist SIG_ALG:Ljava/lang/String; = "x509.algorithm"

.field private static final blacklist SUBJECT_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.17"

.field public static final blacklist SUBJECT_DN:Ljava/lang/String; = "x509.info.subject.dname"

.field public static final blacklist VERSION:Ljava/lang/String; = "x509.info.version.number"

.field private static final whitelist serialVersionUID:J = -0x2ffbe8ab06f69c16L


# instance fields
.field protected greylist algId:Lsun/security/x509/AlgorithmId;

.field private blacklist authInfoAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fingerprints:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist info:Lsun/security/x509/X509CertInfo;

.field private blacklist issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist readOnly:Z

.field protected greylist signature:[B

.field private greylist signedCert:[B

.field private blacklist subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist verificationResult:Z

.field private blacklist verifiedProvider:Ljava/lang/String;

.field private blacklist verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public static synthetic blacklist $r8$lambda$a0Dw5qRSaagH0cyV1FecS5v2uyc(Lsun/security/x509/X509CertImpl;Lsun/security/util/Debug;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->lambda$getFingerprint$0(Lsun/security/util/Debug;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 172
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    :try_start_17
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 310
    nop

    .line 311
    return-void

    .line 307
    :catch_1c
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 309
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;[B)V
    .registers 7
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 325
    :try_start_17
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 329
    nop

    .line 330
    return-void

    .line 326
    :catch_1c
    move-exception v1

    .line 327
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 328
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor greylist <init>(Lsun/security/x509/X509CertInfo;)V
    .registers 4
    .param p1, "certInfo"    # Lsun/security/x509/X509CertInfo;

    .line 292
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 293
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 294
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 6
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    :try_start_17
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_21

    .line 192
    nop

    .line 193
    return-void

    .line 189
    :catch_21
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 191
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist byte2hex(BLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 2064
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    .line 2066
    .local v0, "hexChars":[C
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 2067
    .local v1, "high":I
    and-int/lit8 v2, p0, 0xf

    .line 2068
    .local v2, "low":I
    aget-char v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2069
    aget-char v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2070
    return-void

    :array_18
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static blacklist cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 1616
    .local p0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v0, 0x0

    .line 1617
    .local v0, "mustClone":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1618
    .local v2, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [B

    if-eqz v3, :cond_1b

    .line 1620
    const/4 v0, 0x1

    .line 1622
    .end local v2    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1b
    goto :goto_5

    .line 1623
    :cond_1c
    if-eqz v0, :cond_5b

    .line 1624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    .local v1, "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1626
    .local v4, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1627
    .local v5, "nameObject":Ljava/lang/Object;
    instance-of v6, v5, [B

    if-eqz v6, :cond_52

    .line 1628
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1630
    .local v6, "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v7, v5

    check-cast v7, [B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1631
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    .end local v6    # "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_55

    .line 1633
    :cond_52
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    .end local v4    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "nameObject":Ljava/lang/Object;
    :goto_55
    goto :goto_27

    .line 1636
    :cond_56
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 1638
    .end local v1    # "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    :cond_5b
    return-object p0
.end method

.method public static blacklist getEncodedInternal(Ljava/security/cert/Certificate;)[B
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1918
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_c

    .line 1919
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    return-object v0

    .line 1921
    :cond_c
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 1510
    :try_start_0
    const-string v0, "2.5.29.37"

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1511
    .local v0, "ext":[B
    if-nez v0, :cond_a

    .line 1512
    const/4 v1, 0x0

    return-object v1

    .line 1513
    :cond_a
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1514
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    .line 1516
    .local v2, "data":[B
    new-instance v3, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v2}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 1518
    .local v3, "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    invoke-virtual {v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v4

    .line 1519
    .end local v0    # "ext":[B
    .end local v1    # "val":Lsun/security/util/DerValue;
    .end local v2    # "data":[B
    .end local v3    # "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catch_23
    move-exception v0

    .line 1520
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1988
    const-string v0, ""

    .line 1990
    .local v0, "fingerPrint":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 1991
    .local v1, "encCertInfo":[B
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1992
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1993
    .local v3, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1994
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v6, v3

    if-ge v5, v6, :cond_1f

    .line 1995
    aget-byte v6, v3, v5

    invoke-static {v6, v4}, Lsun/security/x509/X509CertImpl;->byte2hex(BLjava/lang/StringBuffer;)V

    .line 1994
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1997
    .end local v5    # "i":I
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_23} :catch_25
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_23} :catch_25

    move-object v0, v5

    .line 2000
    .end local v1    # "encCertInfo":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "digest":[B
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    goto :goto_26

    .line 1998
    :catch_25
    move-exception v1

    .line 2001
    :goto_26
    return-object v0
.end method

.method public static blacklist getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;Lsun/security/util/Debug;)Ljava/lang/String;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "debug"    # Lsun/security/util/Debug;

    .line 2045
    instance-of v0, p1, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_c

    .line 2046
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X509CertImpl;

    invoke-direct {v0, p0, p2}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Lsun/security/util/Debug;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2049
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/security/x509/X509CertImpl;->getFingerprintInternal(Ljava/lang/String;[BLsun/security/util/Debug;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_14} :catch_15

    return-object v0

    .line 2050
    :catch_15
    move-exception v0

    .line 2051
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    if-eqz p2, :cond_2e

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2054
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getFingerprint(Ljava/lang/String;Lsun/security/util/Debug;)Ljava/lang/String;
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "debug"    # Lsun/security/util/Debug;

    .line 2006
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lsun/security/x509/X509CertImpl$$ExternalSyntheticLambda0;-><init>(Lsun/security/x509/X509CertImpl;Lsun/security/util/Debug;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getFingerprintInternal(Ljava/lang/String;[BLsun/security/util/Debug;)Ljava/lang/String;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "encodedCert"    # [B
    .param p2, "debug"    # Lsun/security/util/Debug;

    .line 2022
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2023
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 2024
    .local v1, "digest":[B
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HexFormat;->withUpperCase()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    .line 2025
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    :catch_15
    move-exception v0

    .line 2026
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p2, :cond_38

    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MessageDigest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2030
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 1743
    :try_start_0
    const-string v0, "2.5.29.18"

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1744
    .local v0, "ext":[B
    if-nez v0, :cond_a

    .line 1745
    const/4 v1, 0x0

    return-object v1

    .line 1748
    :cond_a
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1749
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    .line 1751
    .local v2, "data":[B
    new-instance v3, Lsun/security/x509/IssuerAlternativeNameExtension;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v2}, Lsun/security/x509/IssuerAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_2c

    .line 1756
    .local v3, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_start_1a
    const-string v4, "issuer_name"

    invoke-virtual {v3, v4}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_26

    .line 1761
    .local v4, "names":Lsun/security/x509/GeneralNames;
    nop

    .line 1762
    :try_start_21
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v5

    return-object v5

    .line 1758
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_26
    move-exception v4

    .line 1760
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_2c

    return-object v5

    .line 1763
    .end local v0    # "ext":[B
    .end local v1    # "val":Lsun/security/util/DerValue;
    .end local v2    # "data":[B
    .end local v3    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_2c
    move-exception v0

    .line 1764
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1904
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 1905
    :catch_6
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not parse issuer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 1680
    :try_start_0
    const-string v0, "2.5.29.17"

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1681
    .local v0, "ext":[B
    if-nez v0, :cond_a

    .line 1682
    const/4 v1, 0x0

    return-object v1

    .line 1684
    :cond_a
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1685
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    .line 1687
    .local v2, "data":[B
    new-instance v3, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v2}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_2c

    .line 1693
    .local v3, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_start_1a
    const-string v4, "subject_name"

    invoke-virtual {v3, v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_26

    .line 1698
    .local v4, "names":Lsun/security/x509/GeneralNames;
    nop

    .line 1699
    :try_start_21
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v5

    return-object v5

    .line 1695
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_26
    move-exception v4

    .line 1697
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_2c

    return-object v5

    .line 1700
    .end local v0    # "ext":[B
    .end local v1    # "val":Lsun/security/util/DerValue;
    .end local v2    # "data":[B
    .end local v3    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_2c
    move-exception v0

    .line 1701
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1892
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 1893
    :catch_6
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not parse subject"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1865
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 1866
    .local v0, "encoded":[B
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1867
    .local v1, "derIn":Lsun/security/util/DerInputStream;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1868
    .local v2, "tbsCert":Lsun/security/util/DerValue;
    iget-object v4, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1870
    .local v4, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1872
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v5, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1873
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1876
    :cond_21
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 1877
    .end local v5    # "tmp":Lsun/security/util/DerValue;
    .local v3, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 1878
    if-nez p1, :cond_33

    .line 1879
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 1880
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 1882
    :cond_33
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    .line 1883
    .local v5, "principalBytes":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v6
.end method

.method public static blacklist isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1944
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1945
    .local v0, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1946
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static blacklist isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "sigProvider"    # Ljava/lang/String;

    .line 1957
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1959
    if-nez p1, :cond_10

    .line 1960
    :try_start_8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_17

    .line 1962
    :cond_10
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    .line 1964
    :goto_17
    const/4 v0, 0x1

    return v0

    .line 1965
    :catch_19
    move-exception v0

    .line 1969
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic blacklist lambda$getFingerprint$0(Lsun/security/util/Debug;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "debug"    # Lsun/security/util/Debug;
    .param p2, "x"    # Ljava/lang/String;

    .line 2009
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-static {p2, v0, p1}, Lsun/security/x509/X509CertImpl;->getFingerprintInternal(Ljava/lang/String;[BLsun/security/util/Debug;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2010
    :catch_9
    move-exception v0

    .line 2011
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    if-eqz p1, :cond_22

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2014
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;
    .registers 9
    .param p0, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 1560
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1561
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1563
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v0, "newNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralName;

    .line 1565
    .local v2, "gname":Lsun/security/x509/GeneralName;
    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v3

    .line 1566
    .local v3, "name":Lsun/security/x509/GeneralNameInterface;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1567
    .local v4, "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_b8

    .line 1595
    :pswitch_40
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .local v5, "derOut":Lsun/security/util/DerOutputStream;
    goto :goto_95

    .line 1591
    .end local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :pswitch_46
    move-object v5, v3

    check-cast v5, Lsun/security/x509/OIDName;

    invoke-virtual {v5}, Lsun/security/x509/OIDName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    goto :goto_a0

    .line 1583
    :pswitch_55
    :try_start_55
    move-object v5, v3

    check-cast v5, Lsun/security/x509/IPAddressName;

    invoke-virtual {v5}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_60

    .line 1588
    goto :goto_a0

    .line 1584
    :catch_60
    move-exception v1

    .line 1586
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IPAddress cannot be parsed"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1579
    .end local v1    # "ioe":Ljava/io/IOException;
    :pswitch_69
    move-object v5, v3

    check-cast v5, Lsun/security/x509/URIName;

    invoke-virtual {v5}, Lsun/security/x509/URIName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    goto :goto_a0

    .line 1576
    :pswitch_74
    move-object v5, v3

    check-cast v5, Lsun/security/x509/X500Name;

    invoke-virtual {v5}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    goto :goto_a0

    .line 1573
    :pswitch_7f
    move-object v5, v3

    check-cast v5, Lsun/security/x509/DNSName;

    invoke-virtual {v5}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    goto :goto_a0

    .line 1570
    :pswitch_8a
    move-object v5, v3

    check-cast v5, Lsun/security/x509/RFC822Name;

    invoke-virtual {v5}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    goto :goto_a0

    .line 1597
    .restart local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :goto_95
    :try_start_95
    invoke-interface {v3, v5}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a9

    .line 1602
    nop

    .line 1603
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    .end local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :goto_a0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    .end local v2    # "gname":Lsun/security/x509/GeneralName;
    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_18

    .line 1598
    .restart local v2    # "gname":Lsun/security/x509/GeneralName;
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    .restart local v4    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :catch_a9
    move-exception v1

    .line 1601
    .restart local v1    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "name cannot be encoded"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1608
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "gname":Lsun/security/x509/GeneralName;
    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_b2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7f
        :pswitch_40
        :pswitch_74
        :pswitch_40
        :pswitch_69
        :pswitch_55
        :pswitch_46
    .end packed-switch
.end method

.method private greylist parse(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1788
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V

    .line 1792
    return-void
.end method

.method private blacklist parse(Lsun/security/util/DerValue;[B)V
    .registers 9
    .param p1, "val"    # Lsun/security/util/DerValue;
    .param p2, "originalEncodedForm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_ce

    .line 1813
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v0, :cond_c6

    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_c6

    .line 1819
    nop

    .line 1820
    if-eqz p2, :cond_13

    .line 1821
    move-object v0, p2

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 1822
    const/4 v0, 0x3

    new-array v0, v0, [Lsun/security/util/DerValue;

    .line 1824
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1825
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 1826
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 1828
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_a7

    .line 1832
    aget-object v2, v0, v3

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v1, :cond_9f

    .line 1836
    aget-object v1, v0, v4

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 1837
    aget-object v1, v0, v5

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1839
    aget-object v1, v0, v4

    iget-object v1, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_97

    .line 1842
    aget-object v1, v0, v5

    iget-object v1, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_8f

    .line 1846
    new-instance v1, Lsun/security/x509/X509CertInfo;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Lsun/security/x509/X509CertInfo;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1849
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "algorithmID.algorithm"

    invoke-virtual {v1, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/AlgorithmId;

    .line 1853
    .local v1, "infoSigAlg":Lsun/security/x509/AlgorithmId;
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1855
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 1856
    return-void

    .line 1854
    :cond_87
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Signature algorithm mismatch"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1843
    .end local v1    # "infoSigAlg":Lsun/security/x509/AlgorithmId;
    :cond_8f
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "signed fields overrun"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1840
    :cond_97
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "algid field overrun"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1833
    :cond_9f
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "signed fields invalid"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1829
    :cond_a7
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed overrun, bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1830
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1814
    .end local v0    # "seq":[Lsun/security/util/DerValue;
    :cond_c6
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "invalid DER-encoded certificate data"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1810
    :cond_ce
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1932
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_8

    .line 1933
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    return-object v0

    .line 1935
    :cond_8
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist verify(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    .line 524
    return-void
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 619
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 620
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "interval":Lsun/security/x509/CertificateValidity;
    :try_start_1
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "validity"

    invoke-virtual {v1, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateValidity;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1a

    .line 643
    .end local v0    # "interval":Lsun/security/x509/CertificateValidity;
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    nop

    .line 644
    if-eqz v1, :cond_12

    .line 646
    invoke-virtual {v1, p1}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 647
    return-void

    .line 645
    :cond_12
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    const-string v2, "Null validity period"

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    .restart local v0    # "interval":Lsun/security/x509/CertificateValidity;
    :catch_1a
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string v3, "Incorrect validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist delete(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_91

    .line 760
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "id":Ljava/lang/String;
    const-string v2, "x509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 767
    new-instance v2, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 768
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v2, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 770
    .end local v1    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    .line 771
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 772
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    goto :goto_5e

    .line 774
    :cond_34
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/x509/X509CertInfo;->delete(Ljava/lang/String;)V

    goto :goto_5e

    .line 776
    :cond_3e
    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 777
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    goto :goto_5e

    .line 778
    :cond_49
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 779
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    goto :goto_5e

    .line 780
    :cond_54
    const-string v1, "signed_cert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 781
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 786
    :goto_5e
    return-void

    .line 783
    :cond_5f
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized or delete() not allowed for the same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    .end local v2    # "attr":Lsun/security/x509/X509AttributeName;
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_78
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .end local v1    # "id":Ljava/lang/String;
    :cond_91
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist derEncode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_10

    .line 362
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 363
    return-void

    .line 361
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_1c

    .line 345
    :try_start_4
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_11

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catch_11
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 661
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "id":Ljava/lang/String;
    const-string v2, "x509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 668
    new-instance v2, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 669
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v2, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 671
    .end local v1    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_56

    .line 672
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v1, :cond_2c

    .line 673
    return-object v3

    .line 675
    :cond_2c
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 677
    :try_start_32
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3c} :catch_48
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_3c} :catch_3d

    return-object v1

    .line 680
    :catch_3d
    move-exception v1

    .line 681
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 678
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_48
    move-exception v1

    .line 679
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 684
    .end local v1    # "e":Ljava/io/IOException;
    :cond_53
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    return-object v1

    .line 686
    :cond_56
    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 687
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    return-object v1

    .line 688
    :cond_61
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 689
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v1, :cond_74

    .line 690
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 692
    :cond_74
    return-object v3

    .line 693
    :cond_75
    const-string v1, "signed_cert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 694
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v1, :cond_88

    .line 695
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 697
    :cond_88
    return-object v3

    .line 699
    :cond_89
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized or get() not allowed for the same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    .end local v2    # "attr":Lsun/security/x509/X509AttributeName;
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "id":Ljava/lang/String;
    :cond_a2
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root of attribute name, expected [x509], received ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .registers 3

    .line 1115
    nop

    .line 1116
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 1117
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_11

    .line 1119
    :try_start_7
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/KeyIdentifier;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v1

    .line 1121
    :catch_10
    move-exception v1

    .line 1123
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;
    .registers 2

    .line 1769
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 1770
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AuthorityInfoAccessExtension;

    .line 1769
    return-object v0
.end method

.method public blacklist getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .registers 2

    .line 1147
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 1148
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    .line 1147
    return-object v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 6

    .line 1531
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    .local v1, "extAlias":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 1533
    return v0

    .line 1534
    :cond_a
    nop

    .line 1535
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/BasicConstraintsExtension;

    .line 1536
    .local v2, "certExt":Lsun/security/x509/BasicConstraintsExtension;
    if-nez v2, :cond_14

    .line 1537
    return v0

    .line 1539
    :cond_14
    const-string v3, "is_ca"

    invoke-virtual {v2, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1540
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    .line 1541
    const-string v3, "path_len"

    invoke-virtual {v2, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1542
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    .line 1541
    return v0

    .line 1544
    :cond_30
    return v0

    .line 1545
    .end local v1    # "extAlias":Ljava/lang/String;
    .end local v2    # "certExt":Lsun/security/x509/BasicConstraintsExtension;
    :catch_31
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public blacklist getBasicConstraintsExtension()Lsun/security/x509/BasicConstraintsExtension;
    .registers 2

    .line 1157
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1158
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    .line 1157
    return-object v0
.end method

.method public blacklist getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;
    .registers 2

    .line 1256
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1257
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CRLDistributionPointsExtension;

    .line 1256
    return-object v0
.end method

.method public blacklist getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;
    .registers 2

    .line 1167
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 1168
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    .line 1167
    return-object v0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1287
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1288
    return-object v1

    .line 1291
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateExtensions;

    .line 1293
    .local v0, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v0, :cond_13

    .line 1294
    return-object v1

    .line 1296
    :cond_13
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 1297
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    .line 1298
    .local v4, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1299
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3d} :catch_3f

    .line 1301
    .end local v4    # "ex":Lsun/security/x509/Extension;
    :cond_3d
    goto :goto_20

    .line 1302
    :cond_3e
    return-object v2

    .line 1303
    .end local v0    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v2    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_3f
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 794
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "x509.info"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 795
    const-string v1, "x509.algorithm"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 796
    const-string v1, "x509.signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 797
    const-string v1, "x509.signed_cert"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_7

    .line 387
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    return-object v0

    .line 384
    :cond_7
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    .line 1488
    :try_start_1
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1489
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    monitor-exit p0

    return-object v0

    .line 1491
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_25

    .line 1492
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-nez v0, :cond_16

    .line 1493
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 1495
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_16
    nop

    .line 1496
    :try_start_17
    invoke-virtual {v0}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    .line 1497
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v1

    .line 1487
    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public blacklist getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    .registers 2

    .line 1177
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 1178
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    .line 1177
    return-object v0
.end method

.method public blacklist getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .registers 8
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 1347
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1348
    return-object v1

    .line 1353
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateExtensions;
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_10} :catch_42
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_40

    .line 1356
    .local v0, "extensions":Lsun/security/x509/CertificateExtensions;
    nop

    .line 1357
    if-nez v0, :cond_14

    .line 1358
    return-object v1

    .line 1360
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/x509/CertificateExtensions;->getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v2

    .line 1361
    .local v2, "ex":Lsun/security/x509/Extension;
    if-eqz v2, :cond_1f

    .line 1362
    return-object v2

    .line 1364
    :cond_1f
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    .line 1365
    .local v4, "ex2":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_40

    if-eqz v5, :cond_3e

    .line 1367
    return-object v4

    .line 1369
    .end local v4    # "ex2":Lsun/security/x509/Extension;
    :cond_3e
    goto :goto_27

    .line 1371
    :cond_3f
    return-object v1

    .line 1373
    .end local v0    # "extensions":Lsun/security/x509/CertificateExtensions;
    .end local v2    # "ex":Lsun/security/x509/Extension;
    :catch_40
    move-exception v0

    .line 1374
    .local v0, "ioe":Ljava/io/IOException;
    return-object v1

    .line 1354
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_42
    move-exception v0

    .line 1355
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 11
    .param p1, "oid"    # Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1408
    .local v1, "findOID":Lsun/security/util/ObjectIdentifier;
    invoke-static {v1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, "extAlias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1410
    .local v3, "certExt":Lsun/security/x509/Extension;
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v5, "extensions"

    invoke-virtual {v4, v5}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;

    .line 1413
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v2, :cond_3c

    .line 1415
    if-nez v4, :cond_1a

    .line 1416
    return-object v0

    .line 1419
    :cond_1a
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 1420
    .local v6, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 1421
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_6b

    if-eqz v8, :cond_3a

    .line 1422
    move-object v3, v6

    .line 1423
    goto :goto_3b

    .line 1425
    .end local v6    # "ex":Lsun/security/x509/Extension;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_3a
    goto :goto_22

    :cond_3b
    :goto_3b
    goto :goto_45

    .line 1428
    :cond_3c
    :try_start_3c
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/Extension;
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_3c .. :try_end_42} :catch_44
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_6b

    move-object v3, v5

    .line 1431
    goto :goto_45

    .line 1429
    :catch_44
    move-exception v5

    .line 1433
    :goto_45
    if-nez v3, :cond_57

    .line 1434
    if-eqz v4, :cond_54

    .line 1435
    :try_start_49
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/Extension;

    move-object v3, v5

    .line 1437
    :cond_54
    if-nez v3, :cond_57

    .line 1438
    return-object v0

    .line 1441
    :cond_57
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 1442
    .local v5, "extData":[B
    if-nez v5, :cond_5e

    .line 1443
    return-object v0

    .line 1445
    :cond_5e
    new-instance v6, Lsun/security/util/DerOutputStream;

    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1446
    .local v6, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v6, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1447
    invoke-virtual {v6}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6a} :catch_6b

    return-object v0

    .line 1448
    .end local v1    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "extAlias":Ljava/lang/String;
    .end local v3    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v5    # "extData":[B
    .end local v6    # "out":Lsun/security/util/DerOutputStream;
    :catch_6b
    move-exception v1

    .line 1449
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public blacklist getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .registers 2

    .line 1187
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 1188
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    .line 1187
    return-object v0
.end method

.method public declared-synchronized whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    .line 1714
    :try_start_1
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 1715
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    invoke-static {v0}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1717
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_11
    nop

    .line 1718
    :try_start_12
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_33

    .line 1719
    .local v0, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    if-nez v0, :cond_1b

    .line 1720
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 1724
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_1b
    :try_start_1b
    const-string v1, "issuer_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_2c
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 1729
    .local v1, "names":Lsun/security/x509/GeneralNames;
    nop

    .line 1730
    :try_start_22
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    .line 1731
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_33

    monitor-exit p0

    return-object v2

    .line 1726
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :catch_2c
    move-exception v1

    .line 1728
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v2

    .line 1713
    .end local v0    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 4

    .line 941
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 942
    return-object v1

    .line 944
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "issuer.dname"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 946
    .local v0, "issuer":Ljava/security/Principal;
    return-object v0

    .line 947
    .end local v0    # "issuer":Ljava/security/Principal;
    :catch_11
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 4

    .line 1080
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1081
    return-object v1

    .line 1083
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "issuerID"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/UniqueIdentity;

    .line 1085
    .local v0, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v0, :cond_13

    .line 1086
    return-object v1

    .line 1088
    :cond_13
    invoke-virtual {v0}, Lsun/security/x509/UniqueIdentity;->getId()[Z

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    return-object v1

    .line 1089
    .end local v0    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_18
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 958
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 959
    return-object v1

    .line 962
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "issuer.x500principal"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 965
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    return-object v0

    .line 966
    .end local v0    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :catch_11
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 8

    .line 1460
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "extAlias":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 1462
    return-object v0

    .line 1464
    :cond_a
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/KeyUsageExtension;

    .line 1465
    .local v2, "certExt":Lsun/security/x509/KeyUsageExtension;
    if-nez v2, :cond_13

    .line 1466
    return-object v0

    .line 1468
    :cond_13
    invoke-virtual {v2}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v3

    .line 1469
    .local v3, "ret":[Z
    array-length v4, v3

    const/16 v5, 0x9

    if-ge v4, v5, :cond_24

    .line 1470
    new-array v4, v5, [Z

    .line 1471
    .local v4, "usageBits":[Z
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    .line 1472
    move-object v3, v4

    .line 1474
    .end local v4    # "usageBits":[Z
    :cond_24
    return-object v3

    .line 1475
    .end local v1    # "extAlias":Ljava/lang/String;
    .end local v2    # "certExt":Lsun/security/x509/KeyUsageExtension;
    .end local v3    # "ret":[Z
    :catch_25
    move-exception v1

    .line 1476
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 806
    const-string v0, "x509"

    return-object v0
.end method

.method public blacklist getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;
    .registers 2

    .line 1196
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1197
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    .line 1196
    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1317
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1318
    return-object v1

    .line 1321
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateExtensions;

    .line 1323
    .local v0, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v0, :cond_13

    .line 1324
    return-object v1

    .line 1326
    :cond_13
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 1327
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    .line 1328
    .local v4, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1329
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1331
    .end local v4    # "ex":Lsun/security/x509/Extension;
    :cond_3d
    goto :goto_20

    .line 1332
    :cond_3e
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_4a

    .line 1333
    return-object v2

    .line 1334
    .end local v0    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v2    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_4a
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 4

    .line 994
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 995
    return-object v1

    .line 997
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "validity.notAfter"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 999
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 1000
    .end local v0    # "d":Ljava/util/Date;
    :catch_11
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 4

    .line 977
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 978
    return-object v1

    .line 980
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "validity.notBefore"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 982
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 983
    .end local v0    # "d":Ljava/util/Date;
    :catch_11
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;
    .registers 2

    .line 1206
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1207
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyConstraintsExtension;

    .line 1206
    return-object v0
.end method

.method public blacklist getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;
    .registers 2

    .line 1216
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 1217
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyMappingsExtension;

    .line 1216
    return-object v0
.end method

.method public blacklist getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;
    .registers 2

    .line 1225
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 1226
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    .line 1225
    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 4

    .line 840
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 841
    return-object v1

    .line 843
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "key.value"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 845
    .local v0, "key":Ljava/security/PublicKey;
    return-object v0

    .line 846
    .end local v0    # "key":Ljava/security/PublicKey;
    :catch_11
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 3

    .line 874
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    .line 876
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public blacklist getSerialNumberObject()Lsun/security/x509/SerialNumber;
    .registers 4

    .line 886
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 887
    return-object v1

    .line 889
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "serialNumber.number"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 892
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    return-object v0

    .line 893
    .end local v0    # "ser":Lsun/security/x509/SerialNumber;
    :catch_11
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 1039
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    .line 1040
    const/4 v0, 0x0

    return-object v0

    .line 1041
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 1051
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    .line 1052
    const/4 v0, 0x0

    return-object v0

    .line 1053
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 1054
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 1065
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1066
    return-object v1

    .line 1068
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 1069
    :catch_d
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 1026
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v0, :cond_6

    .line 1027
    const/4 v0, 0x0

    return-object v0

    .line 1028
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    .registers 2

    .line 1236
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 1237
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    .line 1236
    return-object v0
.end method

.method public declared-synchronized whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    .line 1651
    :try_start_1
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 1652
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    invoke-static {v0}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1654
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_11
    nop

    .line 1655
    :try_start_12
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_33

    .line 1656
    .local v0, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v0, :cond_1b

    .line 1657
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 1661
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_1b
    :try_start_1b
    const-string v1, "subject_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_2c
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 1666
    .local v1, "names":Lsun/security/x509/GeneralNames;
    nop

    .line 1667
    :try_start_22
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    .line 1668
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_33

    monitor-exit p0

    return-object v2

    .line 1663
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :catch_2c
    move-exception v1

    .line 1665
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v2

    .line 1650
    .end local v0    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 4

    .line 905
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 906
    return-object v1

    .line 908
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "subject.dname"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 910
    .local v0, "subject":Ljava/security/Principal;
    return-object v0

    .line 911
    .end local v0    # "subject":Ljava/security/Principal;
    :catch_11
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getSubjectKeyId()Lsun/security/x509/KeyIdentifier;
    .registers 3

    .line 1130
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v0

    .line 1131
    .local v0, "ski":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v0, :cond_e

    .line 1133
    :try_start_6
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v1

    .line 1135
    :catch_d
    move-exception v1

    .line 1137
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;
    .registers 2

    .line 1246
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 1247
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SubjectKeyIdentifierExtension;

    .line 1246
    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 4

    .line 1100
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1101
    return-object v1

    .line 1103
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "subjectID"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/UniqueIdentity;

    .line 1105
    .local v0, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v0, :cond_13

    .line 1106
    return-object v1

    .line 1108
    :cond_13
    invoke-virtual {v0}, Lsun/security/x509/UniqueIdentity;->getId()[Z

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    return-object v1

    .line 1109
    .end local v0    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_18
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 922
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 923
    return-object v1

    .line 926
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "subject.x500principal"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 929
    .local v0, "subject":Ljavax/security/auth/x500/X500Principal;
    return-object v0

    .line 930
    .end local v0    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_11
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_b

    .line 1015
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    return-object v0

    .line 1017
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUnparseableExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .registers 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 1379
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1380
    return-object v1

    .line 1385
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateExtensions;
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_10} :catch_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_23

    .line 1388
    .local v0, "extensions":Lsun/security/x509/CertificateExtensions;
    nop

    .line 1389
    if-nez v0, :cond_14

    .line 1390
    return-object v1

    .line 1392
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_23

    return-object v2

    .line 1394
    .end local v0    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_23
    move-exception v0

    .line 1395
    .local v0, "ioe":Ljava/io/IOException;
    return-object v1

    .line 1386
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_25
    move-exception v0

    .line 1387
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v1
.end method

.method public whitelist test-api getVersion()I
    .registers 4

    .line 857
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 858
    return v1

    .line 860
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "version.number"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 861
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_17

    .line 862
    .local v0, "vers":I
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 863
    .end local v0    # "vers":I
    :catch_17
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 4

    .line 1265
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1266
    return v1

    .line 1268
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateExtensions;

    .line 1270
    .local v0, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v0, :cond_13

    .line 1271
    return v1

    .line 1272
    :cond_13
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    return v1

    .line 1273
    .end local v0    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_18
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_83

    .line 719
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "id":Ljava/lang/String;
    const-string v2, "x509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 725
    new-instance v2, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 726
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v2, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 728
    .end local v1    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 729
    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_45

    .line 730
    instance-of v1, p2, Lsun/security/x509/X509CertInfo;

    if-eqz v1, :cond_3d

    .line 734
    move-object v1, p2

    check-cast v1, Lsun/security/x509/X509CertInfo;

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 735
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_50

    .line 731
    :cond_3d
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v3, "Attribute value should be of type X509CertInfo."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_45
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 744
    :goto_50
    return-void

    .line 741
    :cond_51
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized or set() not allowed for the same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    .end local v2    # "attr":Lsun/security/x509/X509AttributeName;
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_6a
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 716
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .end local v1    # "id":Ljava/lang/String;
    :cond_83
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 569
    :try_start_0
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_5c

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_13

    .line 576
    :cond_e
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigEngine":Ljava/security/Signature;
    .local v1, "sigEngine":Ljava/security/Signature;
    goto :goto_17

    .line 574
    .end local v1    # "sigEngine":Ljava/security/Signature;
    .restart local v0    # "sigEngine":Ljava/security/Signature;
    :cond_13
    :goto_13
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 578
    .end local v0    # "sigEngine":Ljava/security/Signature;
    .restart local v1    # "sigEngine":Ljava/security/Signature;
    :goto_17
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 581
    invoke-virtual {v1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 583
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 584
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 587
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v3, v2}, Lsun/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    .line 588
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    .line 591
    .local v3, "rawCert":[B
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4, v2}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 594
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/Signature;->update([BII)V

    .line 595
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 596
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v2, v4}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 599
    const/16 v4, 0x30

    invoke-virtual {v0, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 600
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 601
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 605
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "sigEngine":Ljava/security/Signature;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    .end local v3    # "rawCert":[B
    nop

    .line 606
    return-void

    .line 570
    :cond_5c
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_64

    .line 603
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "provider":Ljava/lang/String;
    :catch_64
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 816
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v0, :cond_d

    goto :goto_80

    .line 819
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Algorithm: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 826
    .local v1, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Signature:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 817
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "encoder":Lsun/misc/HexDumpEncoder;
    :cond_80
    :goto_80
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 409
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public declared-synchronized whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    if-nez p2, :cond_6

    .line 432
    :try_start_3
    const-string v0, ""

    move-object p2, v0

    .line 434
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 437
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 438
    iget-boolean v0, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_78

    if-eqz v0, :cond_20

    .line 439
    monitor-exit p0

    return-void

    .line 441
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature does not match."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_28
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_70

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3e

    .line 451
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigVerf":Ljava/security/Signature;
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_48

    .line 453
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .restart local v0    # "sigVerf":Ljava/security/Signature;
    :cond_3e
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 455
    .end local v0    # "sigVerf":Ljava/security/Signature;
    .restart local v1    # "sigVerf":Ljava/security/Signature;
    :goto_48
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 457
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 458
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 461
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 462
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 463
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    .line 465
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_64
    .catchall {:try_start_20 .. :try_end_64} :catchall_78

    if-eqz v2, :cond_68

    .line 468
    monitor-exit p0

    return-void

    .line 466
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_68
    :try_start_68
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    .end local v0    # "rawCert":[B
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_70
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    .end local p1    # "key":Ljava/security/PublicKey;
    .end local p2    # "sigProvider":Ljava/lang/String;
    :catchall_78
    move-exception p1

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public declared-synchronized whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    monitor-enter p0

    .line 490
    :try_start_1
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_43

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_13

    .line 496
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigVerf":Ljava/security/Signature;
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_1d

    .line 498
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    .restart local v0    # "sigVerf":Ljava/security/Signature;
    :cond_13
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .line 500
    .end local v0    # "sigVerf":Ljava/security/Signature;
    .restart local v1    # "sigVerf":Ljava/security/Signature;
    :goto_1d
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 502
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 503
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 506
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 507
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 509
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_4b

    if-eqz v2, :cond_3b

    .line 512
    monitor-exit p0

    return-void

    .line 510
    .restart local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_3b
    :try_start_3b
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    .end local v0    # "rawCert":[B
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .end local p0    # "this":Lsun/security/x509/X509CertImpl;
    :cond_43
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    .end local p1    # "key":Ljava/security/PublicKey;
    .end local p2    # "sigProvider":Ljava/security/Provider;
    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4b

    throw p1
.end method
