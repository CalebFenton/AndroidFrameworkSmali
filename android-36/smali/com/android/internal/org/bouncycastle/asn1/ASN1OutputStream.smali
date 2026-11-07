.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# instance fields
.field private blacklist os:Ljava/io/OutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    .line 40
    return-void
.end method

.method public static blacklist create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 21
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 25
    :cond_e
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 31
    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method static blacklist getLengthOfDL(I)I
    .registers 3
    .param p0, "dl"    # I

    .line 240
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    .line 242
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_6
    const/4 v0, 0x2

    .line 246
    .local v0, "length":I
    :goto_7
    ushr-int/lit8 v1, p0, 0x8

    move p0, v1

    if-eqz v1, :cond_f

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 250
    :cond_f
    return v0
.end method

.method static blacklist getLengthOfEncodingDL(ZI)I
    .registers 3
    .param p0, "withID"    # Z
    .param p1, "contentsLength"    # I

    .line 255
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static blacklist getLengthOfIdentifier(I)I
    .registers 3
    .param p0, "tag"    # I

    .line 260
    const/16 v0, 0x1f

    if-ge p0, v0, :cond_6

    .line 262
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_6
    const/4 v0, 0x2

    .line 266
    .local v0, "length":I
    :goto_7
    ushr-int/lit8 v1, p0, 0x7

    move p0, v1

    if-eqz v1, :cond_f

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 270
    :cond_f
    return v0
.end method


# virtual methods
.method public blacklist close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 45
    return-void
.end method

.method public blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 50
    return-void
.end method

.method blacklist flushInternal()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method blacklist getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .registers 3

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method blacklist getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;
    .registers 3

    .line 86
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final blacklist write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 117
    return-void
.end method

.method final blacklist write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 122
    return-void
.end method

.method final blacklist writeDL(I)V
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_23

    .line 97
    :cond_8
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 98
    .local v0, "stack":[B
    array-length v1, v0

    .line 102
    .local v1, "pos":I
    :cond_c
    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 103
    ushr-int/lit8 p1, p1, 0x8

    .line 105
    if-nez p1, :cond_c

    .line 107
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 108
    .local v2, "count":I
    add-int/lit8 v1, v1, -0x1

    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 110
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 112
    .end local v0    # "stack":[B
    .end local v1    # "pos":I
    .end local v2    # "count":I
    :goto_23
    return-void
.end method

.method blacklist writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_2
    if-ge v0, v1, :cond_11

    .line 129
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_11
    return-void
.end method

.method final blacklist writeEncodingDL(ZIB)V
    .registers 5
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 138
    return-void
.end method

.method final blacklist writeEncodingDL(ZIB[BII)V
    .registers 8
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contentsPrefix"    # B
    .param p4, "contents"    # [B
    .param p5, "contentsOff"    # I
    .param p6, "contentsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 159
    add-int/lit8 v0, p6, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 161
    invoke-virtual {p0, p4, p5, p6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 162
    return-void
.end method

.method final blacklist writeEncodingDL(ZII[B)V
    .registers 7
    .param p1, "withID"    # Z
    .param p2, "flags"    # I
    .param p3, "tag"    # I
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 176
    array-length v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 177
    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 178
    return-void
.end method

.method final blacklist writeEncodingDL(ZI[B)V
    .registers 6
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 143
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 144
    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 145
    return-void
.end method

.method final blacklist writeEncodingDL(ZI[BII)V
    .registers 6
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .param p4, "contentsOff"    # I
    .param p5, "contentsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 151
    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 152
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 153
    return-void
.end method

.method final blacklist writeEncodingDL(ZI[BIIB)V
    .registers 8
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .param p4, "contentsOff"    # I
    .param p5, "contentsLen"    # I
    .param p6, "contentsSuffix"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 168
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 169
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 170
    invoke-virtual {p0, p6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 171
    return-void
.end method

.method final blacklist writeEncodingIL(ZI[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 183
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 187
    return-void
.end method

.method final blacklist writeIdentifier(ZI)V
    .registers 3
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 195
    :cond_5
    return-void
.end method

.method final blacklist writeIdentifier(ZII)V
    .registers 7
    .param p1, "withID"    # Z
    .param p2, "flags"    # I
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    if-nez p1, :cond_3

    goto :goto_34

    .line 203
    :cond_3
    const/16 v0, 0x1f

    if-ge p3, v0, :cond_d

    .line 205
    or-int v0, p2, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_34

    .line 209
    :cond_d
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 210
    .local v0, "stack":[B
    array-length v1, v0

    .line 212
    .local v1, "pos":I
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p3, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    :goto_18
    const/16 v2, 0x7f

    if-le p3, v2, :cond_28

    .line 215
    ushr-int/lit8 p3, p3, 0x7

    .line 216
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p3, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18

    .line 219
    :cond_28
    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v2, p2, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 223
    .end local v0    # "stack":[B
    .end local v1    # "pos":I
    :goto_34
    return-void
.end method

.method public final blacklist writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "encodable"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_e

    .line 59
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 61
    return-void

    .line 56
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    if-eqz p1, :cond_a

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 72
    return-void

    .line 67
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 3
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withID"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 228
    return-void
.end method

.method blacklist writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6
    .param p1, "primitives"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_2
    if-ge v0, v1, :cond_d

    .line 234
    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 236
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_d
    return-void
.end method
