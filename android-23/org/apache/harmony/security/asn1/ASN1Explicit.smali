.class public final Lorg/apache/harmony/security/asn1/ASN1Explicit;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1Explicit.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I
    .param p3, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(II)V

    #@3
    .line 59
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 57
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 46
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@5
    .line 45
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    #@2
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 64
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ASN.1 explicitly tagged type is expected at ["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 65
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@16
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 65
    const-string/jumbo v2, "]. Expected tag: "

    #@1d
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 65
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 65
    const-string/jumbo v2, ", "

    #@2e
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 66
    const-string/jumbo v2, "but encountered tag "

    #@35
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 66
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@4e
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@50
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@56
    .line 72
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@58
    if-eqz v0, :cond_1

    #@5a
    .line 73
    const/4 v0, 0x0

    #@5b
    return-object v0

    #@5c
    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    return-object v0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 79
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    #@3
    .line 78
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 83
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    #@3
    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/ASN1Constructed;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " for type "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
