.class public Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "X509CertificateHolder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private transient blacklist x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    .registers 2
    .param p1, "x509Certificate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->init(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "certEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 71
    return-void
.end method

.method private blacklist init(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    .registers 3
    .param p1, "x509Certificate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 85
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 87
    return-void
.end method

.method private static blacklist parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .registers 5
    .param p0, "certEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->parseNonEmptyASN1([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 55
    :catch_b
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 51
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_27
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->init(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 397
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 406
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 358
    if-ne p1, p0, :cond_4

    .line 360
    const/4 v0, 0x1

    return v0

    .line 363
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_a

    .line 365
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 370
    .local v0, "other":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 126
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNotAfter()Ljava/util/Date;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNotBefore()Ljava/util/Date;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAlternativeSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 11
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 319
    .local v0, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureAlgorithm;->fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureAlgorithm;

    move-result-object v1

    .line 320
    .local v1, "altSigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureAlgorithm;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v2

    .line 326
    .local v2, "altSigValue":Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;
    :try_start_16
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureAlgorithm;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v3

    .line 328
    .local v3, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 330
    .local v4, "sOut":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 331
    .local v5, "tbsSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 333
    .local v6, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_34
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_49

    .line 335
    const/4 v8, 0x2

    if-eq v7, v8, :cond_46

    .line 337
    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 333
    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 341
    .end local v7    # "i":I
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->trimExtensions(ILcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 343
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v8, "DER"

    invoke-virtual {v7, v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_62} :catch_70

    .line 350
    .end local v4    # "sOut":Ljava/io/OutputStream;
    .end local v5    # "tbsSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    nop

    .line 352
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v4

    return v4

    .line 347
    .end local v3    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    :catch_70
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/CertException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to process signature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 7
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 285
    .local v0, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 294
    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 296
    .local v1, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 297
    .local v2, "sOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_34

    .line 303
    .end local v2    # "sOut":Ljava/io/OutputStream;
    nop

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2

    return v2

    .line 300
    .end local v1    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    :catch_34
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertException;

    const-string/jumbo v2, "signature invalid - algorithm identifier mismatch"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isValidOn(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    return-object v0
.end method
