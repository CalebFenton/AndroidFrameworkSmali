.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralNames.java"


# instance fields
.field private final blacklist names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v0, 0x0

    .line 78
    :goto_c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    filled-new-array {p1}, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private static blacklist copy([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 4

    .line 22
    array-length v0, p0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    .line 23
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 3

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_7

    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->copy([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 97
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 108
    :goto_12
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-eq v2, v3, :cond_29

    .line 110
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 114
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
