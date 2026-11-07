.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
    }
.end annotation


# static fields
.field private static final blacklist PEM_CERT_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final blacklist PEM_CRL_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final blacklist PEM_PKCS7_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private final blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist currentCrlStream:Ljava/io/InputStream;

.field private blacklist currentStream:Ljava/io/InputStream;

.field private blacklist sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist sCrlDataObjectCount:I

.field private blacklist sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist sDataObjectCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "PKCS7"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_PKCS7_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 54
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 56
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 57
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 58
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private blacklist doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 330
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 331
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 332
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_17

    .line 334
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-eq v0, p1, :cond_17

    .line 336
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 337
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 338
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 343
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2f

    .line 345
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2a

    .line 347
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 351
    :cond_2a
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 352
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 353
    return-object v2

    .line 359
    :cond_2f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 361
    move-object v0, p1

    .local v0, "pis":Ljava/io/InputStream;
    goto :goto_40

    .line 365
    .end local v0    # "pis":Ljava/io/InputStream;
    :cond_37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 368
    .restart local v0    # "pis":Ljava/io/InputStream;
    :goto_40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 369
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 371
    .local v3, "tag":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4c

    .line 373
    return-object v2

    .line 376
    :cond_4c
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 377
    const/16 v2, 0x30

    if-eq v3, v2, :cond_58

    .line 379
    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object v1

    return-object v1

    .line 383
    :cond_58
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCRL(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;

    move-result-object v1
    :try_end_61
    .catch Ljava/security/cert/CRLException; {:try_start_17 .. :try_end_61} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_61} :catch_62

    return-object v1

    .line 390
    .end local v0    # "pis":Ljava/io/InputStream;
    .end local v3    # "tag":I
    :catch_62
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v0

    .line 388
    .local v0, "e":Ljava/security/cert/CRLException;
    throw v0
.end method

.method private blacklist doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 196
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 197
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 198
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    goto :goto_17

    .line 200
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v0, p1, :cond_17

    .line 202
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 203
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 204
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 209
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2f

    .line 211
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2a

    .line 213
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 217
    :cond_2a
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 218
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    .line 219
    return-object v2

    .line 225
    :cond_2f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 227
    move-object v0, p1

    .local v0, "pis":Ljava/io/InputStream;
    goto :goto_3c

    .line 237
    .end local v0    # "pis":Ljava/io/InputStream;
    :cond_37
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    .restart local v0    # "pis":Ljava/io/InputStream;
    :goto_3c
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 247
    :cond_46
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 249
    .local v1, "tag":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4e

    .line 251
    return-object v2

    .line 256
    :cond_4e
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 257
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_5e

    .line 261
    :cond_58
    move-object v2, v0

    check-cast v2, Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 265
    :goto_5e
    const/16 v2, 0x30

    if-eq v1, v2, :cond_67

    .line 267
    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object v2

    return-object v2

    .line 271
    :cond_67
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCertificate(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_70} :catch_71

    return-object v2

    .line 274
    .end local v0    # "pis":Ljava/io/InputStream;
    .end local v1    # "tag":I
    :catch_71
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parsing issue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getCRL()Ljava/security/cert/CRL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_24

    .line 173
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 170
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCRL(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 144
    if-nez p1, :cond_4

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_3a

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 154
    nop

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 154
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 157
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 161
    :cond_3a
    nop

    .line 162
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCertificate()Ljava/security/cert/Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2b

    .line 104
    :goto_4
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 108
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2a

    .line 110
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 111
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 110
    return-object v1

    .line 113
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2a
    goto :goto_4

    .line 116
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCertificate(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 78
    if-nez p1, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_3a

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 88
    nop

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 88
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 91
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 95
    :cond_3a
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 96
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 95
    return-object v0
.end method

.method private blacklist readDERCRL(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .registers 3
    .param p1, "aIn"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method private blacklist readDERCertificate(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "dIn"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private blacklist readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method private blacklist readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected blacklist createCRL(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .registers 4
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method public whitelist test-api engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 6
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "crls":Ljava/util/List;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 414
    .local v1, "in":Ljava/io/BufferedInputStream;
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object v2

    move-object v3, v2

    .local v3, "crl":Ljava/security/cert/CRL;
    if-eqz v2, :cond_19

    .line 416
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 419
    :cond_19
    return-object v0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 431
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 7
    .param p1, "certificates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 448
    .local v0, "iter":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 451
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 453
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_15

    goto :goto_4

    .line 455
    :cond_15
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_32
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public whitelist test-api engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "certs":Ljava/util/List;
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object v1

    move-object v2, v1

    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_14

    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 305
    :cond_14
    return-object v0
.end method

.method public whitelist test-api engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2

    .line 424
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
