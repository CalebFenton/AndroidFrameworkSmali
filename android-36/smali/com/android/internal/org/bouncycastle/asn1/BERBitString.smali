.class public Lcom/android/internal/org/bouncycastle/asn1/BERBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "BERBitString.java"


# static fields
.field private static final blacklist DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>(BI)V
    .registers 4
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 76
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 81
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BII)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "padBits"    # I
    .param p3, "segmentLimit"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 88
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 89
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "contents"    # [B
    .param p2, "check"    # Z

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 113
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 98
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;I)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;I)V
    .registers 5
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .param p2, "segmentLimit"    # I

    .line 103
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 104
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 105
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 106
    return-void
.end method

.method static blacklist flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B
    .registers 12
    .param p0, "bitStrings"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 22
    array-length v0, p0

    .line 23
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_4c

    .line 32
    add-int/lit8 v3, v0, -0x1

    .local v3, "last":I
    const/4 v4, 0x0

    .line 33
    .local v4, "totalLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    goto :goto_15

    .line 29
    .end local v3    # "last":I
    .end local v4    # "totalLength":I
    .end local v5    # "i":I
    :pswitch_b
    aget-object v1, p0, v1

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-object v1

    .line 27
    :pswitch_10
    new-array v2, v2, [B

    aput-byte v1, v2, v1

    return-object v2

    .line 33
    .restart local v3    # "last":I
    .restart local v4    # "totalLength":I
    .restart local v5    # "i":I
    :goto_15
    if-ge v5, v3, :cond_2d

    .line 35
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 36
    .local v6, "elementContents":[B
    aget-byte v7, v6, v1

    if-nez v7, :cond_25

    .line 41
    array-length v7, v6

    sub-int/2addr v7, v2

    add-int/2addr v4, v7

    .line 33
    .end local v6    # "elementContents":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 38
    .restart local v6    # "elementContents":[B
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only the last nested bitstring can have padding"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v5    # "i":I
    .end local v6    # "elementContents":[B
    :cond_2d
    aget-object v5, p0, v3

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 46
    .local v5, "lastElementContents":[B
    aget-byte v6, v5, v1

    .line 47
    .local v6, "padBits":B
    array-length v7, v5

    add-int/2addr v4, v7

    .line 49
    new-array v7, v4, [B

    .line 50
    .local v7, "contents":[B
    aput-byte v6, v7, v1

    .line 52
    const/4 v1, 0x1

    .line 53
    .local v1, "pos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3b
    if-ge v8, v0, :cond_4a

    .line 55
    aget-object v9, p0, v8

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 56
    .local v9, "elementContents":[B
    array-length v10, v9

    sub-int/2addr v10, v2

    .line 57
    .local v10, "length":I
    invoke-static {v9, v2, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    add-int/2addr v1, v10

    .line 53
    .end local v9    # "elementContents":[B
    .end local v10    # "length":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 62
    .end local v8    # "i":I
    :cond_4a
    return-object v7

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 14
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 158
    return-void

    .line 161
    :cond_10
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 162
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_25

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    move-object v2, p1

    goto :goto_53

    .line 168
    :cond_25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2d

    move-object v2, p1

    goto :goto_53

    .line 174
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    aget-byte v4, v0, v1

    .line 175
    .local v4, "pad":B
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    .line 176
    .local v0, "length":I
    add-int/lit8 v2, v0, -0x1

    .line 177
    .local v2, "remaining":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v10, v3, -0x1

    .line 179
    .local v10, "segmentLength":I
    :goto_3a
    if-le v2, v10, :cond_48

    .line 181
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v9, v0, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    .end local p1    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v5, "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-static/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 182
    sub-int/2addr v2, v10

    goto :goto_3a

    .line 185
    .end local v5    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .restart local p1    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    :cond_48
    move-object v5, p1

    .end local p1    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .restart local v5    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    move v7, v2

    move-object v2, v5

    .end local v5    # "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v2, "out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .local v7, "remaining":I
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v6, v0, v7

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 188
    .end local v0    # "length":I
    .end local v4    # "pad":B
    .end local v7    # "remaining":I
    .end local v10    # "segmentLength":I
    :goto_53
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 189
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 190
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
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

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v0

    return v0

    .line 128
    :cond_e
    if-eqz p1, :cond_12

    const/4 v0, 0x4

    goto :goto_13

    :cond_12
    const/4 v0, 0x3

    .line 130
    .local v0, "totalLength":I
    :goto_13
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    array-length v3, v3

    if-ge v1, v3, :cond_2a

    .line 134
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->encodedLength(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .end local v1    # "i":I
    :cond_2a
    goto :goto_4f

    .line 137
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_32

    goto :goto_4f

    .line 143
    :cond_32
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v3, v2

    div-int/2addr v1, v3

    .line 144
    .local v1, "extraSegments":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 146
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v4, v2

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    .line 147
    .local v3, "lastSegmentLength":I
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    .end local v1    # "extraSegments":I
    .end local v3    # "lastSegmentLength":I
    :goto_4f
    return v0
.end method
