.class public final Lorg/apache/harmony/security/asn1/ASN1UTCTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1UTCTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

.field public static final UTC_HM:I = 0xb

.field public static final UTC_HMS:I = 0xd

.field public static final UTC_LOCAL_HM:I = 0xf

.field public static final UTC_LOCAL_HMS:I = 0x11

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyMMddHHmmss\'Z\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/16 v0, 0x17

    #@2
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    #@5
    .line 61
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1UTCTime;
    .locals 1

    #@0
    .prologue
    .line 74
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

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
    .line 78
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    #@3
    .line 80
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 81
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

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
    .line 87
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeUTCTime()V

    #@3
    .line 86
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyMMddHHmmss\'Z\'"

    #@5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@a
    .line 99
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v1, "UTC"

    #@d
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@14
    .line 100
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@16
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@22
    .line 101
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@24
    check-cast v1, [B

    #@26
    array-length v1, v1

    #@27
    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@29
    .line 97
    return-void
.end method
