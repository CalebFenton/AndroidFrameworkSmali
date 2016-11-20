.class public Lsun/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final ALG_ID:Ljava/lang/String; = "algorithm"

.field private static final AUTH_INFO_ACCESS_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field private static final BASIC_CONSTRAINT_OID:Ljava/lang/String; = "2.5.29.19"

.field private static final DOT:Ljava/lang/String; = "."

.field private static final EXTENDED_KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.37"

.field public static final INFO:Ljava/lang/String; = "info"

.field private static final ISSUER_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.18"

.field public static final ISSUER_DN:Ljava/lang/String; = "x509.info.issuer.dname"

.field private static final KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final NAME:Ljava/lang/String; = "x509"

.field private static final NUM_STANDARD_KEY_USAGE:I = 0x9

.field public static final PUBLIC_KEY:Ljava/lang/String; = "x509.info.key.value"

.field public static final SERIAL_ID:Ljava/lang/String; = "x509.info.serialNumber.number"

.field public static final SIG:Ljava/lang/String; = "x509.signature"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_CERT:Ljava/lang/String; = "signed_cert"

.field public static final SIG_ALG:Ljava/lang/String; = "x509.algorithm"

.field private static final SUBJECT_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.17"

.field public static final SUBJECT_DN:Ljava/lang/String; = "x509.info.subject.dname"

.field public static final VERSION:Ljava/lang/String; = "x509.info.version.number"

.field private static final serialVersionUID:J = -0x2ffbe8ab06f69c16L


# instance fields
.field protected algId:Lsun/security/x509/AlgorithmId;

.field private authInfoAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation
.end field

.field private extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprints:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lsun/security/x509/X509CertInfo;

