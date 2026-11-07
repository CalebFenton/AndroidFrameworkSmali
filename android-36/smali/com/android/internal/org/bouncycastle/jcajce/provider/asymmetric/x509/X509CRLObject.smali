.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;
    }
.end annotation


# instance fields
.field private final blacklist cacheLock:Ljava/lang/Object;

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z

.field private blacklist internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)V
    .registers 9
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 27
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgName(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgParams(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)[B

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirectCRL(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .end local p2    # "c":Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .local v1, "bcHelper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .local v2, "c":Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private static blacklist createSigAlgName(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Ljava/lang/String;
    .registers 5
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 120
    :catch_9
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createSigAlgParams(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)[B
    .registers 5
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 131
    .local v0, "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_c

    .line 133
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_c
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 138
    .end local v0    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_17
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .registers 12

    .line 81
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v1

    return-object v0

    .line 87
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_42

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "encoding":[B
    const/4 v2, 0x0

    .line 93
    .local v2, "exception":Ljava/security/cert/CRLException;
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_1a

    move-object v1, v0

    .line 98
    move-object v9, v1

    move-object v10, v2

    goto :goto_23

    .line 95
    :catch_1a
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    move-object v9, v1

    move-object v10, v2

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "encoding":[B
    .end local v2    # "exception":Ljava/security/cert/CRLException;
    .local v9, "encoding":[B
    .local v10, "exception":Ljava/security/cert/CRLException;
    :goto_23
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    iget-boolean v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V

    .line 103
    .local v3, "temp":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_3b

    .line 107
    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    .line 110
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v2

    return-object v0

    .line 111
    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_3f

    throw v0

    .line 87
    .end local v3    # "temp":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .end local v9    # "encoding":[B
    .end local v10    # "exception":Ljava/security/cert/CRLException;
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private static blacklist isIndirectCRL(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Z
    .registers 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)[B

    move-result-object v0

    .line 149
    .local v0, "extOctets":[B
    if-nez v0, :cond_e

    .line 151
    const/4 v1, 0x0

    return v1

    .line 154
    :cond_e
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v1

    .line 156
    .end local v0    # "extOctets":[B
    :catch_17
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;

    const-string v2, "Exception reading IssuingDistributionPoint"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 37
    if-ne p0, p1, :cond_4

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    if-eqz v0, :cond_45

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    .line 46
    .local v0, "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-eqz v1, :cond_1b

    .line 48
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    if-eq v1, v3, :cond_38

    .line 50
    return v2

    .line 53
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v1, :cond_38

    .line 55
    :cond_23
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    .line 56
    .local v1, "signature":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v1, :cond_38

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 58
    return v2

    .line 62
    .end local v1    # "signature":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :cond_38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v1

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 65
    .end local v0    # "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-nez v0, :cond_11

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    .line 76
    :cond_11
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    return v0
.end method
