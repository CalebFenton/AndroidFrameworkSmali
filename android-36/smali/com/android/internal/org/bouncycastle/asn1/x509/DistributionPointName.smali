.class public Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DistributionPointName.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final blacklist FULL_NAME:I = 0x0

.field public static final blacklist NAME_RELATIVE_TO_CRL_ISSUER:I = 0x1


# instance fields
.field blacklist name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 60
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 91
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 94
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 96
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1b

    .line 100
    :cond_15
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 102
    :goto_1b
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 130
    const-string v0, "    "

    .line 132
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 37
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 43
    if-eqz p0, :cond_36

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_7

    goto :goto_36

    .line 47
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_14

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 52
    :cond_14
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

    .line 45
    :cond_36
    :goto_36
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method


# virtual methods
.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 111
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_21

    .line 117
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 121
    :cond_21
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2c
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
