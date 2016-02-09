.class final Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SubjectPublicKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
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
    .line 154
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 155
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 157
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v6, [Ljava/lang/Object;

    #@5
    .line 158
    .local v6, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@7
    .line 159
    const/4 v1, 0x0

    #@8
    aget-object v1, v6, v1

    #@a
    check-cast v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@c
    .line 160
    aget-object v2, v6, v3

    #@e
    check-cast v2, Lorg/apache/harmony/security/asn1/BitString;

    #@10
    iget-object v2, v2, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@12
    .line 161
    aget-object v3, v6, v3

    #@14
    check-cast v3, Lorg/apache/harmony/security/asn1/BitString;

    #@16
    iget v3, v3, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@18
    .line 162
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@1b
    move-result-object v4

    #@1c
    .line 158
    const/4 v5, 0x0

    #@1d
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V

    #@20
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 166
    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@3
    .line 167
    .local v0, "spki":Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->-get0(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 168
    new-instance v1, Lorg/apache/harmony/security/asn1/BitString;

    #@c
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->-get1(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B

    #@f
    move-result-object v2

    #@10
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->-get2(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I

    #@13
    move-result v3

    #@14
    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, p2, v2

    #@1a
    .line 165
    return-void
.end method
