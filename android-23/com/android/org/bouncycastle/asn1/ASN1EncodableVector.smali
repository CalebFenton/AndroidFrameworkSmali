.class public Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# instance fields
.field v:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@a
    .line 16
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 25
    return-void
.end method

.method public addAll(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 37
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@2
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 39
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@e
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@15
    goto :goto_0

    #@16
    .line 35
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
