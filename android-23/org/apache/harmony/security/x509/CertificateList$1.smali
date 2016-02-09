.class final Lorg/apache/harmony/security/x509/CertificateList$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 115
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 118
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v6, [Ljava/lang/Object;

    #@4
    .line 119
    .local v6, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateList;

    #@6
    .line 120
    const/4 v1, 0x0

    #@7
    aget-object v1, v6, v1

    #@9
    check-cast v1, Lorg/apache/harmony/security/x509/TBSCertList;

    #@b
    .line 121
    const/4 v2, 0x1

    #@c
    aget-object v2, v6, v2

    #@e
    check-cast v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@10
    .line 122
    const/4 v3, 0x2

    #@11
    aget-object v3, v6, v3

    #@13
    check-cast v3, Lorg/apache/harmony/security/asn1/BitString;

    #@15
    iget-object v3, v3, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@17
    .line 123
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@1a
    move-result-object v4

    #@1b
    .line 119
    const/4 v5, 0x0

    #@1c
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/CertificateList;)V

    #@1f
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 128
    check-cast v0, Lorg/apache/harmony/security/x509/CertificateList;

    #@4
    .line 129
    .local v0, "certificateList":Lorg/apache/harmony/security/x509/CertificateList;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificateList;->-get2(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/TBSCertList;

    #@7
    move-result-object v1

    #@8
    aput-object v1, p2, v3

    #@a
    .line 130
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificateList;->-get0(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, p2, v2

    #@11
    .line 131
    new-instance v1, Lorg/apache/harmony/security/asn1/BitString;

    #@13
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificateList;->-get1(Lorg/apache/harmony/security/x509/CertificateList;)[B

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, p2, v2

    #@1d
    .line 127
    return-void
.end method
