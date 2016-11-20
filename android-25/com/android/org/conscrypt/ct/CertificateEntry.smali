.class public Lcom/android/org/conscrypt/ct/CertificateEntry;
.super Ljava/lang/Object;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    }
.end annotation


# instance fields
.field private final certificate:[B

.field private final entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final issuerKeyHash:[B


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .locals 2
    .param p1, "entryType"    # Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .param p2, "certificate"    # [B
    .param p3, "issuerKeyHash"    # [B

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@5
    if-ne p1, v0, :cond_0

    #@7
    if-nez p3, :cond_0

    #@9
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "issuerKeyHash missing for precert entry."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 60
    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@14
    if-ne p1, v0, :cond_1

    #@16
    if-eqz p3, :cond_1

    #@18
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "unexpected issuerKeyHash for X509 entry."

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 64
    :cond_1
    if-eqz p3, :cond_2

    #@23
    array-length v0, p3

    #@24
    const/16 v1, 0x20

    #@26
    if-eq v0, v1, :cond_2

    #@28
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v1, "issuerKeyHash must be 32 bytes long"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 68
    :cond_2
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@33
    .line 69
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    #@35
    .line 70
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    #@37
    .line 57
    return-void
.end method

.method public static createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 8
    .param p0, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p1, "issuer"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    #@3
    move-result-object v6

    #@4
    const-string/jumbo v7, "1.3.6.1.4.1.11129.2.4.2"

    #@7
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_0

    #@d
    .line 84
    new-instance v6, Ljava/security/cert/CertificateException;

    #@f
    const-string/jumbo v7, "Certificate does not contain embedded signed timestamps"

    #@12
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 96
    :catch_0
    move-exception v0

    #@17
    .line 98
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@19
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v6

    #@1d
    .line 87
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :try_start_1
    const-string/jumbo v6, "1.3.6.1.4.1.11129.2.4.2"

    #@20
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@23
    move-result-object v4

    #@24
    .line 88
    .local v4, "preCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    #@27
    move-result-object v5

    #@28
    .line 90
    .local v5, "tbs":[B
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2b
    move-result-object v6

    #@2c
    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    #@2f
    move-result-object v1

    #@30
    .line 91
    .local v1, "issuerKey":[B
    const-string/jumbo v6, "SHA-256"

    #@33
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@36
    move-result-object v3

    #@37
    .line 92
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    #@3a
    .line 93
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    #@3d
    move-result-object v2

    #@3e
    .line 95
    .local v2, "issuerKeyHash":[B
    invoke-static {v5, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    move-result-object v6

    #@42
    return-object v6
.end method

.method public static createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 2
    .param p0, "tbsCertificate"    # [B
    .param p1, "issuerKeyHash"    # [B

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    #@7
    return-object v0
.end method

.method public static createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 3
    .param p0, "x509Certificate"    # [B

    #@0
    .prologue
    .line 103
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    #@8
    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    const/4 v2, 0x2

    #@8
    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    #@b
    .line 126
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@d
    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 127
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    #@13
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    #@16
    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    #@18
    const/4 v1, 0x3

    #@19
    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    #@1c
    .line 124
    return-void
.end method

.method public getCertificate()[B
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    #@2
    return-object v0
.end method

.method public getEntryType()Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    #@2
    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    #@2
    return-object v0
.end method
