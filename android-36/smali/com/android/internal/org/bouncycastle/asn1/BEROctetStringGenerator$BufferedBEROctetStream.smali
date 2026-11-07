.class Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private blacklist _buf:[B

.field private blacklist _derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

.field private blacklist _off:I

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .registers 4
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 137
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;->flushInternal()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    .line 140
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 92
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_20

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 95
    iput v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 97
    :cond_20
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v0, v0

    .line 102
    .local v0, "bufLen":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int v1, v0, v1

    .line 103
    .local v1, "available":I
    if-ge p3, v1, :cond_16

    .line 105
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 107
    return-void

    .line 110
    :cond_16
    const/4 v2, 0x0

    .line 111
    .local v2, "count":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2c

    .line 113
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/2addr v2, v1

    .line 115
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v3, v5, v6, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 119
    :cond_2c
    :goto_2c
    sub-int v3, p3, v2

    move v6, v3

    .local v6, "remaining":I
    if-lt v3, v0, :cond_3a

    .line 121
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    add-int v7, p2, v2

    invoke-static {v3, v5, p1, v7, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 122
    add-int/2addr v2, v0

    goto :goto_2c

    .line 125
    :cond_3a
    add-int v3, p2, v2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {p1, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iput v6, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 127
    return-void
.end method
