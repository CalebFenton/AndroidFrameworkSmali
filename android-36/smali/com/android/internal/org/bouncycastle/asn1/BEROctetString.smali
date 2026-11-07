.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final blacklist DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "string"    # [B

    .line 69
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "segmentLimit"    # I

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 91
    return-void
.end method

.method private constructor blacklist <init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p3, "segmentLimit"    # I

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 108
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 109
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    .line 110
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 80
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p2, "segmentLimit"    # I

    .line 102
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 103
    return-void
.end method

.method static blacklist flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 9
    .param p0, "octetStrings"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 34
    array-length v0, p0

    .line 35
    .local v0, "count":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "totalOctets":I
    const/4 v3, 0x0

    .local v3, "i":I
    goto :goto_10

    .line 40
    .end local v2    # "totalOctets":I
    .end local v3    # "i":I
    :pswitch_8
    aget-object v1, p0, v1

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v1

    .line 38
    :pswitch_d
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->EMPTY_OCTETS:[B

    return-object v1

    .line 44
    .restart local v2    # "totalOctets":I
    .restart local v3    # "i":I
    :goto_10
    if-ge v3, v0, :cond_1b

    .line 46
    aget-object v4, p0, v3

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 49
    .end local v3    # "i":I
    :cond_1b
    new-array v3, v2, [B

    .line 50
    .local v3, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "pos":I
    :goto_1f
    if-ge v4, v0, :cond_2e

    .line 52
    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 53
    .local v6, "octets":[B
    array-length v7, v6

    invoke-static {v6, v1, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v7, v6

    add-int/2addr v5, v7

    .line 50
    .end local v6    # "octets":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 58
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_2e
    return-object v3

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 147
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_14

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_2c

    .line 155
    :cond_14
    const/4 v0, 0x0

    .line 156
    .local v0, "pos":I
    :goto_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 158
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 159
    .local v1, "segmentLength":I
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 160
    add-int/2addr v0, v1

    .line 161
    .end local v1    # "segmentLength":I
    goto :goto_15

    .line 164
    .end local v0    # "pos":I
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 166
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 7
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    .line 122
    .local v0, "totalLength":I
    :goto_5
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    array-length v3, v3

    if-ge v1, v3, :cond_1c

    .line 126
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->encodedLength(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "i":I
    :cond_1c
    goto :goto_39

    .line 131
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v1, v3

    .line 132
    .local v1, "fullSegments":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 134
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    .line 135
    .local v3, "lastSegmentLength":I
    if-lez v3, :cond_39

    .line 137
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "fullSegments":I
    .end local v3    # "lastSegmentLength":I
    :cond_39
    :goto_39
    return v0
.end method
