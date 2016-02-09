.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TSTInfo;
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
    .line 209
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 215
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    #@7
    .line 216
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    #@b
    .line 217
    const/4 v0, 0x2

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    #@f
    .line 213
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 221
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v2, [Ljava/lang/Object;

    #@5
    .line 223
    .local v2, "values":[Ljava/lang/Object;
    new-array v0, v5, [I

    #@7
    .line 224
    .local v0, "accuracy":[I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    #@a
    .line 225
    aget-object v3, v2, v1

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 226
    aget-object v3, v2, v1

    #@10
    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@13
    move-result v3

    #@14
    aput v3, v0, v1

    #@16
    .line 227
    if-lez v1, :cond_1

    #@18
    aget v3, v0, v1

    #@1a
    if-ltz v3, :cond_0

    #@1c
    aget v3, v0, v1

    #@1e
    const/16 v4, 0x3e7

    #@20
    if-le v3, v4, :cond_1

    #@22
    .line 228
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Time-stamp accuracy value is incorrect: "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    aget v5, v0, v1

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 232
    :cond_2
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 236
    check-cast v0, [I

    #@3
    .line 237
    .local v0, "accuracy":[I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 238
    if-lez v1, :cond_1

    #@9
    aget v2, v0, v1

    #@b
    if-ltz v2, :cond_0

    #@d
    aget v2, v0, v1

    #@f
    const/16 v3, 0x3e7

    #@11
    if-le v2, v3, :cond_1

    #@13
    .line 239
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Time-stamp accuracy value is incorrect: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    aget v4, v0, v1

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 241
    :cond_1
    aget v2, v0, v1

    #@31
    int-to-long v2, v2

    #@32
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@39
    move-result-object v2

    #@3a
    aput-object v2, p2, v1

    #@3c
    .line 237
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 235
    :cond_2
    return-void
.end method
