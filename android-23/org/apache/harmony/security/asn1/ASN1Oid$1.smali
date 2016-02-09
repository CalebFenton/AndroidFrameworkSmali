.class final Lorg/apache/harmony/security/asn1/ASN1Oid$1;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1Oid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1Oid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 138
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@9
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@b
    aget-byte v4, v5, v6

    #@d
    .line 139
    .local v4, "octet":I
    and-int/lit8 v1, v4, 0x7f

    #@f
    .line 141
    .local v1, "element":I
    const/4 v2, 0x0

    #@10
    .line 142
    .local v2, "index":I
    :goto_0
    and-int/lit16 v5, v4, 0x80

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 143
    add-int/lit8 v2, v2, 0x1

    #@16
    .line 144
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@18
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@1a
    add-int/2addr v6, v2

    #@1b
    aget-byte v4, v5, v6

    #@1d
    .line 145
    shl-int/lit8 v5, v1, 0x7

    #@1f
    and-int/lit8 v6, v4, 0x7f

    #@21
    or-int v1, v5, v6

    #@23
    goto :goto_0

    #@24
    .line 148
    :cond_0
    const/16 v5, 0x4f

    #@26
    if-le v1, v5, :cond_1

    #@28
    .line 149
    const/16 v5, 0x32

    #@2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 150
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 151
    add-int/lit8 v5, v1, -0x50

    #@32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 159
    :goto_1
    const/4 v3, 0x2

    #@36
    .local v3, "j":I
    :goto_2
    iget v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    #@38
    if-ge v3, v5, :cond_3

    #@3a
    .line 160
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 162
    add-int/lit8 v2, v2, 0x1

    #@3f
    .line 163
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@41
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@43
    add-int/2addr v6, v2

    #@44
    aget-byte v4, v5, v6

    #@46
    .line 164
    and-int/lit8 v1, v4, 0x7f

    #@48
    .line 166
    :goto_3
    and-int/lit16 v5, v4, 0x80

    #@4a
    if-eqz v5, :cond_2

    #@4c
    .line 167
    add-int/lit8 v2, v2, 0x1

    #@4e
    .line 168
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@50
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@52
    add-int/2addr v6, v2

    #@53
    aget-byte v4, v5, v6

    #@55
    .line 169
    shl-int/lit8 v5, v1, 0x7

    #@57
    and-int/lit8 v6, v4, 0x7f

    #@59
    or-int v1, v5, v6

    #@5b
    goto :goto_3

    #@5c
    .line 153
    .end local v3    # "j":I
    :cond_1
    div-int/lit8 v5, v1, 0x28

    #@5e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    .line 154
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 155
    rem-int/lit8 v5, v1, 0x28

    #@66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    goto :goto_1

    #@6a
    .line 172
    .restart local v3    # "j":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    .line 159
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 175
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    return-object v5
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 180
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/lang/String;

    #@4
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@7
    move-result-object v0

    #@8
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@a
    .line 181
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@d
    .line 178
    return-void
.end method
