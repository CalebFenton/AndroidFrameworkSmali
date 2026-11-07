.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLObject.java"


# instance fields
.field private final blacklist cacheLock:Ljava/lang/Object;

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z

.field private blacklist internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    .registers 9

    .line 27
    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgName(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgParams(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)[B

    move-result-object v4

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirectCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 19
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method private static blacklist createSigAlgName(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;
    .registers 4

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRL contents invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist createSigAlgParams(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)[B
    .registers 4

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_c
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 140
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRL contents invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .registers 12

    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_c

    .line 85
    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_43

    .line 87
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    const/4 v1, 0x0

    .line 93
    :try_start_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_19

    move-object v9, v0

    move-object v10, v1

    goto :goto_21

    :catch_19
    move-exception v0

    .line 97
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/Throwable;)V

    move-object v9, v1

    move-object v10, v2

    .line 100
    :goto_21
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V

    .line 103
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_33
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_3d

    .line 107
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    goto :goto_3d

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_41

    .line 110
    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v2

    return-object p0

    .line 111
    :goto_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_3a

    throw p0

    .line 87
    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_9

    throw p0
.end method

.method private static blacklist isIndirectCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Z
    .registers 3

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_e
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 158
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;

    const-string v1, "Exception reading IssuingDistributionPoint"

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 42
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    if-eqz v0, :cond_44

    .line 44
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    .line 46
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    .line 48
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    iget v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    if-eq v0, v2, :cond_37

    return v1

    .line 53
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_37

    .line 55
    :cond_22
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 56
    iget-object v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    .line 62
    :cond_37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :cond_44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-nez v0, :cond_11

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    .line 76
    :cond_11
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    return p0
.end method
