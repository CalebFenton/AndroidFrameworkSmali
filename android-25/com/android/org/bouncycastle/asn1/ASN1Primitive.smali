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
    .locals 5
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

    #@8
    move-result-object v2

    #@9
    .line 32
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->available()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 34
    new-instance v3, Ljava/io/IOException;

    #@11
    const-string/jumbo v4, "Extra data detected in stream"

    #@14
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 40
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v1

    #@19
    .line 41
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    #@1b
    const-string/jumbo v4, "cannot recognise object in stream"

    #@1e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 37
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    return-object v2
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
    .line 47
    if-ne p0, p1, :cond_0

    #@2
    .line 49
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 52
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
    .line 57
    return-object p0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    #@0
    .prologue
    .line 67
    return-object p0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    #@0
    .prologue
    .line 77
    return-object p0
.end method
