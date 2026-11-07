.class public Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private blacklist distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

.field private blacklist indirectCRL:Z

.field private blacklist onlyContainsAttributeCerts:Z

.field private blacklist onlyContainsCACerts:Z

.field private blacklist onlyContainsUserCerts:Z

.field private blacklist onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

.field private blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 148
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_73

    .line 153
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6a

    if-eq v3, v4, :cond_5f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_54

    const/4 v4, 0x3

    if-eq v3, v4, :cond_48

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x5

    if-ne v3, v4, :cond_35

    .line 174
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_70

    .line 177
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_3d
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_70

    .line 168
    :cond_48
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    goto :goto_70

    .line 165
    :cond_54
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_70

    .line 162
    :cond_5f
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    goto :goto_70

    .line 159
    :cond_6a
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_73
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 264
    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private blacklist booleanToString(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    .line 276
    const-string p0, "true"

    return-object p0

    :cond_5
    const-string p0, "false"

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 2

    .line 54
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_7

    .line 56
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object p0
.end method

.method public blacklist getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    return-object p0
.end method

.method public blacklist isIndirectCRL()Z
    .registers 1

    .line 195
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return p0
.end method

.method public blacklist onlyContainsAttributeCerts()Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return p0
.end method

.method public blacklist onlyContainsCACerts()Z
    .registers 1

    .line 190
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return p0
.end method

.method public blacklist onlyContainsUserCerts()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 226
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_1e

    .line 233
    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1e
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_2b

    .line 237
    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2b
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_38

    .line 241
    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_38
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_45

    .line 245
    const-string v3, "onlySomeReasons"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_45
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_52

    .line 249
    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_52
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_5f

    .line 253
    const-string v3, "indirectCRL"

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_5f
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
