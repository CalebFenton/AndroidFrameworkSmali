.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttCertIssuer.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "names"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V
    .locals 3
    .param p1, "v2Form"    # Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 68
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a
    invoke-direct {v0, v2, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    .line 66
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 21
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 23
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 25
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@f
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    #@16
    return-object v0

    #@17
    .line 29
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@1d
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@1f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    #@22
    return-object v0

    #@23
    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@25
    if-eqz v0, :cond_4

    #@27
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@2b
    .end local p0    # "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    #@2c
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    #@33
    return-object v0

    #@34
    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@3a
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    #@41
    return-object v0

    #@42
    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "unknown object in factory: "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method
