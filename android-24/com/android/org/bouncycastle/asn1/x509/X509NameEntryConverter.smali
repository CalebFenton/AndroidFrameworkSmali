.class public abstract Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "X509NameEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected canBePrintable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x61

    #@2
    .line 65
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    sub-int/2addr v5, p2

    #@b
    div-int/lit8 v5, v5, 0x2

    #@d
    new-array v1, v5, [B

    #@f
    .line 67
    .local v1, "data":[B
    const/4 v2, 0x0

    #@10
    .local v2, "index":I
    :goto_0
    array-length v5, v1

    #@11
    if-eq v2, v5, :cond_2

    #@13
    .line 69
    mul-int/lit8 v5, v2, 0x2

    #@15
    add-int/2addr v5, p2

    #@16
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v3

    #@1a
    .line 70
    .local v3, "left":C
    mul-int/lit8 v5, v2, 0x2

    #@1c
    add-int/2addr v5, p2

    #@1d
    add-int/lit8 v5, v5, 0x1

    #@1f
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v4

    #@23
    .line 72
    .local v4, "right":C
    if-ge v3, v7, :cond_0

    #@25
    .line 74
    add-int/lit8 v5, v3, -0x30

    #@27
    shl-int/lit8 v5, v5, 0x4

    #@29
    int-to-byte v5, v5

    #@2a
    aput-byte v5, v1, v2

    #@2c
    .line 80
    :goto_1
    if-ge v4, v7, :cond_1

    #@2e
    .line 82
    aget-byte v5, v1, v2

    #@30
    add-int/lit8 v6, v4, -0x30

    #@32
    int-to-byte v6, v6

    #@33
    or-int/2addr v5, v6

    #@34
    int-to-byte v5, v5

    #@35
    aput-byte v5, v1, v2

    #@37
    .line 67
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 78
    :cond_0
    add-int/lit8 v5, v3, -0x61

    #@3c
    add-int/lit8 v5, v5, 0xa

    #@3e
    shl-int/lit8 v5, v5, 0x4

    #@40
    int-to-byte v5, v5

    #@41
    aput-byte v5, v1, v2

    #@43
    goto :goto_1

    #@44
    .line 86
    :cond_1
    aget-byte v5, v1, v2

    #@46
    add-int/lit8 v6, v4, -0x61

    #@48
    add-int/lit8 v6, v6, 0xa

    #@4a
    int-to-byte v6, v6

    #@4b
    or-int/2addr v5, v6

    #@4c
    int-to-byte v5, v5

    #@4d
    aput-byte v5, v1, v2

    #@4f
    goto :goto_2

    #@50
    .line 90
    .end local v3    # "left":C
    .end local v4    # "right":C
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@52
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@55
    .line 92
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@58
    move-result-object v5

    #@59
    return-object v5
.end method

.method public abstract getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method
