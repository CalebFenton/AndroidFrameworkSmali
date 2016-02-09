.class public Lcom/android/org/bouncycastle/asn1/BEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 10
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 19
    if-nez p1, :cond_0

    #@2
    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeNull()V

    #@5
    .line 17
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    #@6
    .line 23
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 25
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@f
    goto :goto_0

    #@10
    .line 27
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 29
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@1d
    goto :goto_0

    #@1e
    .line 33
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "object not BEREncodable"

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method
