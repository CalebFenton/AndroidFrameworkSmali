.class public Lorg/apache/harmony/security/asn1/ASN1Oid;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Oid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1Oid$1;
    }
.end annotation


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

.field private static final STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@7
    .line 133
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid$1;

    #@9
    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid$1;-><init>()V

    #@c
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@e
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    #@4
    .line 46
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@2
    return-object v0
.end method

.method public static getInstanceForString()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    #@0
    .prologue
    .line 194
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

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
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOID()V

    #@3
    .line 65
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 66
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

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
    .line 102
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeOID()V

    #@3
    .line 101
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 78
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    #@4
    .line 79
    .local v4, "oidElement":I
    new-array v3, v4, [I

    #@6
    .line 80
    .local v3, "oid":[I
    const/4 v1, 0x1

    #@7
    .local v1, "id":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v5, v3

    #@9
    if-ge v1, v5, :cond_1

    #@b
    .line 81
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@d
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@f
    add-int/2addr v6, v0

    #@10
    aget-byte v2, v5, v6

    #@12
    .line 82
    .local v2, "octet":I
    and-int/lit8 v4, v2, 0x7f

    #@14
    .line 83
    :goto_1
    and-int/lit16 v5, v2, 0x80

    #@16
    if-eqz v5, :cond_0

    #@18
    .line 84
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 85
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@1c
    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@1e
    add-int/2addr v6, v0

    #@1f
    aget-byte v2, v5, v6

    #@21
    .line 86
    shl-int/lit8 v5, v4, 0x7

    #@23
    and-int/lit8 v6, v2, 0x7f

    #@25
    or-int v4, v5, v6

    #@27
    goto :goto_1

    #@28
    .line 88
    :cond_0
    aput v4, v3, v1

    #@2a
    .line 80
    add-int/lit8 v1, v1, 0x1

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 91
    .end local v2    # "octet":I
    :cond_1
    aget v5, v3, v7

    #@31
    const/16 v6, 0x4f

    #@33
    if-le v5, v6, :cond_2

    #@35
    .line 92
    const/4 v5, 0x2

    #@36
    aput v5, v3, v8

    #@38
    .line 93
    aget v5, v3, v7

    #@3a
    add-int/lit8 v5, v5, -0x50

    #@3c
    aput v5, v3, v7

    #@3e
    .line 98
    :goto_2
    return-object v3

    #@3f
    .line 95
    :cond_2
    aget v5, v3, v7

    #@41
    div-int/lit8 v5, v5, 0x28

    #@43
    aput v5, v3, v8

    #@45
    .line 96
    aget v5, v3, v7

    #@47
    rem-int/lit8 v5, v5, 0x28

    #@49
    aput v5, v3, v7

    #@4b
    goto :goto_2
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 106
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v3, [I

    #@5
    .line 108
    .local v3, "oid":[I
    const/4 v2, 0x0

    #@6
    .line 111
    .local v2, "length":I
    aget v4, v3, v4

    #@8
    mul-int/lit8 v4, v4, 0x28

    #@a
    const/4 v5, 0x1

    #@b
    aget v5, v3, v5

    #@d
    add-int v0, v4, v5

    #@f
    .line 112
    .local v0, "elem":I
    if-nez v0, :cond_2

    #@11
    .line 113
    const/4 v2, 0x1

    #@12
    .line 121
    :cond_0
    const/4 v1, 0x2

    #@13
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@14
    if-ge v1, v4, :cond_4

    #@16
    .line 122
    aget v4, v3, v1

    #@18
    if-nez v4, :cond_3

    #@1a
    .line 123
    add-int/lit8 v2, v2, 0x1

    #@1c
    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 115
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-lez v0, :cond_0

    #@21
    .line 116
    add-int/lit8 v2, v2, 0x1

    #@23
    .line 115
    shr-int/lit8 v0, v0, 0x7

    #@25
    goto :goto_1

    #@26
    .line 126
    .restart local v1    # "i":I
    :cond_3
    aget v0, v3, v1

    #@28
    :goto_2
    if-lez v0, :cond_1

    #@2a
    .line 127
    add-int/lit8 v2, v2, 0x1

    #@2c
    .line 126
    shr-int/lit8 v0, v0, 0x7

    #@2e
    goto :goto_2

    #@2f
    .line 130
    :cond_4
    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@31
    .line 105
    return-void
.end method
