.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@5
    .line 30
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 33
    :catch_0
    move-exception v1

    #@b
    .line 34
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    #@d
    const-string/jumbo v3, "cannot recognise object in stream"

    #@10
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
.end method


# virtual methods
.method abstract asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodedLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    if-ne p0, p1, :cond_0

    #@2
    .line 42
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 45
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    if-eqz v0, :cond_1

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a
    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public abstract hashCode()I
.end method

.method abstract isConstructed()Z
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    #@0
    .prologue
    .line 50
    return-object p0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    #@0
    .prologue
    .line 60
    return-object p0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    #@0
    .prologue
    .line 70
    return-object p0
.end method
