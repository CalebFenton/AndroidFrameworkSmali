.class public Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
    }
.end annotation


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@5
    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 150
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 156
    return-void
.end method

.method getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 2

    #@0
    .prologue
    .line 163
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    return-object v0
.end method

.method getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 2

    #@0
    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    return-object v0
.end method

.method write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 47
    return-void
.end method

.method write([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@5
    .line 53
    return-void
.end method

.method write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 59
    return-void
.end method

.method writeEncoded(II[B)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@3
    .line 111
    array-length v0, p3

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@7
    .line 112
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    #@a
    .line 108
    return-void
.end method

.method writeEncoded(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@3
    .line 70
    array-length v0, p2

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@7
    .line 71
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    #@a
    .line 67
    return-void
.end method

.method writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    if-eqz p1, :cond_0

    #@2
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;

    #@4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V

    #@9
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@c
    .line 137
    return-void

    #@d
    .line 145
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "null object detected"

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method writeLength(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    const/16 v3, 0x7f

    #@2
    if-le p1, v3, :cond_1

    #@4
    .line 25
    const/4 v1, 0x1

    #@5
    .line 26
    .local v1, "size":I
    move v2, p1

    #@6
    .line 28
    .local v2, "val":I
    :goto_0
    ushr-int/lit8 v2, v2, 0x8

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 30
    add-int/lit8 v1, v1, 0x1

    #@c
    goto :goto_0

    #@d
    .line 33
    :cond_0
    or-int/lit16 v3, v1, 0x80

    #@f
    int-to-byte v3, v3

    #@10
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@13
    .line 35
    add-int/lit8 v3, v1, -0x1

    #@15
    mul-int/lit8 v0, v3, 0x8

    #@17
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    #@19
    .line 37
    shr-int v3, p1, v0

    #@1b
    int-to-byte v3, v3

    #@1c
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@1f
    .line 35
    add-int/lit8 v0, v0, -0x8

    #@21
    goto :goto_1

    #@22
    .line 42
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "val":I
    :cond_1
    int-to-byte v3, p1

    #@23
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@26
    .line 21
    :cond_2
    return-void
.end method

.method protected writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@6
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 116
    return-void
.end method

.method public writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    if-eqz p1, :cond_0

    #@2
    .line 128
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@9
    .line 124
    return-void

    #@a
    .line 132
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "null object detected"

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method writeTag(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    const/16 v2, 0x1f

    #@2
    if-ge p2, v2, :cond_0

    #@4
    .line 79
    or-int v2, p1, p2

    #@6
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@9
    .line 75
    :goto_0
    return-void

    #@a
    .line 83
    :cond_0
    or-int/lit8 v2, p1, 0x1f

    #@c
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@f
    .line 84
    const/16 v2, 0x80

    #@11
    if-ge p2, v2, :cond_1

    #@13
    .line 86
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@16
    goto :goto_0

    #@17
    .line 90
    :cond_1
    const/4 v2, 0x5

    #@18
    new-array v1, v2, [B

    #@1a
    .line 91
    .local v1, "stack":[B
    array-length v0, v1

    #@1b
    .line 93
    .local v0, "pos":I
    add-int/lit8 v0, v0, -0x1

    #@1d
    and-int/lit8 v2, p2, 0x7f

    #@1f
    int-to-byte v2, v2

    #@20
    aput-byte v2, v1, v0

    #@22
    .line 97
    :cond_2
    shr-int/lit8 p2, p2, 0x7

    #@24
    .line 98
    add-int/lit8 v0, v0, -0x1

    #@26
    and-int/lit8 v2, p2, 0x7f

    #@28
    or-int/lit16 v2, v2, 0x80

    #@2a
    int-to-byte v2, v2

    #@2b
    aput-byte v2, v1, v0

    #@2d
    .line 100
    const/16 v2, 0x7f

    #@2f
    if-gt p2, v2, :cond_2

    #@31
    .line 102
    array-length v2, v1

    #@32
    sub-int/2addr v2, v0

    #@33
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    #@36
    goto :goto_0
.end method
