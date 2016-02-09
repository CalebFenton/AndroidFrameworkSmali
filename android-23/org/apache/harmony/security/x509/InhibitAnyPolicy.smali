.class public final Lorg/apache/harmony/security/x509/InhibitAnyPolicy;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InhibitAnyPolicy.java"


# instance fields
.field private final skipCerts:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 46
    new-instance v1, Ljava/math/BigInteger;

    #@5
    .line 47
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 46
    check-cast v0, [B

    #@f
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@12
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    #@18
    .line 44
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Inhibit Any-Policy: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/16 v1, 0xa

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 61
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 55
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@7
    move-result-object v0

    #@8
    .line 56
    iget v1, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    #@a
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 55
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    #@14
    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    #@16
    return-object v0
.end method
