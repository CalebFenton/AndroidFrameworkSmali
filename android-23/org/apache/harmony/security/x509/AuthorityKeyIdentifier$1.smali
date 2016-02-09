.class final Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AuthorityKeyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
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
    .line 126
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 133
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    #@7
    .line 134
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    #@b
    .line 135
    const/4 v0, 0x2

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    #@f
    .line 131
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v2, [Ljava/lang/Object;

    #@4
    .line 141
    .local v2, "values":[Ljava/lang/Object;
    const/4 v3, 0x2

    #@5
    aget-object v1, v2, v3

    #@7
    check-cast v1, [B

    #@9
    .line 142
    .local v1, "bytes":[B
    const/4 v0, 0x0

    #@a
    .line 143
    .local v0, "authorityCertSerialNumber":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    #@c
    .line 144
    new-instance v0, Ljava/math/BigInteger;

    #@e
    .end local v0    # "authorityCertSerialNumber":Ljava/math/BigInteger;
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@11
    .line 147
    :cond_0
    new-instance v5, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    #@13
    const/4 v3, 0x0

    #@14
    aget-object v3, v2, v3

    #@16
    check-cast v3, [B

    #@18
    .line 148
    const/4 v4, 0x1

    #@19
    aget-object v4, v2, v4

    #@1b
    check-cast v4, Lorg/apache/harmony/security/x509/GeneralNames;

    #@1d
    .line 147
    invoke-direct {v5, v3, v4, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;-><init>([BLorg/apache/harmony/security/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@20
    return-object v5
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 152
    check-cast v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    #@3
    .line 153
    .local v0, "akid":Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->-get2(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)[B

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 154
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->-get0(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Lorg/apache/harmony/security/x509/GeneralNames;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, p2, v2

    #@11
    .line 155
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->-get1(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 156
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->-get1(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, p2, v2

    #@22
    .line 151
    :cond_0
    return-void
.end method