.field private issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected signature:[B

.field private signedCert:[B

.field private subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private verificationResult:Z

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v1, 0x2

    #@12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 213
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v4, 0x0

    #@5
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v5, 0x2

    #@12
    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 215
    const/4 v0, 0x0

    #@18
    .line 217
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v1, Ljava/io/BufferedInputStream;

    #@1a
    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@1d
    .line 222
    .local v1, "inBuffered":Ljava/io/BufferedInputStream;
    const v4, 0x7fffffff

    #@20
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    #@23
    .line 223
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v0

    #@27
    .line 238
    .local v0, "der":Lsun/security/util/DerValue;
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@2a
    .line 213
    return-void

    #@2b
    .line 224
    .local v0, "der":Lsun/security/util/DerValue;
    :catch_0
    move-exception v2

    #@2c
    .line 227
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    #@2f
    .line 228
    new-instance v0, Lsun/security/util/DerValue;

    #@31
    .end local v0    # "der":Lsun/security/util/DerValue;
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@34
    .local v0, "der":Lsun/security/util/DerValue;
    goto :goto_0

    #@35
    .line 229
    .end local v0    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v3

    #@36
    .line 230
    .local v3, "ioe1":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateException;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Input stream must be either DER-encoded bytes or RFC1421 hex-encoded DER-encoded bytes: "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 234
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v4

    #@54
    .line 239
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioe1":Ljava/io/IOException;
    .restart local v0    # "der":Lsun/security/util/DerValue;
    :catch_2
    move-exception v2

    #@55
    .line 240
    .restart local v2    # "ioe":Ljava/io/IOException;
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@57
    .line 241
    new-instance v4, Ljava/security/cert/CertificateException;

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "Unable to parse DER value of certificate, "

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-direct {v4, v5, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    throw v4
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 308
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v2, 0x2

    #@12
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 308
    return-void

    #@1b
    .line 311
    :catch_0
    move-exception v0

    #@1c
    .line 312
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@1e
    .line 313
    new-instance v1, Ljava/security/cert/CertificateException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Unable to initialize, "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;[B)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v2, 0x2

    #@12
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 328
    :try_start_0
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 326
    return-void

    #@1b
    .line 329
    :catch_0
    move-exception v0

    #@1c
    .line 330
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@1e
    .line 331
    new-instance v1, Ljava/security/cert/CertificateException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Unable to initialize, "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X509CertInfo;)V
    .locals 2
    .param p1, "certInfo"    # Lsun/security/x509/X509CertInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 296
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v1, 0x2

    #@12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 297
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@19
    .line 296
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 193
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@4
    .line 126
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    .line 129
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@9
    .line 130
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@b
    .line 131
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 132
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@f
    .line 1972
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    const/4 v2, 0x2

    #@12
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@15
    .line 1971
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    .line 195
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@19
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@1c
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 193
    return-void

    #@20
    .line 196
    :catch_0
    move-exception v0

    #@21
    .line 197
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@23
    .line 198
    new-instance v1, Ljava/security/cert/CertificateException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Unable to initialize, "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v1
.end method

.method private static byte2hex(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 2006
    const/16 v3, 0x10

    #@2
    new-array v0, v3, [C

    #@4
    .local v0, "hexChars":[C
    fill-array-data v0, :array_0

    #@7
    .line 2008
    and-int/lit16 v3, p0, 0xf0

    #@9
    shr-int/lit8 v1, v3, 0x4

    #@b
    .line 2009
    .local v1, "high":I
    and-int/lit8 v2, p0, 0xf

    #@d
    .line 2010
    .local v2, "low":I
    aget-char v3, v0, v1

    #@f
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12
    .line 2011
    aget-char v3, v0, v2

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    .line 2005
    return-void

    #@18
    .line 2006
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v7, 0x1

    #@1
    .line 1620
    const/4 v0, 0x0

    #@2
    .line 1621
    .local v0, "mustClone":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "nameEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_1

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/util/List;

    #@12
    .line 1622
    .local v1, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    instance-of v6, v6, [B

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 1624
    const/4 v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1627
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    if-eqz v0, :cond_4

    #@1e
    .line 1628
    new-instance v5, Ljava/util/ArrayList;

    #@20
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 1629
    .local v5, "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v2

    #@27
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/util/List;

    #@33
    .line 1630
    .restart local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    .line 1631
    .local v4, "nameObject":Ljava/lang/Object;
    instance-of v6, v4, [B

    #@39
    if-eqz v6, :cond_2

    #@3b
    .line 1633
    new-instance v3, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@40
    .line 1634
    .local v3, "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v4, [B

    #@42
    .end local v4    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@45
    move-result-object v6

    #@46
    invoke-interface {v3, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 1635
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@4c
    move-result-object v6

    #@4d
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_1

    #@51
    .line 1637
    .end local v3    # "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "nameObject":Ljava/lang/Object;
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_1

    #@55
    .line 1640
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "nameObject":Ljava/lang/Object;
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@58
    move-result-object v6

    #@59
    return-object v6

    #@5a
    .line 1642
    .end local v5    # "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    :cond_4
    return-object p0
.end method

.method private getCertificateFingerPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mdAlg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1986
    const-string/jumbo v4, ""

    #@3
    .line 1988
    .local v4, "fingerPrint":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncoded()[B

    #@6
    move-result-object v3

    #@7
    .line 1989
    .local v3, "encCertInfo":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a
    move-result-object v6

    #@b
    .line 1990
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->digest([B)[B

    #@e
    move-result-object v1

    #@f
    .line 1991
    .local v1, "digest":[B
    new-instance v0, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 1992
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    #@15
    .local v5, "i":I
    :goto_0
    array-length v7, v1

    #@16
    if-ge v5, v7, :cond_0

    #@18
    .line 1993
    aget-byte v7, v1, v5

    #@1a
    invoke-static {v7, v0}, Lsun/security/x509/X509CertImpl;->byte2hex(BLjava/lang/StringBuffer;)V

    #@1d
    .line 1992
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1995
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v4

    #@24
    .line 1999
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "digest":[B
    .end local v3    # "encCertInfo":[B
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :goto_1
    return-object v4

    #@25
    .line 1996
    :catch_0
    move-exception v2

    #@26
    .local v2, "e":Ljava/security/GeneralSecurityException;
    goto :goto_1
.end method

.method public static getEncodedInternal(Ljava/security/cert/Certificate;)[B
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1917
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1918
    check-cast p0, Lsun/security/x509/X509CertImpl;

    #@6
    .end local p0    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1920
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1514
    :try_start_0
    const-string/jumbo v5, "2.5.29.37"

    #@4
    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@7
    move-result-object v2

    #@8
    .line 1515
    .local v2, "ext":[B
    if-nez v2, :cond_0

    #@a
    .line 1516
    return-object v6

    #@b
    .line 1517
    :cond_0
    new-instance v4, Lsun/security/util/DerValue;

    #@d
    invoke-direct {v4, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@10
    .line 1518
    .local v4, "val":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOctetString()[B

    #@13
    move-result-object v0

    #@14
    .line 1521
    .local v0, "data":[B
    new-instance v1, Lsun/security/x509/ExtendedKeyUsageExtension;

    #@16
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    invoke-direct {v1, v5, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@1b
    .line 1522
    .local v1, "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    invoke-virtual {v1}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v5

    #@23
    return-object v5

    #@24
    .line 1523
    .end local v0    # "data":[B
    .end local v1    # "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local v2    # "ext":[B
    .end local v4    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v3

    #@25
    .line 1524
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@27
    invoke-direct {v5, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v5
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1747
    :try_start_0
    const-string/jumbo v6, "2.5.29.18"

    #@4
    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@7
    move-result-object v1

    #@8
    .line 1748
    .local v1, "ext":[B
    if-nez v1, :cond_0

    #@a
    .line 1749
    return-object v7

    #@b
    .line 1752
    :cond_0
    new-instance v5, Lsun/security/util/DerValue;

    #@d
    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@10
    .line 1753
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    #@13
    move-result-object v0

    #@14
    .line 1756
    .local v0, "data":[B
    new-instance v3, Lsun/security/x509/IssuerAlternativeNameExtension;

    #@16
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    invoke-direct {v3, v6, v0}, Lsun/security/x509/IssuerAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 1761
    .local v3, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v6, "issuer_name"

    #@1e
    .line 1760
    invoke-virtual {v3, v6}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    move-result-object v4

    #@22
    .line 1766
    .local v4, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    #@25
    move-result-object v6

    #@26
    return-object v6

    #@27
    .line 1762
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v2

    #@28
    .line 1764
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@2b
    move-result-object v6

    #@2c
    return-object v6

    #@2d
    .line 1767
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v2

    #@2e
    .line 1768
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    #@30
    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v6
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 1903
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 1904
    :catch_0
    move-exception v0

    #@7
    .line 1905
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "Could not parse issuer"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1684
    :try_start_0
    const-string/jumbo v6, "2.5.29.17"

    #@4
    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@7
    move-result-object v1

    #@8
    .line 1685
    .local v1, "ext":[B
    if-nez v1, :cond_0

    #@a
    .line 1686
    return-object v7

    #@b
    .line 1688
    :cond_0
    new-instance v5, Lsun/security/util/DerValue;

    #@d
    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@10
    .line 1689
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    #@13
    move-result-object v0

    #@14
    .line 1692
    .local v0, "data":[B
    new-instance v4, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@16
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    invoke-direct {v4, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 1698
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v6, "subject_name"

    #@1e
    .line 1697
    invoke-virtual {v4, v6}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    move-result-object v3

    #@22
    .line 1703
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    #@25
    move-result-object v6

    #@26
    return-object v6

    #@27
    .line 1699
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v2

    #@28
    .line 1701
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@2b
    move-result-object v6

    #@2c
    return-object v6

    #@2d
    .line 1704
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v2

    #@2e
    .line 1705
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    #@30
    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v6
.end method

.method public static getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 1891
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 1892
    :catch_0
    move-exception v0

    #@7
    .line 1893
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "Could not parse subject"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private static getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1864
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@4
    move-result-object v1

    #@5
    .line 1865
    .local v1, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    #@7
    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@a
    .line 1866
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v6, 0x3

    #@b
    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@e
    move-result-object v6

    #@f
    aget-object v3, v6, v7

    #@11
    .line 1867
    .local v3, "tbsCert":Lsun/security/util/DerValue;
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@13
    .line 1869
    .local v4, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@16
    move-result-object v5

    #@17
    .line 1871
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v5, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 1872
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@20
    move-result-object v5

    #@21
    .line 1875
    :cond_0
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@24
    move-result-object v5

    #@25
    .line 1876
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@28
    move-result-object v5

    #@29
    .line 1877
    if-nez p1, :cond_1

    #@2b
    .line 1878
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2e
    move-result-object v5

    #@2f
    .line 1879
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@32
    move-result-object v5

    #@33
    .line 1881
    :cond_1
    invoke-virtual {v5}, Lsun/security/util/DerValue;->toByteArray()[B

    #@36
    move-result-object v2

    #@37
    .line 1882
    .local v2, "principalBytes":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    #@39
    invoke-direct {v6, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@3c
    return-object v6
.end method

.method public static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 1943
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v1

    #@4
    .line 1944
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@7
    move-result-object v0

    #@8
    .line 1945
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public static isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "sigProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1956
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1958
    if-nez p1, :cond_0

    #@8
    .line 1959
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    #@f
    .line 1963
    :goto_0
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 1961
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    goto :goto_0

    #@19
    .line 1964
    :catch_0
    move-exception v0

    #@1a
    .line 1968
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method private static makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;
    .locals 9
    .param p0, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1564
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 1565
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v7

    #@a
    return-object v7

    #@b
    .line 1567
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    #@d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 1568
    .local v6, "newNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "gname$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lsun/security/x509/GeneralName;

    #@24
    .line 1569
    .local v1, "gname":Lsun/security/x509/GeneralName;
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@27
    move-result-object v4

    #@28
    .line 1570
    .local v4, "name":Lsun/security/x509/GeneralNameInterface;
    new-instance v5, Ljava/util/ArrayList;

    #@2a
    const/4 v7, 0x2

    #@2b
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@2e
    .line 1571
    .local v5, "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@31
    move-result v7

    #@32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v7

    #@36
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 1572
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@3c
    move-result v7

    #@3d
    packed-switch v7, :pswitch_data_0

    #@40
    .line 1599
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@42
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@45
    .line 1601
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    :try_start_0
    invoke-interface {v4, v0}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@48
    .line 1607
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@4b
    move-result-object v7

    #@4c
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 1610
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :goto_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@52
    move-result-object v7

    #@53
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 1574
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_1
    check-cast v4, Lsun/security/x509/RFC822Name;

    #@59
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    goto :goto_1

    #@61
    .line 1577
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_2
    check-cast v4, Lsun/security/x509/DNSName;

    #@63
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_1

    #@6b
    .line 1580
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_3
    check-cast v4, Lsun/security/x509/X500Name;

    #@6d
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@74
    goto :goto_1

    #@75
    .line 1583
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_4
    check-cast v4, Lsun/security/x509/URIName;

    #@77
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/URIName;->getName()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_1

    #@7f
    .line 1587
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_5
    :try_start_1
    check-cast v4, Lsun/security/x509/IPAddressName;

    #@81
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@88
    goto :goto_1

    #@89
    .line 1588
    :catch_0
    move-exception v3

    #@8a
    .line 1590
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@8c
    const-string/jumbo v8, "IPAddress cannot be parsed"

    #@8f
    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@92
    throw v7

    #@93
    .line 1595
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_6
    check-cast v4, Lsun/security/x509/OIDName;

    #@95
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/OIDName;->getOID()Lsun/security/util/ObjectIdentifier;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    goto :goto_1

    #@a1
    .line 1602
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_1
    move-exception v3

    #@a2
    .line 1605
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@a4
    const-string/jumbo v8, "name cannot be encoded"

    #@a7
    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aa
    throw v7

    #@ab
    .line 1612
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v1    # "gname":Lsun/security/x509/GeneralName;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@ae
    move-result-object v7

    #@af
    return-object v7

    #@b0
    .line 1572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1793
    const/4 v0, 0x0

    #@1
    .line 1791
    invoke-direct {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V

    #@4
    .line 1790
    return-void
.end method

.method private parse(Lsun/security/util/DerValue;[B)V
    .locals 7
    .param p1, "val"    # Lsun/security/util/DerValue;
    .param p2, "originalEncodedForm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x30

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 1810
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1811
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@b
    .line 1812
    const-string/jumbo v3, "cannot over-write existing certificate"

    #@e
    .line 1811
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 1814
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@14
    if-eqz v2, :cond_1

    #@16
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@18
    if-eq v2, v6, :cond_2

    #@1a
    .line 1815
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@1c
    .line 1816
    const-string/jumbo v3, "invalid DER-encoded certificate data"

    #@1f
    .line 1815
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 1819
    :cond_2
    if-eqz p2, :cond_3

    #@25
    .line 1818
    .end local p2    # "originalEncodedForm":[B
    :goto_0
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@27
    .line 1821
    const/4 v2, 0x3

    #@28
    new-array v1, v2, [Lsun/security/util/DerValue;

    #@2a
    .line 1823
    .local v1, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v1, v3

    #@32
    .line 1824
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@34
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@37
    move-result-object v2

    #@38
    aput-object v2, v1, v4

    #@3a
    .line 1825
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3f
    move-result-object v2

    #@40
    aput-object v2, v1, v5

    #@42
    .line 1827
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@44
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_4

    #@4a
    .line 1828
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "signed overrun, bytes = "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    .line 1829
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5a
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    #@5d
    move-result v4

    #@5e
    .line 1828
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@69
    throw v2

    #@6a
    .line 1820
    .end local v1    # "seq":[Lsun/security/util/DerValue;
    .restart local p2    # "originalEncodedForm":[B
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@6d
    move-result-object p2

    #@6e
    goto :goto_0

    #@6f
    .line 1831
    .end local p2    # "originalEncodedForm":[B
    .restart local v1    # "seq":[Lsun/security/util/DerValue;
    :cond_4
    aget-object v2, v1, v3

    #@71
    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    #@73
    if-eq v2, v6, :cond_5

    #@75
    .line 1832
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@77
    const-string/jumbo v3, "signed fields invalid"

    #@7a
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2

    #@7e
    .line 1835
    :cond_5
    aget-object v2, v1, v4

    #@80
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@83
    move-result-object v2

    #@84
    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@86
    .line 1836
    aget-object v2, v1, v5

    #@88
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBitString()[B

    #@8b
    move-result-object v2

    #@8c
    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@8e
    .line 1838
    aget-object v2, v1, v4

    #@90
    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@92
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@95
    move-result v2

    #@96
    if-eqz v2, :cond_6

    #@98
    .line 1839
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@9a
    const-string/jumbo v3, "algid field overrun"

    #@9d
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v2

    #@a1
    .line 1841
    :cond_6
    aget-object v2, v1, v5

    #@a3
    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@a5
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_7

    #@ab
    .line 1842
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@ad
    const-string/jumbo v3, "signed fields overrun"

    #@b0
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v2

    #@b4
    .line 1845
    :cond_7
    new-instance v2, Lsun/security/x509/X509CertInfo;

    #@b6
    aget-object v3, v1, v3

    #@b8
    invoke-direct {v2, v3}, Lsun/security/x509/X509CertInfo;-><init>(Lsun/security/util/DerValue;)V

    #@bb
    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@bd
    .line 1848
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@bf
    .line 1849
    const-string/jumbo v3, "algorithmID.algorithm"

    #@c2
    .line 1848
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@c5
    move-result-object v0

    #@c6
    check-cast v0, Lsun/security/x509/AlgorithmId;

    #@c8
    .line 1852
    .local v0, "infoSigAlg":Lsun/security/x509/AlgorithmId;
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@ca
    invoke-virtual {v2, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    #@cd
    move-result v2

    #@ce
    if-nez v2, :cond_8

    #@d0
    .line 1853
    new-instance v2, Ljava/security/cert/CertificateException;

    #@d2
    const-string/jumbo v3, "Signature algorithm mismatch"

    #@d5
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v2

    #@d9
    .line 1854
    :cond_8
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@db
    .line 1808
    return-void
.end method

.method private readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    const/4 v3, 0x0

    #@1
    .line 256
    .local v3, "der":Lsun/security/util/DerValue;
    const/4 v6, 0x0

    #@2
    .line 258
    .local v6, "line":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    #@4
    new-instance v7, Ljava/io/InputStreamReader;

    #@6
    const-string/jumbo v8, "ASCII"

    #@9
    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c
    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@f
    .line 260
    .local v0, "certBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v6

    #@13
    .line 265
    .local v6, "line":Ljava/lang/String;
    const-string/jumbo v7, "-----BEGIN CERTIFICATE-----"

    #@16
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_2

    #@1c
    .line 267
    new-instance v1, Lsun/misc/BASE64Decoder;

    #@1e
    invoke-direct {v1}, Lsun/misc/BASE64Decoder;-><init>()V

    #@21
    .line 268
    .local v1, "decoder":Lsun/misc/BASE64Decoder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@23
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@26
    .line 270
    .local v2, "decstream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 271
    const-string/jumbo v7, "-----END CERTIFICATE-----"

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_1

    #@35
    .line 272
    new-instance v3, Lsun/security/util/DerValue;

    #@37
    .end local v3    # "der":Lsun/security/util/DerValue;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v3, v7}, Lsun/security/util/DerValue;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    .line 286
    :cond_0
    return-object v3

    #@3f
    .line 261
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .local v6, "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@40
    .line 262
    .local v4, "ioe1":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    #@42
    new-instance v8, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v9, "Unable to read InputStream: "

    #@4a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    .line 263
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v7

    #@5e
    .line 275
    .end local v4    # "ioe1":Ljava/io/IOException;
    .restart local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .restart local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .local v6, "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1, v6}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@65
    goto :goto_0

    #@66
    .line 278
    .end local v3    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v5

    #@67
    .line 279
    .local v5, "ioe2":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    #@69
    new-instance v8, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v9, "Unable to read InputStream: "

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    .line 280
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@78
    move-result-object v9

    #@79
    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@84
    throw v7

    #@85
    .line 283
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ioe2":Ljava/io/IOException;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    :cond_2
    new-instance v7, Ljava/io/IOException;

    #@87
    const-string/jumbo v8, "InputStream is not RFC1421 hex-encoded DER bytes"

    #@8a
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v7
.end method

.method public static toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1931
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1932
    check-cast p0, Lsun/security/x509/X509CertImpl;

    #@6
    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    return-object p0

    #@7
    .line 1934
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static verify(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 0
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

    #@0
    .prologue
    .line 525
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    #@3
    .line 524
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 620
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    .line 621
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 619
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 640
    const/4 v1, 0x0

    #@1
    .line 642
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    const-string/jumbo v3, "validity"

    #@6
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    check-cast v1, Lsun/security/x509/CertificateValidity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 646
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    if-nez v1, :cond_0

    #@e
    .line 647
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    #@10
    const-string/jumbo v3, "Null validity period"

    #@13
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 643
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :catch_0
    move-exception v0

    #@18
    .line 644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    #@1a
    const-string/jumbo v3, "Incorrect validity period"

    #@1d
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :cond_0
    invoke-virtual {v1, p1}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    #@24
    .line 638
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 758
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 759
    new-instance v3, Ljava/security/cert/CertificateException;

    #@7
    const-string/jumbo v4, "cannot over-write existing certificate"

    #@a
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 762
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    #@10
    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@13
    .line 763
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 764
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 765
    new-instance v3, Ljava/security/cert/CertificateException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 769
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@3c
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@43
    .line 770
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 772
    const-string/jumbo v3, "info"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_3

    #@50
    .line 773
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    if-eqz v3, :cond_2

    #@56
    .line 774
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@58
    .line 756
    :goto_0
    return-void

    #@59
    .line 776
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@5b
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->delete(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 778
    :cond_3
    const-string/jumbo v3, "algorithm"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@69
    move-result v3

    #@6a
    if-eqz v3, :cond_4

    #@6c
    .line 779
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@6e
    goto :goto_0

    #@6f
    .line 780
    :cond_4
    const-string/jumbo v3, "signature"

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_5

    #@78
    .line 781
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@7a
    goto :goto_0

    #@7b
    .line 782
    :cond_5
    const-string/jumbo v3, "signed_cert"

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_6

    #@84
    .line 783
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@86
    goto :goto_0

    #@87
    .line 785
    :cond_6
    new-instance v3, Ljava/security/cert/CertificateException;

    #@89
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v5, "Attribute name not recognized or delete() not allowed for the same: "

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v3
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 363
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Null certificate to encode"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 364
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [B

    #@15
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@18
    .line 361
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@2
    if-nez v1, :cond_0

    #@4
    .line 344
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@6
    .line 345
    const-string/jumbo v2, "Null certificate to encode"

    #@9
    .line 344
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 347
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@f
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [B

    #@15
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 342
    return-void

    #@19
    .line 348
    :catch_0
    move-exception v0

    #@1a
    .line 349
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@1c
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 663
    new-instance v0, Lsun/security/x509/X509AttributeName;

    #@3
    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@6
    .line 664
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 665
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v5, "x509"

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_0

    #@13
    .line 666
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@15
    new-instance v6, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v7, "Invalid root of attribute name, expected [x509], received ["

    #@1d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    .line 668
    const-string/jumbo v7, "]"

    #@28
    .line 666
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@33
    throw v5

    #@34
    .line 670
    :cond_0
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@36
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-direct {v1, v5}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@3d
    .line 671
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 673
    const-string/jumbo v5, "info"

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_3

    #@4a
    .line 674
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@4c
    if-nez v5, :cond_1

    #@4e
    .line 675
    return-object v6

    #@4f
    .line 677
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    if-eqz v5, :cond_2

    #@55
    .line 679
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@57
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    move-result-object v5

    #@5f
    return-object v5

    #@60
    .line 682
    :catch_0
    move-exception v3

    #@61
    .line 683
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@63
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 680
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v2

    #@6c
    .line 681
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@6e
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@75
    throw v5

    #@76
    .line 686
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@78
    return-object v5

    #@79
    .line 688
    :cond_3
    const-string/jumbo v5, "algorithm"

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7f
    move-result v5

    #@80
    if-eqz v5, :cond_4

    #@82
    .line 689
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@84
    return-object v5

    #@85
    .line 690
    :cond_4
    const-string/jumbo v5, "signature"

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_6

    #@8e
    .line 691
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@90
    if-eqz v5, :cond_5

    #@92
    .line 692
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@94
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    return-object v5

    #@99
    .line 694
    :cond_5
    return-object v6

    #@9a
    .line 695
    :cond_6
    const-string/jumbo v5, "signed_cert"

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a0
    move-result v5

    #@a1
    if-eqz v5, :cond_8

    #@a3
    .line 696
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@a5
    if-eqz v5, :cond_7

    #@a7
    .line 697
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@a9
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@ac
    move-result-object v5

    #@ad
    return-object v5

    #@ae
    .line 699
    :cond_7
    return-object v6

    #@af
    .line 701
    :cond_8
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@b1
    new-instance v6, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v7, "Attribute name not recognized or get() not allowed for the same: "

    #@b9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v6

    #@bd
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v6

    #@c1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v6

    #@c5
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v5
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1120
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@4
    move-result-object v0

    #@5
    .line 1121
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_0

    #@7
    .line 1124
    :try_start_0
    const-string/jumbo v2, "key_id"

    #@a
    .line 1123
    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lsun/security/x509/KeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v2

    #@11
    .line 1125
    :catch_0
    move-exception v1

    #@12
    .line 1127
    :cond_0
    return-object v3
.end method

.method public getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;
    .locals 1

    #@0
    .prologue
    .line 1774
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1773
    check-cast v0, Lsun/security/x509/AuthorityInfoAccessExtension;

    #@8
    return-object v0
.end method

.method public getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 1

    #@0
    .prologue
    .line 1152
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1151
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@8
    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1535
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@3
    invoke-static {v3}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1536
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_0

    #@9
    .line 1537
    return v4

    #@a
    .line 1539
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    #@10
    .line 1540
    .local v0, "certExt":Lsun/security/x509/BasicConstraintsExtension;
    if-nez v0, :cond_1

    #@12
    .line 1541
    return v4

    #@13
    .line 1543
    :cond_1
    const-string/jumbo v3, "is_ca"

    #@16
    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/lang/Boolean;

    #@1c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 1546
    const-string/jumbo v3, "path_len"

    #@25
    .line 1545
    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result v3

    #@2f
    return v3

    #@30
    .line 1548
    :cond_2
    return v4

    #@31
    .line 1549
    .end local v0    # "certExt":Lsun/security/x509/BasicConstraintsExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@32
    .line 1550
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public getBasicConstraintsExtension()Lsun/security/x509/BasicConstraintsExtension;
    .locals 1

    #@0
    .prologue
    .line 1162
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1161
    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    #@8
    return-object v0
.end method

.method public getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;
    .locals 1

    #@0
    .prologue
    .line 1261
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1260
    check-cast v0, Lsun/security/x509/CRLDistributionPointsExtension;

    #@8
    return-object v0
.end method

.method public getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;
    .locals 1

    #@0
    .prologue
    .line 1172
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1171
    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    #@8
    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 1291
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1292
    return-object v7

    #@6
    .line 1295
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 1296
    const-string/jumbo v6, "extensions"

    #@b
    .line 1295
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lsun/security/x509/CertificateExtensions;

    #@11
    .line 1297
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    #@13
    .line 1298
    return-object v7

    #@14
    .line 1300
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    #@16
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@19
    .line 1301
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lsun/security/x509/Extension;

    #@2d
    .line 1302
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 1303
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 1307
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    #@40
    .line 1308
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    #@41
    .line 1306
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_3
    return-object v3
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
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
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 796
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "x509.info"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 797
    const-string/jumbo v1, "x509.algorithm"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 798
    const-string/jumbo v1, "x509.signature"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@17
    .line 799
    const-string/jumbo v1, "x509.signed_cert"

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 801
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 376
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 386
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    #@6
    .line 387
    const-string/jumbo v1, "Null certificate to encode"

    #@9
    .line 386
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 389
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@f
    return-object v0
.end method

.method public declared-synchronized getExtendedKeyUsage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1492
    :try_start_0
    iget-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1493
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    return-object v1

    #@e
    .line 1495
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    .line 1496
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-nez v0, :cond_1

    #@14
    monitor-exit p0

    #@15
    .line 1497
    return-object v2

    #@16
    .line 1500
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    .line 1499
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    #@20
    .line 1501
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return-object v1

    #@24
    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method

.method public getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    .locals 1

    #@0
    .prologue
    .line 1182
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1181
    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    #@8
    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 9
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1351
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 1352
    return-object v8

    #@6
    .line 1357
    :cond_0
    :try_start_0
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v7, "extensions"

    #@b
    invoke-virtual {v6, v7}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@11
    .line 1361
    .local v4, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    #@13
    .line 1362
    return-object v8

    #@14
    .line 1358
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    #@15
    .line 1359
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v8

    #@16
    .line 1364
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v4, v6}, Lsun/security/x509/CertificateExtensions;->getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;

    #@1d
    move-result-object v1

    #@1e
    .line 1365
    .local v1, "ex":Lsun/security/x509/Extension;
    if-eqz v1, :cond_2

    #@20
    .line 1366
    return-object v1

    #@21
    .line 1368
    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@24
    move-result-object v6

    #@25
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v3

    #@29
    .local v3, "ex2$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_4

    #@2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Lsun/security/x509/Extension;

    #@35
    .line 1369
    .local v2, "ex2":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_3

    #@3f
    .line 1371
    return-object v2

    #@40
    .line 1375
    .end local v2    # "ex2":Lsun/security/x509/Extension;
    :cond_4
    return-object v8

    #@41
    .line 1377
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v3    # "ex2$iterator":Ljava/util/Iterator;
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v5

    #@42
    .line 1378
    .local v5, "ioe":Ljava/io/IOException;
    return-object v8
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 15
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 1411
    :try_start_0
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-direct {v9, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    .line 1412
    .local v9, "findOID":Lsun/security/util/ObjectIdentifier;
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    #@b
    move-result-object v6

    #@c
    .line 1413
    .local v6, "extAlias":Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 1414
    .local v1, "certExt":Lsun/security/x509/Extension;
    iget-object v12, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@f
    .line 1415
    const-string/jumbo v13, "extensions"

    #@12
    .line 1414
    invoke-virtual {v12, v13}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v8

    #@16
    check-cast v8, Lsun/security/x509/CertificateExtensions;

    #@18
    .line 1417
    .local v8, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v6, :cond_4

    #@1a
    .line 1419
    if-nez v8, :cond_0

    #@1c
    .line 1420
    return-object v14

    #@1d
    .line 1423
    :cond_0
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@20
    move-result-object v12

    #@21
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v5

    #@25
    .local v5, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v12

    #@29
    if-eqz v12, :cond_2

    #@2b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Lsun/security/x509/Extension;

    #@31
    .line 1424
    .local v4, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@34
    move-result-object v10

    #@35
    .line 1425
    .local v10, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v10, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v12

    #@39
    if-eqz v12, :cond_1

    #@3b
    .line 1426
    move-object v1, v4

    #@3c
    .line 1437
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "ex":Lsun/security/x509/Extension;
    .end local v5    # "ex$iterator":Ljava/util/Iterator;
    .end local v10    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    #@3e
    .line 1438
    if-eqz v8, :cond_3

    #@40
    .line 1439
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@43
    move-result-object v12

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lsun/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 1441
    :cond_3
    if-nez v1, :cond_5

    #@4e
    .line 1442
    return-object v14

    #@4f
    .line 1432
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_4
    :try_start_1
    invoke-virtual {p0, v6}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@52
    move-result-object v12

    #@53
    move-object v0, v12

    #@54
    check-cast v0, Lsun/security/x509/Extension;

    #@56
    move-object v1, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .local v1, "certExt":Lsun/security/x509/Extension;
    goto :goto_0

    #@58
    .line 1445
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@5b
    move-result-object v7

    #@5c
    .line 1446
    .local v7, "extData":[B
    if-nez v7, :cond_6

    #@5e
    .line 1447
    return-object v14

    #@5f
    .line 1449
    :cond_6
    new-instance v11, Lsun/security/util/DerOutputStream;

    #@61
    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    #@64
    .line 1450
    .local v11, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v11, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@67
    .line 1451
    invoke-virtual {v11}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@6a
    move-result-object v12

    #@6b
    return-object v12

    #@6c
    .line 1452
    .end local v6    # "extAlias":Ljava/lang/String;
    .end local v7    # "extData":[B
    .end local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v2

    #@6d
    .line 1453
    .local v2, "e":Ljava/lang/Exception;
    return-object v14

    #@6e
    .line 1433
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "certExt":Lsun/security/x509/Extension;
    .restart local v6    # "extAlias":Ljava/lang/String;
    .restart local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .restart local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    :catch_1
    move-exception v3

    #@6f
    .local v3, "e":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method public getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1975
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1976
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->getCertificateFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 1978
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    return-object v0
.end method

.method public getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 1

    #@0
    .prologue
    .line 1192
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1191
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    #@8
    return-object v0
.end method

.method public declared-synchronized getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1718
    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1719
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    #@c
    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v3

    #@10
    monitor-exit p0

    #@11
    return-object v3

    #@12
    .line 1722
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 1723
    .local v1, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    if-nez v1, :cond_1

    #@18
    monitor-exit p0

    #@19
    .line 1724
    return-object v4

    #@1a
    .line 1729
    :cond_1
    :try_start_2
    const-string/jumbo v3, "issuer_name"

    #@1d
    .line 1728
    invoke-virtual {v1, v3}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 1734
    .local v2, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    #@27
    .line 1735
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    return-object v3

    #@2b
    .line 1730
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    #@2c
    .line 1732
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    move-result-object v3

    #@30
    monitor-exit p0

    #@31
    return-object v3

    #@32
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :catchall_0
    move-exception v3

    #@33
    monitor-exit p0

    #@34
    throw v3
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 943
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 944
    return-object v4

    #@6
    .line 946
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "issuer.dname"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 948
    .local v1, "issuer":Ljava/security/Principal;
    return-object v1

    #@12
    .line 949
    .end local v1    # "issuer":Ljava/security/Principal;
    :catch_0
    move-exception v0

    #@13
    .line 950
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerUniqueID()[Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1084
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1085
    return-object v4

    #@6
    .line 1087
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 1088
    const-string/jumbo v3, "issuerID"

    #@b
    .line 1087
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/security/x509/UniqueIdentity;

    #@11
    .line 1089
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_1

    #@13
    .line 1090
    return-object v4

    #@14
    .line 1092
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 1093
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    #@1a
    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 960
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 961
    return-object v4

    #@6
    .line 964
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 965
    const-string/jumbo v3, "issuer.x500principal"

    #@b
    .line 964
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 967
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    #@12
    .line 968
    .end local v1    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    #@13
    .line 969
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getKeyUsage()[Z
    .locals 9

    #@0
    .prologue
    const/16 v6, 0x9

    #@2
    const/4 v8, 0x0

    #@3
    .line 1464
    :try_start_0
    sget-object v5, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    invoke-static {v5}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 1465
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_0

    #@b
    .line 1466
    return-object v8

    #@c
    .line 1468
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lsun/security/x509/KeyUsageExtension;

    #@12
    .line 1469
    .local v0, "certExt":Lsun/security/x509/KeyUsageExtension;
    if-nez v0, :cond_1

    #@14
    .line 1470
    return-object v8

    #@15
    .line 1472
    :cond_1
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    #@18
    move-result-object v3

    #@19
    .line 1473
    .local v3, "ret":[Z
    array-length v5, v3

    #@1a
    if-ge v5, v6, :cond_2

    #@1c
    .line 1474
    const/16 v5, 0x9

    #@1e
    new-array v4, v5, [Z

    #@20
    .line 1475
    .local v4, "usageBits":[Z
    array-length v5, v3

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    invoke-static {v3, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1476
    move-object v3, v4

    #@27
    .line 1478
    .end local v4    # "usageBits":[Z
    :cond_2
    return-object v3

    #@28
    .line 1479
    .end local v0    # "certExt":Lsun/security/x509/KeyUsageExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    .end local v3    # "ret":[Z
    :catch_0
    move-exception v1

    #@29
    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 808
    const-string/jumbo v0, "x509"

    #@3
    return-object v0
.end method

.method public getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;
    .locals 1

    #@0
    .prologue
    .line 1201
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1200
    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    #@8
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 1321
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1322
    return-object v7

    #@6
    .line 1325
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 1326
    const-string/jumbo v6, "extensions"

    #@b
    .line 1325
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lsun/security/x509/CertificateExtensions;

    #@11
    .line 1327
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_1

    #@13
    .line 1328
    return-object v7

    #@14
    .line 1330
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    #@16
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@19
    .line 1331
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lsun/security/x509/Extension;

    #@2d
    .line 1332
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_2

    #@33
    .line 1333
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 1338
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    #@40
    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    #@41
    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_3
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@48
    move-result-object v5

    #@49
    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 1337
    return-object v3
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 996
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 997
    return-object v4

    #@6
    .line 999
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "validity.notAfter"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1001
    .local v0, "d":Ljava/util/Date;
    return-object v0

    #@12
    .line 1002
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    #@13
    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 979
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 980
    return-object v4

    #@6
    .line 982
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "validity.notBefore"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 984
    .local v0, "d":Ljava/util/Date;
    return-object v0

    #@12
    .line 985
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    #@13
    .line 986
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;
    .locals 1

    #@0
    .prologue
    .line 1211
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1210
    check-cast v0, Lsun/security/x509/PolicyConstraintsExtension;

    #@8
    return-object v0
.end method

.method public getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;
    .locals 1

    #@0
    .prologue
    .line 1221
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1220
    check-cast v0, Lsun/security/x509/PolicyMappingsExtension;

    #@8
    return-object v0
.end method

.method public getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;
    .locals 1

    #@0
    .prologue
    .line 1230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1229
    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    #@8
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 842
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 843
    return-object v4

    #@6
    .line 845
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "key.value"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 847
    .local v1, "key":Ljava/security/PublicKey;
    return-object v1

    #@12
    .line 848
    .end local v1    # "key":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    #@13
    .line 849
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 876
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    #@4
    move-result-object v0

    #@5
    .line 878
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getSerialNumberObject()Lsun/security/x509/SerialNumber;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 888
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 889
    return-object v4

    #@6
    .line 891
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 892
    const-string/jumbo v3, "serialNumber.number"

    #@b
    .line 891
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/security/x509/SerialNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 894
    .local v1, "ser":Lsun/security/x509/SerialNumber;
    return-object v1

    #@12
    .line 895
    .end local v1    # "ser":Lsun/security/x509/SerialNumber;
    :catch_0
    move-exception v0

    #@13
    .line 896
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1043
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1044
    return-object v1

    #@6
    .line 1045
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1055
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1056
    return-object v2

    #@6
    .line 1057
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    .line 1058
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getSigAlgParams()[B
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1069
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1070
    return-object v2

    #@6
    .line 1072
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1073
    :catch_0
    move-exception v0

    #@e
    .line 1074
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getSignature()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1028
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1029
    return-object v2

    #@7
    .line 1030
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 1031
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 1032
    return-object v0
.end method

.method public getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    .locals 1

    #@0
    .prologue
    .line 1241
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1240
    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@8
    return-object v0
.end method

.method public declared-synchronized getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1655
    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1656
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    #@c
    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v3

    #@10
    monitor-exit p0

    #@11
    return-object v3

    #@12
    .line 1659
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v2

    #@16
    .line 1660
    .local v2, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v2, :cond_1

    #@18
    monitor-exit p0

    #@19
    .line 1661
    return-object v4

    #@1a
    .line 1666
    :cond_1
    :try_start_2
    const-string/jumbo v3, "subject_name"

    #@1d
    .line 1665
    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    move-result-object v1

    #@21
    .line 1671
    .local v1, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    #@27
    .line 1672
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    return-object v3

    #@2b
    .line 1667
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    #@2c
    .line 1669
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    move-result-object v3

    #@30
    monitor-exit p0

    #@31
    return-object v3

    #@32
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catchall_0
    move-exception v3

    #@33
    monitor-exit p0

    #@34
    throw v3
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 907
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 908
    return-object v4

    #@6
    .line 910
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "subject.dname"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 912
    .local v1, "subject":Ljava/security/Principal;
    return-object v1

    #@12
    .line 913
    .end local v1    # "subject":Ljava/security/Principal;
    :catch_0
    move-exception v0

    #@13
    .line 914
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1134
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@4
    move-result-object v1

    #@5
    .line 1135
    .local v1, "ski":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v1, :cond_0

    #@7
    .line 1138
    :try_start_0
    const-string/jumbo v2, "key_id"

    #@a
    .line 1137
    invoke-virtual {v1, v2}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 1139
    :catch_0
    move-exception v0

    #@10
    .line 1141
    :cond_0
    return-object v3
.end method

.method public getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;
    .locals 1

    #@0
    .prologue
    .line 1251
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 1250
    check-cast v0, Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@8
    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1104
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1105
    return-object v4

    #@6
    .line 1107
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 1108
    const-string/jumbo v3, "subjectID"

    #@b
    .line 1107
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/security/x509/UniqueIdentity;

    #@11
    .line 1109
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_1

    #@13
    .line 1110
    return-object v4

    #@14
    .line 1112
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 1113
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    #@1a
    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 924
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 925
    return-object v4

    #@6
    .line 928
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 929
    const-string/jumbo v3, "subject.x500principal"

    #@b
    .line 928
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 931
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    #@12
    .line 932
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    #@13
    .line 933
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1017
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@6
    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1019
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    #@d
    const-string/jumbo v1, "Uninitialized certificate"

    #@10
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public getUnparseableExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1383
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1384
    return-object v5

    #@6
    .line 1389
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v4, "extensions"

    #@b
    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@11
    .line 1393
    .local v1, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_1

    #@13
    .line 1394
    return-object v5

    #@14
    .line 1390
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    #@15
    .line 1391
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v5

    #@16
    .line 1396
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lsun/security/x509/Extension;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    return-object v3

    #@25
    .line 1398
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v2

    #@26
    .line 1399
    .local v2, "ioe":Ljava/io/IOException;
    return-object v5
.end method

.method public getVersion()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 859
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 860
    return v4

    #@6
    .line 862
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    const-string/jumbo v3, "version.number"

    #@b
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/lang/Integer;

    #@11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    .line 864
    .local v1, "vers":I
    add-int/lit8 v2, v1, 0x1

    #@17
    return v2

    #@18
    .line 865
    .end local v1    # "vers":I
    :catch_0
    move-exception v0

    #@19
    .line 866
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1269
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1270
    return v4

    #@6
    .line 1272
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@8
    .line 1273
    const-string/jumbo v3, "extensions"

    #@b
    .line 1272
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/security/x509/CertificateExtensions;

    #@11
    .line 1274
    .local v1, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_1

    #@13
    .line 1275
    return v4

    #@14
    .line 1276
    :cond_1
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 1277
    .end local v1    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    #@1a
    .line 1278
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 717
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 718
    new-instance v3, Ljava/security/cert/CertificateException;

    #@7
    const-string/jumbo v4, "cannot over-write existing certificate"

    #@a
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 721
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    #@10
    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@13
    .line 722
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 723
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 724
    new-instance v3, Ljava/security/cert/CertificateException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 727
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@3c
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@43
    .line 728
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 730
    const-string/jumbo v3, "info"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_4

    #@50
    .line 731
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    if-nez v3, :cond_3

    #@56
    .line 732
    instance-of v3, p2, Lsun/security/x509/X509CertInfo;

    #@58
    if-nez v3, :cond_2

    #@5a
    .line 733
    new-instance v3, Ljava/security/cert/CertificateException;

    #@5c
    const-string/jumbo v4, "Attribute value should be of type X509CertInfo."

    #@5f
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v3

    #@63
    .line 736
    :cond_2
    check-cast p2, Lsun/security/x509/X509CertInfo;

    #@65
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@67
    .line 737
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@69
    .line 715
    :goto_0
    return-void

    #@6a
    .line 739
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@6c
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v3, v4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@73
    .line 740
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@75
    goto :goto_0

    #@76
    .line 743
    :cond_4
    new-instance v3, Ljava/security/cert/CertificateException;

    #@78
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v5, "Attribute name not recognized or set() not allowed for the same: "

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v3
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
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

    #@0
    .prologue
    .line 547
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 546
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
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

    #@0
    .prologue
    .line 571
    :try_start_0
    iget-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 572
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    #@6
    .line 573
    const-string/jumbo v6, "cannot over-write existing certificate"

    #@9
    .line 572
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 605
    :catch_0
    move-exception v0

    #@e
    .line 606
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    #@10
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@17
    throw v5

    #@18
    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    #@19
    .line 575
    .local v3, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    #@1b
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_2

    #@21
    .line 576
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@24
    move-result-object v3

    #@25
    .line 580
    .local v3, "sigEngine":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@28
    .line 583
    invoke-virtual {v3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    #@2f
    move-result-object v5

    #@30
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@32
    .line 585
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@34
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@37
    .line 586
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@39
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3c
    .line 589
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@3e
    invoke-virtual {v5, v4}, Lsun/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    #@41
    .line 590
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@44
    move-result-object v2

    #@45
    .line 593
    .local v2, "rawCert":[B
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@47
    invoke-virtual {v5, v4}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@4a
    .line 596
    array-length v5, v2

    #@4b
    const/4 v6, 0x0

    #@4c
    invoke-virtual {v3, v2, v6, v5}, Ljava/security/Signature;->update([BII)V

    #@4f
    .line 597
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    #@52
    move-result-object v5

    #@53
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@55
    .line 598
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@57
    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    #@5a
    .line 601
    const/16 v5, 0x30

    #@5c
    invoke-virtual {v1, v5, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@5f
    .line 602
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@62
    move-result-object v5

    #@63
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@65
    .line 603
    const/4 v5, 0x1

    #@66
    iput-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    #@68
    .line 569
    return-void

    #@69
    .line 578
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "rawCert":[B
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    .local v3, "sigEngine":Ljava/security/Signature;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6c
    move-result-object v3

    #@6d
    .local v3, "sigEngine":Ljava/security/Signature;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 818
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 819
    :cond_0
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 818
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 823
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[\n"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 824
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@1d
    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "\n"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 825
    const-string/jumbo v2, "  Algorithm: ["

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@34
    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, "]\n"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 827
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@44
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@47
    .line 828
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v2, "  Signature:\n"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@50
    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 829
    const-string/jumbo v2, "\n]"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 831
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    return-object v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
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

    #@0
    .prologue
    .line 411
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@6
    .line 409
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 433
    if-nez p2, :cond_0

    #@3
    .line 434
    :try_start_0
    const-string/jumbo p2, ""

    #@6
    .line 436
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@8
    if-eqz v2, :cond_2

    #@a
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 439
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    #@14
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 440
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    if-eqz v2, :cond_1

    #@1e
    monitor-exit p0

    #@1f
    .line 441
    return-void

    #@20
    .line 443
    :cond_1
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    #@22
    const-string/jumbo v3, "Signature does not match."

    #@25
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2

    #@2c
    .line 447
    :cond_2
    :try_start_2
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 448
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    #@32
    const-string/jumbo v3, "Uninitialized certificate"

    #@35
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 451
    :cond_3
    const/4 v1, 0x0

    #@3a
    .line 452
    .local v1, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_4

    #@40
    .line 453
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@42
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@49
    move-result-object v1

    #@4a
    .line 457
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@4d
    .line 459
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@4f
    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    #@52
    move-result-object v0

    #@53
    .line 460
    .local v0, "rawCert":[B
    array-length v2, v0

    #@54
    const/4 v3, 0x0

    #@55
    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    #@58
    .line 463
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@5a
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@5d
    move-result v2

    #@5e
    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    #@60
    .line 464
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@62
    .line 465
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    #@64
    .line 467
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    #@66
    if-nez v2, :cond_5

    #@68
    .line 468
    new-instance v2, Ljava/security/SignatureException;

    #@6a
    const-string/jumbo v3, "Signature does not match."

    #@6d
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 455
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_4
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@73
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    move-result-object v1

    #@7b
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    #@7c
    .restart local v0    # "rawCert":[B
    :cond_5
    monitor-exit p0

    #@7d
    .line 432
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 492
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    #@3
    if-nez v2, :cond_0

    #@5
    .line 493
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    #@7
    const-string/jumbo v3, "Uninitialized certificate"

    #@a
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 496
    :cond_0
    const/4 v1, 0x0

    #@12
    .line 497
    .local v1, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_1

    #@14
    .line 498
    :try_start_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@16
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@1d
    move-result-object v1

    #@1e
    .line 502
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@21
    .line 504
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    #@23
    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    #@26
    move-result-object v0

    #@27
    .line 505
    .local v0, "rawCert":[B
    array-length v2, v0

    #@28
    const/4 v3, 0x0

    #@29
    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    #@2c
    .line 508
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    #@2e
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@31
    move-result v2

    #@32
    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    #@34
    .line 509
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@36
    .line 511
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    #@38
    if-nez v2, :cond_2

    #@3a
    .line 512
    new-instance v2, Ljava/security/SignatureException;

    #@3c
    const-string/jumbo v3, "Signature does not match."

    #@3f
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 500
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    #@45
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    move-result-object v1

    #@4d
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    #@4e
    .restart local v0    # "rawCert":[B
    :cond_2
    monitor-exit p0

    #@4f
    .line 491
    return-void
.end method
