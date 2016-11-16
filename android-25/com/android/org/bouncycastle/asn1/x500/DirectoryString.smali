.class public Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DirectoryString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lcom/android/org/bouncycastle/asn1/ASN1String;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBMPString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@5
    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERPrintableString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@5
    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERT61String;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@5
    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@5
    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERUniversalString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@a
    .line 99
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 2
    .param p0, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 61
    if-nez p1, :cond_0

    #@2
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "choice item must be explicitly tagged"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 28
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@8
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@9
    .line 31
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@f
    nop

    #@10
    nop

    #@11
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERT61String;)V

    #@14
    return-object v0

    #@15
    .line 36
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@1b
    nop

    #@1c
    nop

    #@1d
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERPrintableString;)V

    #@20
    return-object v0

    #@21
    .line 41
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@27
    nop

    #@28
    nop

    #@29
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERUniversalString;)V

    #@2c
    return-object v0

    #@2d
    .line 46
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@33
    nop

    #@34
    nop

    #@35
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERUTF8String;)V

    #@38
    return-object v0

    #@39
    .line 51
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@3b
    if-eqz v0, :cond_6

    #@3d
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    #@3f
    nop

    #@40
    nop

    #@41
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERBMPString;)V

    #@44
    return-object v0

    #@45
    .line 56
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "illegal object in getInstance: "

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@2
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
