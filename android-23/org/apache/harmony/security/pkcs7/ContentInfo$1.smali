.class final Lorg/apache/harmony/security/pkcs7/ContentInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/ContentInfo;
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
    .line 112
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;->setOptional(I)V

    #@7
    .line 110
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 133
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@5
    check-cast v1, [Ljava/lang/Object;

    #@7
    .line 134
    .local v1, "values":[Ljava/lang/Object;
    aget-object v0, v1, v5

    #@9
    check-cast v0, [I

    #@b
    .line 135
    .local v0, "oid":[I
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    #@d
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 136
    aget-object v2, v1, v7

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 137
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@19
    .line 138
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@1c
    move-result-object v4

    #@1d
    aget-object v2, v1, v7

    #@1f
    check-cast v2, [B

    #@21
    invoke-virtual {v4, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    .line 139
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@28
    move-result-object v4

    #@29
    .line 137
    invoke-direct {v3, v0, v2, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    #@2c
    return-object v3

    #@2d
    .line 141
    :cond_0
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@2f
    aget-object v2, v1, v5

    #@31
    check-cast v2, [I

    #@33
    .line 142
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@36
    move-result-object v4

    #@37
    .line 141
    invoke-direct {v3, v2, v6, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    #@3a
    return-object v3

    #@3b
    .line 145
    :cond_1
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    #@3d
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 146
    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@45
    aget-object v2, v1, v5

    #@47
    check-cast v2, [I

    #@49
    .line 147
    sget-object v5, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4b
    aget-object v3, v1, v7

    #@4d
    check-cast v3, [B

    #@4f
    invoke-virtual {v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    .line 148
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@56
    move-result-object v5

    #@57
    .line 146
    invoke-direct {v4, v2, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    #@5a
    return-object v4

    #@5b
    .line 150
    :cond_2
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@5d
    aget-object v2, v1, v5

    #@5f
    check-cast v2, [I

    #@61
    aget-object v4, v1, v7

    #@63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@66
    move-result-object v5

    #@67
    invoke-direct {v3, v2, v4, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V

    #@6a
    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    move-object v0, p1

    #@2
    .line 116
    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@4
    .line 117
    .local v0, "ci":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get1(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, p2, v2

    #@b
    .line 118
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 119
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get1(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    #@14
    move-result-object v1

    #@15
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    #@17
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 120
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 122
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    #@2e
    move-result-object v1

    #@2f
    .line 121
    aput-object v1, p2, v3

    #@31
    .line 115
    :cond_0
    :goto_0
    return-void

    #@32
    .line 124
    :cond_1
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    instance-of v1, v1, Lorg/apache/harmony/security/pkcs7/SignedData;

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 125
    sget-object v1, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@3c
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@43
    move-result-object v1

    #@44
    aput-object v1, p2, v3

    #@46
    goto :goto_0

    #@47
    .line 127
    :cond_2
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->-get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    aput-object v1, p2, v3

    #@4d
    goto :goto_0
.end method
