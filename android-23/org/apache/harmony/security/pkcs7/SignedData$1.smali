.class final Lorg/apache/harmony/security/pkcs7/SignedData$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignedData;
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
    .line 108
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 117
    const/4 v0, 0x3

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    #@7
    .line 118
    const/4 v0, 0x4

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    #@b
    .line 115
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 132
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v8, [Ljava/lang/Object;

    #@4
    .line 133
    .local v8, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    #@6
    .line 134
    const/4 v1, 0x0

    #@7
    aget-object v1, v8, v1

    #@9
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@c
    move-result v1

    #@d
    .line 135
    const/4 v2, 0x1

    #@e
    aget-object v2, v8, v2

    #@10
    check-cast v2, Ljava/util/List;

    #@12
    .line 136
    const/4 v3, 0x2

    #@13
    aget-object v3, v8, v3

    #@15
    check-cast v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@17
    .line 137
    const/4 v4, 0x3

    #@18
    aget-object v4, v8, v4

    #@1a
    check-cast v4, Ljava/util/List;

    #@1c
    .line 138
    const/4 v5, 0x4

    #@1d
    aget-object v5, v8, v5

    #@1f
    check-cast v5, Ljava/util/List;

    #@21
    .line 139
    const/4 v6, 0x5

    #@22
    aget-object v6, v8, v6

    #@24
    check-cast v6, Ljava/util/List;

    #@26
    .line 133
    const/4 v7, 0x0

    #@27
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/pkcs7/SignedData;-><init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/harmony/security/pkcs7/SignedData;)V

    #@2a
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 122
    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    #@5
    .line 123
    .local v0, "sd":Lorg/apache/harmony/security/pkcs7/SignedData;
    new-array v1, v4, [B

    #@7
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get5(Lorg/apache/harmony/security/pkcs7/SignedData;)I

    #@a
    move-result v2

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, v1, v3

    #@e
    aput-object v1, p2, v3

    #@10
    .line 124
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get3(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    aput-object v1, p2, v4

    #@16
    .line 125
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get1(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, p2, v2

    #@1d
    .line 126
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get0(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x3

    #@22
    aput-object v1, p2, v2

    #@24
    .line 127
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get2(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, p2, v2

    #@2b
    .line 128
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->-get4(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x5

    #@30
    aput-object v1, p2, v2

    #@32
    .line 121
    return-void
.end method
