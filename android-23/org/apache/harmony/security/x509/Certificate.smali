.class public final Lorg/apache/harmony/security/x509/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/Certificate$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/Certificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/Certificate;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/Certificate;)Lorg/apache/harmony/security/x509/TBSCertificate;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 116
    new-instance v0, Lorg/apache/harmony/security/x509/Certificate$1;

    #@2
    .line 117
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    sget-object v2, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

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
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 116
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Certificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@19
    .line 115
    sput-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1b
    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 3
    .param p1, "tbsCertificate"    # Lorg/apache/harmony/security/x509/TBSCertificate;
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
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    #@6
    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@8
    .line 63
    array-length v0, p3

    #@9
    new-array v0, v0, [B

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    #@d
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

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

.method private constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .param p1, "tbsCertificate"    # Lorg/apache/harmony/security/x509/TBSCertificate;
    .param p2, "signatureAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Certificate;-><init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    #@3
    .line 72
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    #@5
    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/Certificate;)V
    .locals 0
    .param p1, "tbsCertificate"    # Lorg/apache/harmony/security/x509/TBSCertificate;
    .param p2, "signatureAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/Certificate;-><init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    #@c
    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    #@e
    return-object v0
.end method

.method public getSignatureValue()[B
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x5d

    #@2
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 91
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "X.509 Certificate:\n[\n"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 92
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    #@f
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->dumpValue(Ljava/lang/StringBuilder;)V

    #@12
    .line 93
    const-string/jumbo v1, "\n  Algorithm: ["

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 94
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1a
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    #@1d
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 96
    const-string/jumbo v1, "\n  Signature Value:\n"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 97
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    #@28
    const-string/jumbo v2, ""

    #@2b
    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method
