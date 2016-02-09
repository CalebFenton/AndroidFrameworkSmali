.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
    }
.end annotation


# static fields
.field private static final PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sCrlDataObjectCount:I

.field private sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@2
    const-string/jumbo v1, "CERTIFICATE"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@a
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@c
    const-string/jumbo v1, "CRL"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@14
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    #@5
    .line 41
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@7
    .line 42
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@9
    .line 43
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    #@b
    .line 45
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@d
    .line 46
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@f
    .line 47
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    #@11
    .line 35
    return-void
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@c
    move-result v1

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 154
    :cond_0
    return-object v2

    #@10
    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@12
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@14
    add-int/lit8 v2, v1, 0x1

    #@16
    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    move-result-object v0

    #@1c
    .line 158
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@1f
    move-result-object v0

    #@20
    .line 157
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 74
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 76
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@9
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_1

    #@f
    .line 78
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@11
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@17
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    move-result-object v0

    #@1b
    .line 80
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    #@21
    .line 83
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@24
    move-result-object v2

    #@25
    .line 82
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    #@28
    return-object v1

    #@29
    .line 88
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method

.method private readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .param p1, "aIn"    # Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 131
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 133
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@b
    move-result v1

    #@c
    if-le v1, v3, :cond_0

    #@e
    .line 134
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v1

    #@12
    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 133
    if-eqz v1, :cond_0

    #@16
    .line 136
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 139
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@28
    .line 138
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@36
    .line 141
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 146
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@3e
    move-result-object v1

    #@3f
    .line 145
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    #@42
    move-result-object v1

    #@43
    return-object v1
.end method

.method private readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 55
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@b
    move-result v1

    #@c
    if-le v1, v3, :cond_0

    #@e
    .line 56
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v1

    #@12
    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 55
    if-eqz v1, :cond_0

    #@16
    .line 58
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 61
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@28
    .line 60
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@36
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 67
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    #@3d
    .line 68
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@40
    move-result-object v2

    #@41
    .line 67
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    #@44
    return-object v1
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 116
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    move-result-object v0

    #@7
    .line 118
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    #@9
    .line 121
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@c
    move-result-object v1

    #@d
    .line 120
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 124
    :cond_0
    return-object v2
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    move-result-object v0

    #@7
    .line 97
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    #@9
    .line 99
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    #@b
    .line 100
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@e
    move-result-object v2

    #@f
    .line 99
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    #@12
    return-object v1

    #@13
    .line 103
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V

    #@5
    return-object v0
.end method

.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 251
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    #@4
    if-nez v4, :cond_1

    #@6
    .line 253
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    #@8
    .line 254
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 255
    iput v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@c
    .line 266
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e
    if-eqz v4, :cond_3

    #@10
    .line 268
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@12
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@14
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@17
    move-result v5

    #@18
    if-eq v4, v5, :cond_2

    #@1a
    .line 270
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 257
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    #@21
    if-eq v4, p1, :cond_0

    #@23
    .line 259
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    #@25
    .line 260
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@27
    .line 261
    iput v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@29
    goto :goto_0

    #@2a
    .line 274
    :cond_2
    const/4 v4, 0x0

    #@2b
    :try_start_1
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2d
    .line 275
    const/4 v4, 0x0

    #@2e
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    #@30
    .line 276
    return-object v6

    #@31
    .line 280
    :cond_3
    new-instance v2, Ljava/io/PushbackInputStream;

    #@33
    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 281
    .local v2, "pis":Ljava/io/PushbackInputStream;
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    #@39
    move-result v3

    #@3a
    .line 283
    .local v3, "tag":I
    const/4 v4, -0x1

    #@3b
    if-ne v3, v4, :cond_4

    #@3d
    .line 285
    return-object v6

    #@3e
    .line 288
    :cond_4
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    #@41
    .line 290
    const/16 v4, 0x30

    #@43
    if-eq v3, v4, :cond_5

    #@45
    .line 292
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@48
    move-result-object v4

    #@49
    return-object v4

    #@4a
    .line 296
    :cond_5
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@4c
    const/4 v5, 0x1

    #@4d
    invoke-direct {v4, v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;Z)V

    #@50
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    move-result-object v4

    #@54
    return-object v4

    #@55
    .line 304
    .end local v2    # "pis":Ljava/io/PushbackInputStream;
    .end local v3    # "tag":I
    :catch_0
    move-exception v0

    #@56
    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CRLException;

    #@58
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4

    #@60
    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@61
    .line 301
    .local v1, "e":Ljava/security/cert/CRLException;
    throw v1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 325
    .local v1, "crls":Ljava/util/List;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@8
    move-result-object v0

    #@9
    .local v0, "crl":Ljava/security/cert/CRL;
    if-eqz v0, :cond_0

    #@b
    .line 327
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    goto :goto_0

    #@f
    .line 330
    :cond_0
    return-object v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    const-string/jumbo v0, "PkiPath"

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 5
    .param p1, "certificates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 362
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@10
    .line 364
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 366
    new-instance v2, Ljava/security/cert/CertificateException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "list contains non X509Certificate object while creating CertPath\n"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 370
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    #@34
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    #@37
    return-object v2
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 170
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    #@4
    if-nez v3, :cond_1

    #@6
    .line 172
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    #@8
    .line 173
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 174
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@c
    .line 185
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e
    if-eqz v3, :cond_3

    #@10
    .line 187
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@12
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@14
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@17
    move-result v4

    #@18
    if-eq v3, v4, :cond_2

    #@1a
    .line 189
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    #@21
    if-eq v3, p1, :cond_0

    #@23
    .line 178
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    #@25
    .line 179
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@27
    .line 180
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@29
    goto :goto_0

    #@2a
    .line 193
    :cond_2
    const/4 v3, 0x0

    #@2b
    :try_start_1
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2d
    .line 194
    const/4 v3, 0x0

    #@2e
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    #@30
    .line 195
    return-object v5

    #@31
    .line 199
    :cond_3
    new-instance v1, Ljava/io/PushbackInputStream;

    #@33
    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 200
    .local v1, "pis":Ljava/io/PushbackInputStream;
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    #@39
    move-result v2

    #@3a
    .line 202
    .local v2, "tag":I
    const/4 v3, -0x1

    #@3b
    if-ne v2, v3, :cond_4

    #@3d
    .line 204
    return-object v5

    #@3e
    .line 207
    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    #@41
    .line 209
    const/16 v3, 0x30

    #@43
    if-eq v2, v3, :cond_5

    #@45
    .line 211
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@48
    move-result-object v3

    #@49
    return-object v3

    #@4a
    .line 215
    :cond_5
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@4c
    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@4f
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@52
    move-result-object v3

    #@53
    return-object v3

    #@54
    .line 219
    .end local v1    # "pis":Ljava/io/PushbackInputStream;
    .end local v2    # "tag":I
    :catch_0
    move-exception v0

    #@55
    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    #@57
    invoke-direct {v3, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V

    #@5a
    throw v3
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 235
    .local v1, "certs":Ljava/util/List;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@8
    move-result-object v0

    #@9
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@b
    .line 237
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    goto :goto_0

    #@f
    .line 240
    :cond_0
    return-object v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 335
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
