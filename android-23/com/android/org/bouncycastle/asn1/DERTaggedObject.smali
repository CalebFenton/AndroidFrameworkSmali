.class public Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    #@5
    .line 10
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "encodable"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 28
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 23
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0xa0

    #@2
    .line 84
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    #@4
    if-nez v2, :cond_2

    #@6
    .line 86
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    .line 88
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 90
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@16
    invoke-virtual {p1, v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@19
    .line 91
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@20
    .line 92
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 82
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    return-void

    #@24
    .line 100
    .restart local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 102
    const/16 v0, 0xa0

    #@2c
    .line 109
    .local v0, "flags":I
    :goto_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@2e
    invoke-virtual {p1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@31
    .line 110
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@34
    goto :goto_0

    #@35
    .line 106
    .end local v0    # "flags":I
    :cond_1
    const/16 v0, 0x80

    #@37
    .restart local v0    # "flags":I
    goto :goto_1

    #@38
    .line 115
    .end local v0    # "flags":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@3a
    sget-object v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    #@3c
    invoke-virtual {p1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@3f
    goto :goto_0
.end method

.method encodedLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 59
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v1

    #@e
    .line 60
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@11
    move-result v0

    #@12
    .line 62
    .local v0, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 64
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@18
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@1b
    move-result v2

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@1f
    move-result v3

    #@20
    add-int/2addr v2, v3

    #@21
    add-int/2addr v2, v0

    #@22
    return v2

    #@23
    .line 69
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    .line 71
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@27
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@2a
    move-result v2

    #@2b
    add-int/2addr v2, v0

    #@2c
    return v2

    #@2d
    .line 76
    .end local v0    # "length":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    #@2f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@32
    move-result v2

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    return v2
.end method

.method isConstructed()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 35
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 37
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 39
    return v2

    #@a
    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v0

    #@14
    .line 45
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 50
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    return v2
.end method
