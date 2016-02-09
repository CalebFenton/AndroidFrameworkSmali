.class public Lcom/android/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 21
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "DER"

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    #@e
    .line 19
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    #@3
    .line 12
    return-void
.end method

.method static encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V
    .locals 1
    .param p0, "derOut"    # Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    #@4
    .line 44
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@6
    .line 36
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 26
    const/4 v0, 0x0

    #@1
    return v0
.end method
