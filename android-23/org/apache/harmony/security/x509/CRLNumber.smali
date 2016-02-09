.class public final Lorg/apache/harmony/security/x509/CRLNumber;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CRLNumber.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final number:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 36
    return-void
.end method

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
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 45
    new-instance v1, Ljava/math/BigInteger;

    #@5
    sget-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [B

    #@d
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@10
    iput-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@12
    .line 43
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "CRL Number: [ "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, " ]\n"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 65
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 60
    sget-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    #@12
    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    #@14
    return-object v0
.end method

.method public getNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
