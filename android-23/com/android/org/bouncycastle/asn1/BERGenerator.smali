.class public Lcom/android/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 10
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    #@6
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 10
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    #@6
    .line 27
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    #@9
    .line 28
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    #@b
    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    #@d
    .line 23
    return-void
.end method

.method private writeHdr(I)V
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@7
    const/16 v1, 0x80

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 39
    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method protected writeBERBody(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "contentStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@3
    move-result v0

    #@4
    .local v0, "ch":I
    if-ltz v0, :cond_0

    #@6
    .line 84
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@8
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    #@b
    goto :goto_0

    #@c
    .line 78
    :cond_0
    return-void
.end method

.method protected writeBEREnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@6
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@8
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@b
    .line 94
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@15
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@18
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1d
    .line 89
    :cond_0
    return-void
.end method

.method protected writeBERHeader(I)V
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 51
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    #@6
    or-int/lit16 v0, v1, 0x80

    #@8
    .line 53
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 55
    or-int/lit8 v1, v0, 0x20

    #@e
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    #@11
    .line 56
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    #@14
    .line 47
    .end local v0    # "tagNum":I
    :goto_0
    return-void

    #@15
    .line 60
    .restart local v0    # "tagNum":I
    :cond_0
    and-int/lit8 v1, p1, 0x20

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 62
    or-int/lit8 v1, v0, 0x20

    #@1b
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 66
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    #@22
    goto :goto_0

    #@23
    .line 72
    .end local v0    # "tagNum":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    #@26
    goto :goto_0
.end method
