.class public abstract Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private blacklist _isExplicit:Z

.field private blacklist _tagNo:I

.field private blacklist _tagged:Z


# direct methods
.method protected constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 21
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/OutputStream;IZ)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 29
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 30
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 31
    return-void
.end method

.method private blacklist writeHdr(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected blacklist writeBEREnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_1d

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 83
    :cond_1d
    return-void
.end method

.method protected blacklist writeBERHeader(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_23

    .line 48
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    .line 50
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_15

    .line 52
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    .line 57
    :cond_15
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1f

    .line 59
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    .line 63
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 66
    .end local v0    # "tagNum":I
    :goto_22
    goto :goto_26

    .line 69
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 71
    :goto_26
    return-void
.end method
