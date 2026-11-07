.class public Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;
.super Ljava/lang/Object;
.source "PKCS7ProcessableObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;


# instance fields
.field private final blacklist structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field private final blacklist type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "type"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "structure"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/Object;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "cOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const-string v1, "DER"

    if-eqz v0, :cond_2b

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 42
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    .local v3, "enc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 47
    .end local v3    # "enc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_12

    .line 48
    .end local v0    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2a
    goto :goto_48

    .line 51
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    .local v0, "encoded":[B
    const/4 v1, 0x1

    .line 54
    .local v1, "index":I
    :goto_36
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x7f

    if-le v2, v3, :cond_41

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 59
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 61
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    .end local v0    # "encoded":[B
    .end local v1    # "index":I
    :goto_48
    return-void
.end method
