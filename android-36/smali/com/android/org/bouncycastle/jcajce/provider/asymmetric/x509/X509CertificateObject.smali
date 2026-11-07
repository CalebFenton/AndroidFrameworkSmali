.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private blacklist attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private final blacklist cacheLock:Ljava/lang/Object;

.field private blacklist encoded:[B

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z

.field private blacklist internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

.field private blacklist issuerValue:Ljavax/security/auth/x500/X500Principal;

.field private blacklist publicKeyValue:Ljava/security/PublicKey;

.field private blacklist subjectValue:Ljavax/security/auth/x500/X500Principal;

.field private blacklist validityValues:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    .registers 10

    .line 52
    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createBasicConstraints(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createKeyUsage(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)[Z

    move-result-object v4

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgName(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgParams(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 37
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    .line 47
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p0, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    return-void
.end method

.method private static blacklist createBasicConstraints(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .registers 4

    .line 314
    :try_start_0
    const-string v0, "2.5.29.19"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_a
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 324
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct BasicConstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createKeyUsage(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)[Z
    .registers 8

    .line 332
    :try_start_0
    const-string v0, "2.5.29.15"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 338
    :cond_a
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 341
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p0

    sub-int/2addr v1, p0

    const/16 p0, 0x9

    if-ge v1, p0, :cond_23

    goto :goto_24

    :cond_23
    move p0, v1

    .line 343
    :goto_24
    new-array p0, p0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-eq v3, v1, :cond_3f

    .line 347
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    move v4, v2

    :goto_3a
    aput-boolean v4, p0, v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_40

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3f
    return-object p0

    :catch_40
    move-exception p0

    .line 354
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct KeyUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createSigAlgName(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;
    .registers 4

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 366
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct SigAlgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createSigAlgParams(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)[B
    .registers 4

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 380
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

    .line 384
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot construct SigAlgParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getInternalCertificate()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
    .registers 13

    .line 276
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_3
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v0, :cond_c

    .line 280
    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 282
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    const/4 v1, 0x0

    .line 288
    :try_start_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_19

    move-object v10, v0

    move-object v11, v1

    goto :goto_21

    :catch_19
    move-exception v0

    .line 292
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    move-object v10, v1

    move-object v11, v2

    .line 295
    :goto_21
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    invoke-direct/range {v3 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V

    .line 298
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_35
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v0, :cond_3f

    .line 302
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_43

    .line 305
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    monitor-exit v2

    return-object p0

    .line 306
    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_3c

    throw p0

    .line 282
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_9

    throw p0
.end method


# virtual methods
.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 6

    .line 57
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 58
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getValidityValues()[J

    move-result-object p1

    const/4 v2, 0x1

    .line 60
    aget-wide v2, p1, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_38

    const/4 v2, 0x0

    .line 64
    aget-wide v2, p1, v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_17

    return-void

    .line 66
    :cond_17
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_38
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate expired on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 199
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    if-eqz v0, :cond_44

    .line 201
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    .line 203
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    .line 205
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    iget v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    if-eq v0, v2, :cond_37

    return v1

    .line 210
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v0, :cond_37

    .line 212
    :cond_22
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 213
    iget-object v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    .line 219
    :cond_37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object p0

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 222
    :cond_44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    if-nez v0, :cond_e

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    .line 182
    :cond_e
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 187
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_b

    .line 76
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_22

    .line 78
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 80
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_1c

    .line 86
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_20

    .line 89
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v1

    return-object p0

    .line 90
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1a

    throw p0

    .line 78
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_9

    throw p0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-eqz v1, :cond_b

    .line 100
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_26

    .line 102
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 104
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_17
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-nez v2, :cond_20

    .line 114
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_24

    .line 117
    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    monitor-exit v1

    return-object p0

    .line 118
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_1e

    throw p0

    .line 102
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_9

    throw p0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_b

    .line 127
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_22

    .line 129
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 131
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_1c

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_20

    .line 140
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v1

    return-object p0

    .line 141
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1a

    throw p0

    .line 129
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_9

    throw p0
.end method

.method public blacklist getValidityValues()[J
    .registers 7

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-eqz v1, :cond_b

    .line 150
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_37

    .line 152
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 156
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 157
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    .line 160
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_28
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-nez v0, :cond_31

    .line 164
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_35

    .line 167
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    monitor-exit v1

    return-object p0

    .line 168
    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_2f

    throw p0

    .line 152
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_9

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 227
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_11

    .line 229
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    .line 233
    :cond_11
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    return p0
.end method

.method public blacklist setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method
