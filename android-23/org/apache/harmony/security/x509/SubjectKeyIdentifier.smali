.class public final Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private final keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "keyIdentifier"    # [B

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    #@5
    .line 46
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    #@2
    .line 56
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 55
    check-cast v1, [B

    #@c
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;-><init>([B)V

    #@f
    .line 57
    .local v0, "res":Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    #@11
    .line 58
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "SubjectKeyIdentifier: [\n"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    #@c
    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "]\n"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 75
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 70
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    #@10
    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    #@12
    return-object v0
.end method

.method public getKeyIdentifier()[B
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    #@2
    return-object v0
.end method
