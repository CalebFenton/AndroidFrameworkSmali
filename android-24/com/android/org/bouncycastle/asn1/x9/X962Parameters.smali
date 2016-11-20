.class public Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Null;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 1
    .param p1, "ecParameters"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    .line 57
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 53
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
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 24
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 26
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 31
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@f
    nop

    #@10
    nop

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@14
    return-object v1

    #@15
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, [B

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 38
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@1b
    nop

    #@1c
    nop

    #@1d
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v1

    #@25
    .line 41
    :catch_0
    move-exception v0

    #@26
    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "unable to parse encoded data: "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v2, "unknown object in getInstance()"

    #@49
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method

.method public isImplicitlyCA()Z
    .locals 1

    #@0
    .prologue
    .line 90
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
    .line 85
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
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method
