.class final Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 172
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;->setOptional(I)V

    #@7
    .line 170
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 176
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 177
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    #@6
    .line 178
    new-instance v4, Ljava/math/BigInteger;

    #@8
    const/4 v1, 0x0

    #@9
    aget-object v1, v0, v1

    #@b
    check-cast v1, [B

    #@d
    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@10
    .line 179
    const/4 v1, 0x1

    #@11
    aget-object v1, v0, v1

    #@13
    check-cast v1, Ljava/util/Date;

    #@15
    .line 180
    const/4 v2, 0x2

    #@16
    aget-object v2, v0, v2

    #@18
    check-cast v2, Lorg/apache/harmony/security/x509/Extensions;

    #@1a
    .line 177
    invoke-direct {v3, v4, v1, v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;-><init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V

    #@1d
    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 185
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    #@3
    .line 186
    .local v0, "rcert":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->-get2(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, p2, v2

    #@e
    .line 187
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->-get1(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 188
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->-get0(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, p2, v2

    #@1c
    .line 184
    return-void
.end method
