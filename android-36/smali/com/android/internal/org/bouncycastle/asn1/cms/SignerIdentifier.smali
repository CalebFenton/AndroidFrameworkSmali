.class public Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SignerIdentifier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 2
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 36
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 38
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 70
    if-eqz p0, :cond_4f

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    if-eqz v0, :cond_7

    goto :goto_4f

    .line 75
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_14

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    .line 80
    :cond_14
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_21

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 85
    :cond_21
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_2e

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 90
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4f
    :goto_4f
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    .line 106
    :cond_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist isTagged()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
