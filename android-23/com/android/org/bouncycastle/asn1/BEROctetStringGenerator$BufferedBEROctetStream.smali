.class Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    .line 49
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@7
    .line 50
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@a
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@c
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    #@e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@13
    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 93
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@7
    new-array v0, v1, [B

    #@9
    .line 94
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@b
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@12
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    #@15
    .line 99
    .end local v0    # "bytes":[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;

    #@17
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    #@1a
    .line 89
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@8
    int-to-byte v2, p1

    #@9
    aput-byte v2, v0, v1

    #@b
    .line 60
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@f
    array-length v1, v1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@16
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    #@19
    .line 63
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@1c
    .line 56
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 69
    :goto_0
    if-lez p3, :cond_0

    #@3
    .line 71
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@5
    array-length v1, v1

    #@6
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@8
    sub-int/2addr v1, v2

    #@9
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v0

    #@d
    .line 72
    .local v0, "numToCopy":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@f
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@11
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 74
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@16
    add-int/2addr v1, v0

    #@17
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@19
    .line 75
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@1d
    array-length v2, v2

    #@1e
    if-ge v1, v2, :cond_1

    #@20
    .line 67
    .end local v0    # "numToCopy":I
    :cond_0
    return-void

    #@21
    .line 80
    .restart local v0    # "numToCopy":I
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@23
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    #@25
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    #@28
    .line 81
    iput v3, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    #@2a
    .line 83
    add-int/2addr p2, v0

    #@2b
    .line 84
    sub-int/2addr p3, v0

    #@2c
    goto :goto_0
.end method
