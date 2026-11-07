.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ResponderID.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 33
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .registers 4
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 67
    if-eqz p1, :cond_b

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    return-object v0

    .line 69
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    if-eqz v0, :cond_8

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0

    .line 42
    :cond_8
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    if-eqz v0, :cond_15

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 46
    :cond_15
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_37

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 50
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 52
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v1

    .line 56
    :cond_2d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v1

    .line 60
    .end local v0    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_37
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getKeyHash()[B
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 80
    .local v0, "octetString":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "octetString":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_8

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 108
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 111
    :cond_10
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
