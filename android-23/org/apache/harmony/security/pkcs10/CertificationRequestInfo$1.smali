.class final Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
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
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 113
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 116
    iget-object v7, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v7, [Ljava/lang/Object;

    #@4
    .line 117
    .local v7, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    #@6
    .line 118
    const/4 v1, 0x0

    #@7
    aget-object v1, v7, v1

    #@9
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@c
    move-result v1

    #@d
    .line 119
    const/4 v2, 0x1

    #@e
    aget-object v2, v7, v2

    #@10
    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    #@12
    .line 120
    const/4 v3, 0x2

    #@13
    aget-object v3, v7, v3

    #@15
    check-cast v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@17
    .line 121
    const/4 v4, 0x3

    #@18
    aget-object v4, v7, v4

    #@1a
    check-cast v4, Ljava/util/List;

    #@1c
    .line 122
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@1f
    move-result-object v5

    #@20
    .line 117
    const/4 v6, 0x0

    #@21
    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)V

    #@24
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 126
    check-cast v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    #@3
    .line 127
    .local v0, "certReqInfo":Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->-get3(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, p2, v2

    #@e
    .line 128
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->-get1(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 129
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->-get2(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, p2, v2

    #@1c
    .line 130
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->-get0(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, p2, v2

    #@23
    .line 125
    return-void
.end method
