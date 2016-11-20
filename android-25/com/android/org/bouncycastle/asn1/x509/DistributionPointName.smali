.class public Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DistributionPointName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final FULL_NAME:I = 0x0

.field public static final NAME_RELATIVE_TO_CRL_ISSUER:I = 0x1


# instance fields
.field name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field type:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 57
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@5
    .line 58
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 90
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@a
    .line 92
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@c
    if-nez v0, :cond_0

    #@e
    .line 94
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    .line 88
    :goto_0
    return-void

    #@15
    .line 98
    :cond_0
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 62
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    const-string/jumbo v0, "    "

    #@3
    .line 130
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6
    .line 131
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    .line 132
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 136
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 126
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 35
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 43
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@f
    nop

    #@10
    nop

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    #@14
    return-object v0

    #@15
    .line 50
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "unknown object in factory: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method


# virtual methods
.method public getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 109
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 110
    .local v1, "sep":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 111
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "DistributionPointName: ["

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 113
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    #@14
    if-nez v2, :cond_0

    #@16
    .line 115
    const-string/jumbo v2, "fullName"

    #@19
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 121
    :goto_0
    const-string/jumbo v2, "]"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 119
    :cond_0
    const-string/jumbo v2, "nameRelativeToCRLIssuer"

    #@33
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_0
.end method
