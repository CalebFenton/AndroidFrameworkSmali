.class public abstract Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    .line 31
    const-string v0, "B-571"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 32
    const-string v0, "B-409"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 33
    const-string v0, "B-283"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    const-string v0, "B-233"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 35
    const-string v0, "B-163"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    const-string v0, "K-571"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    const-string v0, "K-409"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 38
    const-string v0, "K-283"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 39
    const-string v0, "K-233"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 40
    const-string v0, "K-163"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 41
    const-string v0, "P-521"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 42
    const-string v0, "P-384"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 43
    const-string v0, "P-256"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 44
    const-string v0, "P-224"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 45
    const-string v0, "P-192"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 3

    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 51
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 1

    .line 56
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 57
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
