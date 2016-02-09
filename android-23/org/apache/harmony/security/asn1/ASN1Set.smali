.class public final Lorg/apache/harmony/security/asn1/ASN1Set;
.super Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.source "ASN1Set.java"


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "type"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 36
    const/16 v0, 0x11

    #@2
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;-><init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@5
    .line 35
    return-void
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
    .line 40
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    #@3
    .line 42
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Set;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    #@3
    .line 48
    return-void
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 53
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    #@3
    .line 52
    return-void
.end method
