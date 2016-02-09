.class public Lcom/android/org/bouncycastle/asn1/DLTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


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
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    #@5
    .line 10
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
    .line 78
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    #@4
    if-nez v2, :cond_2

    #@6
    .line 80
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    .line 82
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 84
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@16
    invoke-virtual {p1, v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@19
    .line 85
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@20
    .line 86
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 76
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    return-void

    #@24
    .line 94
    .restart local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 96
    const/16 v0, 0xa0

    #@2c
    .line 103
    .local v0, "flags":I
    :goto_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@2e
    invoke-virtual {p1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@31
    .line 104
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@34
    goto :goto_0

    #@35
    .line 100
    .end local v0    # "flags":I
    :cond_1
    const/16 v0, 0x80

    #@37
    .restart local v0    # "flags":I
    goto :goto_1

    #@38
    .line 109
    .end local v0    # "flags":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@3a
    sget-object v3, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    #@3c
    invoke-virtual {p1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@3f
    goto :goto_0
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 54
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@11
    move-result v0

    #@12
    .line 56
    .local v0, "length":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 58
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@18
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@1b
    move-result v1

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@1f
    move-result v2

    #@20
    add-int/2addr v1, v2

    #@21
    add-int/2addr v1, v0

    #@22
    return v1

    #@23
    .line 63
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    .line 65
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@27
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v1, v0

    #@2c
    return v1

    #@2d
    .line 70
    .end local v0    # "length":I
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    #@2f
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@32
    move-result v1

    #@33
    add-int/lit8 v1, v1, 0x1

    #@35
    return v1
.end method

.method isConstructed()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 30
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 32
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 34
    return v2

    #@a
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v0

    #@14
    .line 40
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 45
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    return v2
.end method
