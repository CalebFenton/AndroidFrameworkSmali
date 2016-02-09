.class public final Lorg/apache/harmony/security/pkcs10/CertificationRequest;
.super Ljava/lang/Object;
.source "CertificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

.field private signature:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 89
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 90
    sget-object v2, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    .line 91
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 92
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 89
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@19
    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1b
    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "info"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signature"    # [B

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    #@5
    .line 58
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@7
    .line 59
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [B

    #@d
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    #@f
    .line 56
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .param p1, "info"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signature"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    #@3
    .line 65
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    #@5
    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/pkcs10/CertificationRequest;)V
    .locals 0
    .param p1, "info"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signature"    # [B
    .param p4, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    #@c
    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    #@e
    return-object v0
.end method

.method public getInfo()Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    #@2
    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 73
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 74
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    #@8
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 75
    return-object v0
.end method
