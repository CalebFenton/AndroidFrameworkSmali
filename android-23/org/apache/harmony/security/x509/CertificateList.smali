.class public final Lorg/apache/harmony/security/x509/CertificateList;
.super Ljava/lang/Object;
.source "CertificateList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/CertificateList$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/CertificateList;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/TBSCertList;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 113
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateList$1;

    #@2
    .line 114
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    sget-object v2, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 115
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 113
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@19
    .line 112
    sput-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1b
    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 3
    .param p1, "tbsCertList"    # Lorg/apache/harmony/security/x509/TBSCertList;
    .param p2, "signatureAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    #@6
    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@8
    .line 63
    array-length v0, p3

    #@9
    new-array v0, v0, [B

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@d
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@f
    .line 65
    array-length v1, p3

    #@10
    .line 64
    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 60
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .param p1, "tbsCertList"    # Lorg/apache/harmony/security/x509/TBSCertList;
    .param p2, "signatureAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    #@3
    .line 72
    iput-object p4, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    #@5
    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/CertificateList;)V
    .locals 0
    .param p1, "tbsCertList"    # Lorg/apache/harmony/security/x509/TBSCertList;
    .param p2, "signatureAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 104
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    #@c
    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    #@e
    return-object v0
.end method

.method public getSignatureValue()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 86
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 87
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@8
    iget-object v2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 88
    return-object v0
.end method

.method public getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 93
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    #@7
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/TBSCertList;->dumpValue(Ljava/lang/StringBuilder;)V

    #@a
    .line 94
    const-string/jumbo v1, "\nSignature Value:\n"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 95
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    #@12
    const-string/jumbo v2, ""

    #@15
    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method
