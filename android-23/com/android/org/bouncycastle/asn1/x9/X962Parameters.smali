.class public Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 14
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 14
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 1
    .param p1, "ecParameters"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 14
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 42
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    .line 40
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 19
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 21
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@f
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@14
    return-object v0

    #@15
    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "unknown object in getInstance()"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method

.method public isImplicitlyCA()Z
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@4
    return v0
.end method

.method public isNamedCurve()Z
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method
