.class public Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 17
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    #@7
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    #@9
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    #@e
    .line 28
    const-string/jumbo v0, "B-163"

    #@11
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@16
    .line 29
    const-string/jumbo v0, "B-233"

    #@19
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@1e
    .line 30
    const-string/jumbo v0, "B-283"

    #@21
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@26
    .line 31
    const-string/jumbo v0, "B-409"

    #@29
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@2e
    .line 32
    const-string/jumbo v0, "B-571"

    #@31
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@36
    .line 34
    const-string/jumbo v0, "K-163"

    #@39
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@3e
    .line 35
    const-string/jumbo v0, "K-233"

    #@41
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@46
    .line 36
    const-string/jumbo v0, "K-283"

    #@49
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@4e
    .line 37
    const-string/jumbo v0, "K-409"

    #@51
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@53
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@56
    .line 38
    const-string/jumbo v0, "K-571"

    #@59
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@5e
    .line 40
    const-string/jumbo v0, "P-192"

    #@61
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@63
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@66
    .line 41
    const-string/jumbo v0, "P-224"

    #@69
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@6e
    .line 42
    const-string/jumbo v0, "P-256"

    #@71
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@73
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@76
    .line 43
    const-string/jumbo v0, "P-384"

    #@79
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7b
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@7e
    .line 44
    const-string/jumbo v0, "P-521"

    #@81
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@83
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@86
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 20
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    move-result-object v0

    #@5
    .line 51
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    #@2
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    return-object v0
.end method
