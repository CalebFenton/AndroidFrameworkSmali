.class public Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DistributionPointName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field blacklist name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 96
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 100
    :cond_13
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 132
    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    const/4 p1, 0x1

    .line 37
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 4

    if-eqz p0, :cond_32

    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_7

    goto :goto_32

    .line 47
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_13

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_32
    :goto_32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object p0
.end method


# virtual methods
.method public blacklist getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist getType()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 111
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_21

    .line 117
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 121
    :cond_21
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2c
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
