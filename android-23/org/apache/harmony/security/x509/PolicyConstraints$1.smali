.class final Lorg/apache/harmony/security/x509/PolicyConstraints$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyConstraints;
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
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 111
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    #@7
    .line 112
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    #@b
    .line 109
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 116
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@5
    check-cast v2, [Ljava/lang/Object;

    #@7
    .line 117
    .local v2, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@8
    .line 118
    .local v1, "requireExplicitPolicy":Ljava/math/BigInteger;
    const/4 v0, 0x0

    #@9
    .line 119
    .local v0, "inhibitPolicyMapping":Ljava/math/BigInteger;
    aget-object v3, v2, v4

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 120
    new-instance v1, Ljava/math/BigInteger;

    #@f
    .end local v1    # "requireExplicitPolicy":Ljava/math/BigInteger;
    aget-object v3, v2, v4

    #@11
    check-cast v3, [B

    #@13
    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    #@16
    .line 122
    :cond_0
    aget-object v3, v2, v6

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 123
    new-instance v0, Ljava/math/BigInteger;

    #@1c
    .end local v0    # "inhibitPolicyMapping":Ljava/math/BigInteger;
    aget-object v3, v2, v6

    #@1e
    check-cast v3, [B

    #@20
    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    #@23
    .line 125
    :cond_1
    new-instance v3, Lorg/apache/harmony/security/x509/PolicyConstraints;

    #@25
    .line 127
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@28
    move-result-object v4

    #@29
    .line 125
    invoke-direct {v3, v1, v0, v4, v5}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints;)V

    #@2c
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
    .line 131
    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    #@3
    .line 132
    .local v0, "pc":Lorg/apache/harmony/security/x509/PolicyConstraints;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;->-get1(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

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
    .line 133
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;->-get0(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, p2, v2

    #@19
    .line 130
    return-void
.end method
