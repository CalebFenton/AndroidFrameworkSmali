.class public Lcom/android/org/bouncycastle/asn1/DLSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DLSet.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    #@3
    .line 57
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@6
    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 57
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@6
    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    #@4
    .line 57
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@7
    .line 79
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "a"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    #@4
    .line 57
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@7
    .line 88
    return-void
.end method

.method private getBodyLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@2
    if-gez v3, :cond_1

    #@4
    .line 98
    const/4 v1, 0x0

    #@5
    .line 100
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getObjects()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 104
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@15
    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@20
    move-result v3

    #@21
    add-int/2addr v1, v3

    #@22
    goto :goto_0

    #@23
    .line 107
    :cond_0
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@25
    .line 110
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_1
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    #@27
    return v3
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
    .line 133
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@3
    move-result-object v0

    #@4
    .line 134
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    #@7
    move-result v2

    #@8
    .line 136
    .local v2, "length":I
    const/16 v4, 0x31

    #@a
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@d
    .line 137
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@10
    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getObjects()Ljava/util/Enumeration;

    #@13
    move-result-object v1

    #@14
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 141
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .line 143
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@20
    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    goto :goto_0

    #@24
    .line 131
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    #@3
    move-result v0

    #@4
    .line 118
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    add-int/2addr v1, v0

    #@b
    return v1
.end method
