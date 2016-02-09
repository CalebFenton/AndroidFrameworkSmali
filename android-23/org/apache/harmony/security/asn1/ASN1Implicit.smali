.class public final Lorg/apache/harmony/security/asn1/ASN1Implicit;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Implicit.java"


# static fields
.field private static final TAGGING_CONSTRUCTED:I = 0x1

.field private static final TAGGING_PRIMITIVE:I = 0x0

.field private static final TAGGING_STRING:I = 0x2


# instance fields
.field private final taggingType:I

.field private final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 64
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    #@5
    .line 66
    instance-of v0, p2, Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@7
    if-nez v0, :cond_0

    #@9
    instance-of v0, p2, Lorg/apache/harmony/security/asn1/ASN1Any;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Implicit tagging can not be used for ASN.1 ANY or CHOICE type"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 74
    :cond_1
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@18
    .line 76
    iget v0, p2, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@1a
    invoke-virtual {p2, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 77
    iget v0, p2, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    #@22
    invoke-virtual {p2, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 80
    const/4 v0, 0x2

    #@29
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    #@2b
    .line 63
    :goto_0
    return-void

    #@2c
    .line 83
    :cond_2
    const/4 v0, 0x0

    #@2d
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    #@2f
    goto :goto_0

    #@30
    .line 87
    :cond_3
    const/4 v0, 0x1

    #@31
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    #@33
    goto :goto_0
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 3
    .param p1, "identifier"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 92
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 98
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    #@9
    if-eq v2, p1, :cond_0

    #@b
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    #@d
    if-ne v2, p1, :cond_3

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    .line 94
    :pswitch_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    #@12
    if-ne v2, p1, :cond_1

    #@14
    :goto_1
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    goto :goto_1

    #@17
    .line 96
    :pswitch_1
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    #@19
    if-ne v2, p1, :cond_2

    #@1b
    :goto_2
    return v0

    #@1c
    :cond_2
    move v0, v1

    #@1d
    goto :goto_2

    #@1e
    :cond_3
    move v0, v1

    #@1f
    .line 98
    goto :goto_0

    #@20
    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

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
    .line 103
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->checkTag(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 105
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "ASN.1 implicitly tagged type expected at ["

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 106
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@18
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 106
    const-string/jumbo v2, "]. Expected tag: "

    #@1f
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 106
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 106
    const-string/jumbo v2, ", "

    #@30
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 107
    const-string/jumbo v2, "but got "

    #@37
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 107
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 111
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    #@4f
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@51
    if-ne v0, v1, :cond_1

    #@53
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@55
    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@57
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@59
    .line 116
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5b
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@61
    .line 118
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@63
    if-eqz v0, :cond_2

    #@65
    .line 119
    const/4 v0, 0x0

    #@66
    return-object v0

    #@67
    .line 114
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@69
    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    #@6b
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@6d
    goto :goto_0

    #@6e
    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    return-object v0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 126
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 127
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    #@7
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@a
    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@d
    .line 124
    return-void

    #@e
    .line 129
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    #@10
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@13
    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@5
    .line 134
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@5
    .line 138
    return-void
.end method
