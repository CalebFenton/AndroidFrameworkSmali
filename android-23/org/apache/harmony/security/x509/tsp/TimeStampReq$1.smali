.class final Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 164
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setDefault(Ljava/lang/Object;I)V

    #@9
    .line 165
    const/4 v0, 0x2

    #@a
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    #@d
    .line 166
    const/4 v0, 0x3

    #@e
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    #@11
    .line 167
    const/4 v0, 0x5

    #@12
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    #@15
    .line 161
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 171
    iget-object v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v9, [Ljava/lang/Object;

    #@4
    .line 173
    .local v9, "values":[Ljava/lang/Object;
    const/4 v0, 0x2

    #@5
    aget-object v0, v9, v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v3, 0x0

    #@a
    .line 175
    :goto_0
    const/4 v0, 0x3

    #@b
    aget-object v0, v9, v0

    #@d
    if-nez v0, :cond_1

    #@f
    const/4 v4, 0x0

    #@10
    .line 178
    :goto_1
    const/4 v0, 0x5

    #@11
    aget-object v0, v9, v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 179
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    #@17
    .line 180
    const/4 v1, 0x0

    #@18
    aget-object v1, v9, v1

    #@1a
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@1d
    move-result v1

    #@1e
    .line 181
    const/4 v2, 0x1

    #@1f
    aget-object v2, v9, v2

    #@21
    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@23
    .line 184
    const/4 v5, 0x4

    #@24
    aget-object v5, v9, v5

    #@26
    check-cast v5, Ljava/lang/Boolean;

    #@28
    .line 186
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@2b
    move-result-object v7

    #@2c
    .line 185
    const/4 v6, 0x0

    #@2d
    .line 179
    const/4 v8, 0x0

    #@2e
    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq;)V

    #@31
    return-object v0

    #@32
    .line 174
    :cond_0
    const/4 v0, 0x2

    #@33
    aget-object v0, v9, v0

    #@35
    check-cast v0, [I

    #@37
    .line 173
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .local v3, "objID":Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 175
    .end local v3    # "objID":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    #@3e
    .line 176
    const/4 v0, 0x3

    #@3f
    aget-object v0, v9, v0

    #@41
    check-cast v0, [B

    #@43
    .line 175
    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@46
    .local v4, "nonce":Ljava/math/BigInteger;
    goto :goto_1

    #@47
    .line 189
    .end local v4    # "nonce":Ljava/math/BigInteger;
    :cond_2
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    #@49
    .line 190
    const/4 v1, 0x0

    #@4a
    aget-object v1, v9, v1

    #@4c
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@4f
    move-result v1

    #@50
    .line 191
    const/4 v2, 0x1

    #@51
    aget-object v2, v9, v2

    #@53
    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@55
    .line 194
    const/4 v5, 0x4

    #@56
    aget-object v5, v9, v5

    #@58
    check-cast v5, Ljava/lang/Boolean;

    #@5a
    .line 195
    const/4 v6, 0x5

    #@5b
    aget-object v6, v9, v6

    #@5d
    check-cast v6, Lorg/apache/harmony/security/x509/Extensions;

    #@5f
    .line 196
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@62
    move-result-object v7

    #@63
    .line 189
    const/4 v8, 0x0

    #@64
    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq;)V

    #@67
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 202
    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    #@4
    .line 203
    .local v0, "req":Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get5(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v1, p2, v3

    #@f
    .line 204
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get2(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@12
    move-result-object v1

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v1, p2, v3

    #@16
    .line 205
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get4(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    move-object v1, v2

    #@1d
    :goto_0
    const/4 v3, 0x2

    #@1e
    aput-object v1, p2, v3

    #@20
    .line 207
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get3(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    #@23
    move-result-object v1

    #@24
    if-nez v1, :cond_1

    #@26
    :goto_1
    const/4 v1, 0x3

    #@27
    aput-object v2, p2, v1

    #@29
    .line 208
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get0(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    #@2c
    move-result-object v1

    #@2d
    if-nez v1, :cond_2

    #@2f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@31
    :goto_2
    const/4 v2, 0x4

    #@32
    aput-object v1, p2, v2

    #@34
    .line 209
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get1(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;

    #@37
    move-result-object v1

    #@38
    const/4 v2, 0x5

    #@39
    aput-object v1, p2, v2

    #@3b
    .line 201
    return-void

    #@3c
    .line 206
    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get4(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 205
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@43
    move-result-object v1

    #@44
    goto :goto_0

    #@45
    .line 207
    :cond_1
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get3(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@4c
    move-result-object v2

    #@4d
    goto :goto_1

    #@4e
    .line 208
    :cond_2
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->-get0(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    #@51
    move-result-object v1

    #@52
    goto :goto_2
.end method
