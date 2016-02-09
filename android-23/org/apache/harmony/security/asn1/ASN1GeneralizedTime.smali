.class public final Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1GeneralizedTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

.field private static final GEN_PATTERN:Ljava/lang/String; = "yyyyMMddHHmmss.SSS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const/16 v0, 0x18

    #@2
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    #@5
    .line 49
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;
    .locals 1

    #@0
    .prologue
    .line 62
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@2
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    #@3
    .line 68
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 69
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeGeneralizedTime()V

    #@3
    .line 74
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 8
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 87
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@4
    const-string/jumbo v4, "yyyyMMddHHmmss.SSS"

    #@7
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@9
    invoke-direct {v2, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@c
    .line 88
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "UTC"

    #@f
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@16
    .line 89
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@18
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 93
    .local v3, "temp":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x30

    #@1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@21
    move-result v7

    #@22
    add-int/lit8 v0, v7, -0x1

    #@24
    .local v0, "currLength":I
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    #@27
    move-result v1

    #@28
    .local v1, "nullId":I
    const/4 v4, -0x1

    #@29
    if-eq v1, v4, :cond_0

    #@2b
    move v7, v5

    #@2c
    .line 94
    :goto_1
    if-ne v1, v0, :cond_1

    #@2e
    move v4, v5

    #@2f
    .line 93
    :goto_2
    and-int/2addr v4, v7

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 95
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    goto :goto_0

    #@37
    :cond_0
    move v7, v6

    #@38
    .line 93
    goto :goto_1

    #@39
    :cond_1
    move v4, v6

    #@3a
    .line 94
    goto :goto_2

    #@3b
    .line 98
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v4

    #@3f
    const/16 v5, 0x2e

    #@41
    if-ne v4, v5, :cond_3

    #@43
    .line 99
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 102
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "Z"

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@60
    move-result-object v4

    #@61
    iput-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@63
    .line 103
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@65
    check-cast v4, [B

    #@67
    array-length v4, v4

    #@68
    iput v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@6a
    .line 86
    return-void
.end method
