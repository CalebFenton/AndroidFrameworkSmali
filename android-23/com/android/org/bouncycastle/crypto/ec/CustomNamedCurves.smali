.class public Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;
    }
.end annotation


# static fields
.field static final nameToCurve:Ljava/util/Hashtable;

.field static final nameToOID:Ljava/util/Hashtable;

.field static final oidToCurve:Ljava/util/Hashtable;

.field static final oidToName:Ljava/util/Hashtable;

.field static secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@7
    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@e
    .line 117
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;

    #@10
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@15
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;

    #@17
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@1c
    .line 161
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;

    #@1e
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    #@21
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@23
    .line 189
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;

    #@25
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@2a
    .line 205
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;

    #@2c
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    #@2f
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@31
    .line 221
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;

    #@33
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    #@36
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@38
    .line 234
    new-instance v0, Ljava/util/Hashtable;

    #@3a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@3d
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@3f
    .line 235
    new-instance v0, Ljava/util/Hashtable;

    #@41
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@46
    .line 236
    new-instance v0, Ljava/util/Hashtable;

    #@48
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@4b
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@4d
    .line 237
    new-instance v0, Ljava/util/Hashtable;

    #@4f
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    #@54
    .line 265
    const-string/jumbo v0, "secp192k1"

    #@57
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@5b
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@5e
    .line 266
    const-string/jumbo v0, "secp192r1"

    #@61
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@63
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@65
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@68
    .line 267
    const-string/jumbo v0, "secp224k1"

    #@6b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@6f
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@72
    .line 268
    const-string/jumbo v0, "secp224r1"

    #@75
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@77
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@79
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@7c
    .line 269
    const-string/jumbo v0, "secp256k1"

    #@7f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@81
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@83
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@86
    .line 270
    const-string/jumbo v0, "secp256r1"

    #@89
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@8d
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@90
    .line 271
    const-string/jumbo v0, "secp384r1"

    #@93
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@95
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@97
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@9a
    .line 272
    const-string/jumbo v0, "secp521r1"

    #@9d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9f
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@a1
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@a4
    .line 274
    const-string/jumbo v0, "P-192"

    #@a7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a9
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@ac
    .line 275
    const-string/jumbo v0, "P-224"

    #@af
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@b4
    .line 276
    const-string/jumbo v0, "P-256"

    #@b7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b9
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@bc
    .line 277
    const-string/jumbo v0, "P-384"

    #@bf
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c1
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@c4
    .line 278
    const-string/jumbo v0, "P-521"

    #@c7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c9
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@cc
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 33
    return-object p0
.end method

.method private static configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    #@9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->create()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@0
    .prologue
    .line 241
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 239
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 254
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 255
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 256
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@b
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 252
    return-void
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@0
    .prologue
    .line 246
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 247
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 248
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 249
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 244
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 283
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@3
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@d
    .line 284
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    #@f
    :goto_0
    return-object v1

    #@10
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@13
    move-result-object v1

    #@14
    goto :goto_0
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 296
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@9
    .line 297
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 316
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

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
    .line 324
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

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
    .line 308
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@2
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

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
