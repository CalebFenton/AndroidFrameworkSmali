.class public Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyUsage.java"


# static fields
.field public static final cRLSign:I = 0x2

.field public static final dataEncipherment:I = 0x10

.field public static final decipherOnly:I = 0x8000

.field public static final digitalSignature:I = 0x80

.field public static final encipherOnly:I = 0x1

.field public static final keyAgreement:I = 0x8

.field public static final keyCertSign:I = 0x4

.field public static final keyEncipherment:I = 0x20

.field public static final nonRepudiation:I = 0x40


# instance fields
.field private bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "usage"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "bitString"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    .line 72
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 43
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@13
    return-object v0

    #@14
    .line 50
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasUsages(I)Z
    .locals 1
    .param p1, "usages"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->intValue()I

    #@5
    move-result v0

    #@6
    and-int/2addr v0, p1

    #@7
    if-ne v0, p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 100
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@7
    move-result-object v0

    #@8
    .line 102
    .local v0, "data":[B
    array-length v1, v0

    #@9
    if-ne v1, v4, :cond_0

    #@b
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "KeyUsage: 0x"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    aget-byte v2, v0, v3

    #@19
    and-int/lit16 v2, v2, 0xff

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "KeyUsage: 0x"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    aget-byte v2, v0, v4

    #@36
    and-int/lit16 v2, v2, 0xff

    #@38
    shl-int/lit8 v2, v2, 0x8

    #@3a
    aget-byte v3, v0, v3

    #@3c
    and-int/lit16 v3, v3, 0xff

    #@3e
    or-int/2addr v2, v3

    #@3f
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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
    return-object v1
.end method
