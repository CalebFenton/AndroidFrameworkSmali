.class public Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.super Lorg/apache/harmony/security/asn1/ASN1BitString;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASN1NamedBitList"
.end annotation


# static fields
.field private static final INDEFINITE_SIZE:I = -0x1

.field private static final SET_MASK:[B

.field private static final emptyString:Lorg/apache/harmony/security/asn1/BitString;


# instance fields
.field private final maxBits:I

.field private final minBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 100
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    #@9
    .line 101
    new-instance v0, Lorg/apache/harmony/security/asn1/BitString;

    #@b
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@d
    const/4 v2, 0x0

    #@e
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    #@11
    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    #@13
    .line 99
    return-void

    #@14
    .line 100
    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "minBits"    # I

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    #@3
    .line 108
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    #@5
    .line 109
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    #@8
    .line 107
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 13
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v12, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 115
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@5
    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@7
    aget-byte v6, v8, v11

    #@9
    .line 116
    .local v6, "unusedBits":I
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@b
    add-int/lit8 v8, v8, -0x1

    #@d
    mul-int/lit8 v8, v8, 0x8

    #@f
    sub-int v0, v8, v6

    #@11
    .line 118
    .local v0, "bitsNumber":I
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    #@13
    if-ne v8, v12, :cond_2

    #@15
    .line 119
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    #@17
    if-ne v8, v12, :cond_0

    #@19
    .line 120
    new-array v7, v0, [Z

    #@1b
    .line 135
    .local v7, "value":[Z
    :goto_0
    if-nez v0, :cond_4

    #@1d
    .line 137
    return-object v7

    #@1e
    .line 122
    .end local v7    # "value":[Z
    :cond_0
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    #@20
    if-le v0, v8, :cond_1

    #@22
    .line 123
    new-array v7, v0, [Z

    #@24
    .restart local v7    # "value":[Z
    goto :goto_0

    #@25
    .line 125
    .end local v7    # "value":[Z
    :cond_1
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    #@27
    new-array v7, v8, [Z

    #@29
    .restart local v7    # "value":[Z
    goto :goto_0

    #@2a
    .line 129
    .end local v7    # "value":[Z
    :cond_2
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    #@2c
    if-le v0, v8, :cond_3

    #@2e
    .line 130
    new-instance v8, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@30
    const-string/jumbo v9, "ASN.1 Named Bitstring: size constraints"

    #@33
    invoke-direct {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@36
    throw v8

    #@37
    .line 132
    :cond_3
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    #@39
    new-array v7, v8, [Z

    #@3b
    .restart local v7    # "value":[Z
    goto :goto_0

    #@3c
    .line 140
    :cond_4
    const/4 v1, 0x1

    #@3d
    .line 141
    .local v1, "i":I
    const/4 v2, 0x0

    #@3e
    .line 142
    .local v2, "j":I
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@40
    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@42
    add-int/lit8 v11, v11, 0x1

    #@44
    aget-byte v4, v8, v11

    #@46
    .line 143
    .local v4, "octet":B
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@48
    add-int/lit8 v5, v8, -0x1

    #@4a
    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_7

    #@4c
    .line 144
    const/4 v3, 0x0

    #@4d
    .local v3, "k":I
    :goto_2
    const/16 v8, 0x8

    #@4f
    if-ge v3, v8, :cond_6

    #@51
    .line 145
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    #@53
    aget-byte v8, v8, v3

    #@55
    and-int/2addr v8, v4

    #@56
    if-eqz v8, :cond_5

    #@58
    move v8, v9

    #@59
    :goto_3
    aput-boolean v8, v7, v2

    #@5b
    .line 144
    add-int/lit8 v3, v3, 0x1

    #@5d
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_2

    #@60
    :cond_5
    move v8, v10

    #@61
    .line 145
    goto :goto_3

    #@62
    .line 147
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@64
    .line 148
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@66
    iget v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@68
    add-int/2addr v11, v1

    #@69
    aget-byte v4, v8, v11

    #@6b
    .line 143
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 152
    .end local v3    # "k":I
    :cond_7
    const/4 v3, 0x0

    #@6f
    .restart local v3    # "k":I
    :goto_4
    rsub-int/lit8 v8, v6, 0x8

    #@71
    if-ge v3, v8, :cond_9

    #@73
    .line 153
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    #@75
    aget-byte v8, v8, v3

    #@77
    and-int/2addr v8, v4

    #@78
    if-eqz v8, :cond_8

    #@7a
    move v8, v9

    #@7b
    :goto_5
    aput-boolean v8, v7, v2

    #@7d
    .line 152
    add-int/lit8 v3, v3, 0x1

    #@7f
    add-int/lit8 v2, v2, 0x1

    #@81
    goto :goto_4

    #@82
    :cond_8
    move v8, v10

    #@83
    .line 153
    goto :goto_5

    #@84
    .line 156
    :cond_9
    return-object v7
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 9
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 160
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v5, [Z

    #@5
    .line 162
    .local v5, "toEncode":[Z
    array-length v7, v5

    #@6
    add-int/lit8 v2, v7, -0x1

    #@8
    .line 163
    .local v2, "index":I
    :goto_0
    if-le v2, v8, :cond_0

    #@a
    aget-boolean v7, v5, v2

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 167
    :cond_0
    if-ne v2, v8, :cond_2

    #@10
    .line 168
    sget-object v7, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    #@12
    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@14
    .line 169
    const/4 v7, 0x1

    #@15
    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@17
    .line 159
    :goto_1
    return-void

    #@18
    .line 164
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 171
    :cond_2
    rem-int/lit8 v7, v2, 0x8

    #@1d
    rsub-int/lit8 v6, v7, 0x7

    #@1f
    .line 172
    .local v6, "unusedBits":I
    div-int/lit8 v7, v2, 0x8

    #@21
    add-int/lit8 v7, v7, 0x1

    #@23
    new-array v0, v7, [B

    #@25
    .line 174
    .local v0, "bytes":[B
    const/4 v3, 0x0

    #@26
    .line 175
    .local v3, "j":I
    array-length v7, v0

    #@27
    add-int/lit8 v2, v7, -0x1

    #@29
    .line 176
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    #@2c
    .line 177
    const/4 v4, 0x0

    #@2d
    .local v4, "k":I
    :goto_3
    const/16 v7, 0x8

    #@2f
    if-ge v4, v7, :cond_4

    #@31
    .line 178
    aget-boolean v7, v5, v3

    #@33
    if-eqz v7, :cond_3

    #@35
    .line 179
    aget-byte v7, v0, v1

    #@37
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    #@39
    aget-byte v8, v8, v4

    #@3b
    or-int/2addr v7, v8

    #@3c
    int-to-byte v7, v7

    #@3d
    aput-byte v7, v0, v1

    #@3f
    .line 177
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@41
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_3

    #@44
    .line 176
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_2

    #@47
    .line 185
    .end local v4    # "k":I
    :cond_5
    const/4 v4, 0x0

    #@48
    .restart local v4    # "k":I
    :goto_4
    rsub-int/lit8 v7, v6, 0x8

    #@4a
    if-ge v4, v7, :cond_7

    #@4c
    .line 186
    aget-boolean v7, v5, v3

    #@4e
    if-eqz v7, :cond_6

    #@50
    .line 187
    aget-byte v7, v0, v2

    #@52
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    #@54
    aget-byte v8, v8, v4

    #@56
    or-int/2addr v7, v8

    #@57
    int-to-byte v7, v7

    #@58
    aput-byte v7, v0, v2

    #@5a
    .line 185
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@5c
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_4

    #@5f
    .line 191
    :cond_7
    new-instance v7, Lorg/apache/harmony/security/asn1/BitString;

    #@61
    invoke-direct {v7, v0, v6}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    #@64
    iput-object v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@66
    .line 192
    array-length v7, v0

    #@67
    add-int/lit8 v7, v7, 0x1

    #@69
    iput v7, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@6b
    goto :goto_1
.end method
