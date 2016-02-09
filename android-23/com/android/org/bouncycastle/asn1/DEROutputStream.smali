.class public Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 13
    return-void
.end method


# virtual methods
.method getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
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
    .line 22
    if-eqz p1, :cond_0

    #@2
    .line 24
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@d
    .line 20
    return-void

    #@e
    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "null object detected"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method
