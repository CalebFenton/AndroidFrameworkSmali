.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralNames.java"


# instance fields
.field private final names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 64
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v1

    #@7
    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@9
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@b
    .line 66
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@f
    move-result v1

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 68
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@14
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    move-result-object v2

    #@18
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v0

    #@1e
    .line 66
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 2
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@6
    const/4 v1, 0x0

    #@7
    aput-object p1, v0, v1

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@b
    .line 49
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "names"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@5
    .line 56
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .param p1, "extOID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 18
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 20
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 23
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 28
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 74
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@6
    .line 76
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    .line 78
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 95
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "line.separator"

    #@8
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 97
    .local v2, "sep":Ljava/lang/String;
    const-string/jumbo v3, "GeneralNames:"

    #@f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 100
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    array-length v3, v3

    #@19
    if-eq v1, v3, :cond_0

    #@1b
    .line 102
    const-string/jumbo v3, "    "

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 103
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@23
    aget-object v3, v3, v1

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@28
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 100
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method
