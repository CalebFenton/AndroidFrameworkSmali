.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AttCertIssuer.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field blacklist choiceObj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

.field blacklist obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .param p1, "names"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;)V
    .registers 5
    .param p1, "v2Form"    # Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 74
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 25
    if-eqz p0, :cond_64

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_7

    goto :goto_64

    .line 29
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_15

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 33
    :cond_15
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_22

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 37
    :cond_22
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_34

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 41
    :cond_34
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_42

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 46
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 27
    :cond_64
    :goto_64
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method


# virtual methods
.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
