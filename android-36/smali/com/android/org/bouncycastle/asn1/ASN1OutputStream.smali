.class public Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# instance fields
.field private blacklist os:Ljava/io/OutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public static blacklist create(Ljava/io/OutputStream;)Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 2

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .line 21
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    .line 25
    :cond_e
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 27
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    .line 31
    :cond_1c
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method static blacklist getLengthOfDL(I)I
    .registers 2

    .line 0
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method static blacklist getLengthOfEncodingDL(ZI)I
    .registers 3

    .line 255
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v0

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method static blacklist getLengthOfIdentifier(I)I
    .registers 2

    .line 0
    const/16 v0, 0x1f

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method


# virtual methods
.method blacklist flushInternal()V
    .registers 1

    .line 0
    return-void
.end method

.method blacklist getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .registers 2

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method blacklist getDLSubStream()Lcom/android/org/bouncycastle/asn1/DLOutputStream;
    .registers 2

    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final blacklist write(I)V
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method final blacklist write([BII)V
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeDL(I)V
    .registers 7

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void

    :cond_8
    const/4 v1, 0x5

    .line 97
    new-array v2, v1, [B

    :goto_b
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    .line 102
    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_22

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 108
    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    .line 110
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void

    :cond_22
    move v1, v3

    goto :goto_b
.end method

.method blacklist writeElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    .line 129
    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method final blacklist writeEncodingDL(ZIB)V
    .registers 4

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncodingDL(ZIB[BII)V
    .registers 7

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    add-int/lit8 p1, p6, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 161
    invoke-virtual {p0, p4, p5, p6}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncodingDL(ZI[B)V
    .registers 4

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 143
    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    const/4 p1, 0x0

    .line 144
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncodingDL(ZI[BII)V
    .registers 6

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 151
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 152
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method final blacklist writeEncodingDL(ZI[BIIB)V
    .registers 7

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    add-int/lit8 p1, p5, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 169
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 170
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeEncodingIL(ZI[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 p1, 0x80

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method final blacklist writeIdentifier(ZI)V
    .registers 3

    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_5
    return-void
.end method

.method final blacklist writeIdentifier(ZII)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 p1, 0x1f

    if-ge p3, p1, :cond_d

    or-int p1, p2, p3

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void

    :cond_d
    const/4 v0, 0x6

    .line 209
    new-array v0, v0, [B

    and-int/lit8 v1, p3, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x5

    .line 212
    aput-byte v1, v0, v2

    :goto_16
    const/16 v1, 0x7f

    if-le p3, v1, :cond_26

    ushr-int/lit8 p3, p3, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p3, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 216
    aput-byte v1, v0, v2

    goto :goto_16

    :cond_26
    add-int/lit8 v2, v2, -0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 219
    aput-byte p1, v0, v2

    rsub-int/lit8 p1, v2, 0x6

    .line 221
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    return-void
.end method

.method public final blacklist writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 59
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    return-void

    .line 56
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 3

    .line 227
    invoke-virtual {p1, p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist writePrimitives([Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6

    .line 232
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    .line 234
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method
