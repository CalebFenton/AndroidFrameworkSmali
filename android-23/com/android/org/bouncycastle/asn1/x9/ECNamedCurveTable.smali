.class public Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .locals 1
    .param p0, "v"    # Ljava/util/Vector;
    .param p1, "e"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 133
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 135
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@d
    goto :goto_0

    #@e
    .line 131
    :cond_0
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    .line 30
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    #@6
    .line 32
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@9
    move-result-object v0

    #@a
    .line 42
    :cond_0
    if-nez v0, :cond_1

    #@c
    .line 44
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v0

    #@10
    .line 47
    :cond_1
    return-object v0
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    .line 93
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    #@6
    .line 95
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@9
    move-result-object v0

    #@a
    .line 107
    :cond_0
    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 2

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 119
    .local v0, "v":Ljava/util/Vector;
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getNames()Ljava/util/Enumeration;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    #@c
    .line 120
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getNames()Ljava/util/Enumeration;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    #@13
    .line 121
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getNames()Ljava/util/Enumeration;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    #@1a
    .line 126
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v0

    #@4
    .line 61
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    #@6
    .line 63
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v0

    #@a
    .line 73
    :cond_0
    if-nez v0, :cond_1

    #@c
    .line 75
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    move-result-object v0

    #@10
    .line 78
    :cond_1
    return-object v0
.end method
