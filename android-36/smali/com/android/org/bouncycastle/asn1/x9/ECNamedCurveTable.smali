.class public Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .registers 3

    .line 332
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2

    .line 35
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_a

    .line 39
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_11

    .line 44
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public static blacklist getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 2

    .line 76
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    if-nez v0, :cond_a

    .line 80
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_11

    .line 85
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public static blacklist getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2

    .line 232
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_b

    .line 236
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static blacklist getByOIDLazy(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 2

    .line 270
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOIDLazy(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    if-nez v0, :cond_b

    .line 274
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static blacklist getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    .line 178
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 182
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_11

    .line 187
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 2

    .line 313
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 315
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 316
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 317
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 325
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 124
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_a

    .line 128
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_11

    .line 133
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method
