.class public Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignerIdentifier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@6
    invoke-direct {v0, v1, v1, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 68
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 70
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@8
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@9
    .line 73
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@f
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@11
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    #@14
    return-object v0

    #@15
    .line 78
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@1b
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1d
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@20
    return-object v0

    #@21
    .line 83
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@2c
    return-object v0

    #@2d
    .line 88
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "Illegal object in SignerIdentifier: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0
.end method


# virtual methods
.method public getId()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    return-object v0
.end method

.method public isTagged()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
