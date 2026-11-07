.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "CertificateID.java"


# static fields
.field public static final blacklist HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V
    .registers 4
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_8

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 39
    return-void

    .line 36
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'id\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "digestCalculator"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .param p2, "issuerCert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .param p3, "number"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 56
    return-void
.end method

.method private static blacklist createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 9
    .param p0, "digCalc"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .param p1, "issuerCert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .param p2, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 139
    .local v0, "dgOut":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 142
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 144
    .local v1, "issuerNameHash":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 146
    .local v2, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 148
    .end local v0    # "dgOut":Ljava/io/OutputStream;
    .local v3, "dgOut":Ljava/io/OutputStream;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 151
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 153
    .local v0, "issuerKeyHash":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-direct {v4, v5, v1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    return-object v4

    .line 155
    .end local v0    # "issuerKeyHash":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v1    # "issuerNameHash":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v3    # "dgOut":Ljava/io/OutputStream;
    :catch_4a
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem creating ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist deriveCertificateID(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .registers 8
    .param p0, "original"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p1, "newSerialNumber"    # Ljava/math/BigInteger;

    .line 129
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v5, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    if-nez v0, :cond_6

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 110
    .local v0, "obj":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method public blacklist getHashAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerKeyHash()[B
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerNameHash()[B
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist matchesIssuer(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)Z
    .registers 7
    .param p1, "issuerCert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .param p2, "digCalcProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_1a} :catch_1b

    return v0

    .line 89
    :catch_1b
    move-exception v0

    .line 91
    .local v0, "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to create digest calculator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method
