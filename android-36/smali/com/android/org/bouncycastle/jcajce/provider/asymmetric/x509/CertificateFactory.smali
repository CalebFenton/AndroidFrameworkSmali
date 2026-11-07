.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "CertificateFactory.java"


# static fields
.field private static final blacklist PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final blacklist PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final blacklist PEM_PKCS7_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private final blacklist bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist currentCrlStream:Ljava/io/InputStream;

.field private blacklist currentStream:Ljava/io/InputStream;

.field private blacklist sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist sCrlDataObjectCount:I

.field private blacklist sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist sDataObjectCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "PKCS7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_PKCS7_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 54
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 56
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 57
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 58
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private blacklist doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 7

    .line 328
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 330
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 331
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 332
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_15

    :cond_d
    if-eq v0, p1, :cond_15

    .line 336
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 337
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 338
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 343
    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2b

    .line 345
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eq p1, p2, :cond_26

    .line 347
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    .line 351
    :cond_26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 352
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    return-object v2

    .line 359
    :cond_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_3c

    .line 365
    :cond_32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    :goto_3c
    const/4 v0, 0x1

    .line 368
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 369
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_48

    return-object v2

    .line 376
    :cond_48
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v2, 0x30

    if-eq v1, v2, :cond_54

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    .line 383
    :cond_54
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p2, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;

    move-result-object p0
    :try_end_5d
    .catch Ljava/security/cert/CRLException; {:try_start_15 .. :try_end_5d} :catch_69
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5d} :catch_5e

    return-object p0

    :catch_5e
    move-exception p0

    .line 392
    new-instance p1, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_69
    move-exception p0

    .line 388
    throw p0
.end method

.method private blacklist doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 7

    .line 194
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 196
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 197
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 198
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    goto :goto_15

    :cond_d
    if-eq v0, p1, :cond_15

    .line 202
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 203
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 204
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 209
    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2b

    .line 211
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eq p1, p2, :cond_26

    .line 213
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 217
    :cond_26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 218
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    return-object v2

    .line 225
    :cond_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, p1

    goto :goto_38

    .line 237
    :cond_33
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    :goto_38
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 247
    :cond_42
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4a

    return-object v2

    .line 256
    :cond_4a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 257
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_5a

    .line 261
    :cond_54
    move-object p1, v0

    check-cast p1, Ljava/io/PushbackInputStream;

    invoke-virtual {p1, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :goto_5a
    const/16 p1, 0x30

    if-eq v1, p1, :cond_63

    .line 267
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 271
    :cond_63
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    .line 276
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parsing issue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private blacklist getCRL()Ljava/security/cert/CRL;
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    goto :goto_22

    .line 173
    :cond_d
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getCRL(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_39

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 154
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 157
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    .line 162
    :cond_39
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCertificate()Ljava/security/cert/Certificate;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2a

    .line 104
    :cond_4
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    .line 110
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 111
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v1

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getCertificate(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_39

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 88
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    .line 95
    :cond_39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 96
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method private blacklist readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .registers 2

    .line 138
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private blacklist readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .registers 2

    .line 64
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method private blacklist readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 4

    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private blacklist readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 4

    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected blacklist createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .registers 3

    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method public whitelist test-api engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 3

    const/4 v0, 0x1

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 414
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 416
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3

    .line 431
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 3

    .line 439
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 4

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 448
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 450
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 453
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_15

    goto :goto_4

    .line 455
    :cond_15
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_30
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public whitelist test-api engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 3

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method public whitelist test-api engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 1

    .line 424
    sget-object p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
