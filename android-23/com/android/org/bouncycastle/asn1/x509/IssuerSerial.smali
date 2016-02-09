.class public Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuerSerial.java"


# instance fields
.field issuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field issuerUID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field serial:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x2

    #@2
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v0

    #@9
    if-eq v0, v1, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v0

    #@f
    if-eq v0, v2, :cond_0

    #@11
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Bad sequence size: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 53
    :cond_0
    const/4 v0, 0x0

    #@30
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3a
    .line 54
    const/4 v0, 0x1

    #@3b
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3e
    move-result-object v0

    #@3f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@45
    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@48
    move-result v0

    #@49
    if-ne v0, v2, :cond_1

    #@4b
    .line 58
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@55
    .line 46
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    #@a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@12
    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serial"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@5
    .line 81
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serial"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@8
    .line 71
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 25
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 30
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 35
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getIssuerUID()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 113
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 114
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 116
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 118
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    .line 121
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1a
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1d
    return-object v1
.end method
