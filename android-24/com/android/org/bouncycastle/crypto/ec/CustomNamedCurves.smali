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

.field static final names:Ljava/util/Vector;

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
    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@7
    .line 203
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@e
    .line 219
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;

    #@10
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@15
    .line 247
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;

    #@17
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@1c
    .line 263
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;

    #@1e
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    #@21
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@23
    .line 291
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;

    #@25
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@2a
    .line 307
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;

    #@2c
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    #@2f
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@31
    .line 323
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;

    #@33
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    #@36
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@38
    .line 627
    new-instance v0, Ljava/util/Hashtable;

    #@3a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@3d
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@3f
    .line 628
    new-instance v0, Ljava/util/Hashtable;

    #@41
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@46
    .line 629
    new-instance v0, Ljava/util/Hashtable;

    #@48
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@4b
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@4d
    .line 630
    new-instance v0, Ljava/util/Hashtable;

    #@4f
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    #@54
    .line 631
    new-instance v0, Ljava/util/Vector;

    #@56
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@59
    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    #@5b
    .line 680
    const-string/jumbo v0, "secp192k1"

    #@5e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@60
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@62
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@65
    .line 681
    const-string/jumbo v0, "secp192r1"

    #@68
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@6c
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@6f
    .line 682
    const-string/jumbo v0, "secp224k1"

    #@72
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@76
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@79
    .line 683
    const-string/jumbo v0, "secp224r1"

    #@7c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@80
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@83
    .line 684
    const-string/jumbo v0, "secp256k1"

    #@86
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@88
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@8a
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@8d
    .line 685
    const-string/jumbo v0, "secp256r1"

    #@90
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@92
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@94
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@97
    .line 686
    const-string/jumbo v0, "secp384r1"

    #@9a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9c
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@9e
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@a1
    .line 687
    const-string/jumbo v0, "secp521r1"

    #@a4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@a8
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    #@ab
    .line 722
    const-string/jumbo v0, "P-192"

    #@ae
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b0
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@b3
    .line 723
    const-string/jumbo v0, "P-224"

    #@b6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@bb
    .line 724
    const-string/jumbo v0, "P-256"

    #@be
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@c3
    .line 725
    const-string/jumbo v0, "P-384"

    #@c6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@cb
    .line 726
    const-string/jumbo v0, "P-521"

    #@ce
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d0
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@d3
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 59
    return-object p0
.end method

.method private static configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@0
    .prologue
    .line 64
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
    .line 635
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 636
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    .line 637
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 633
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 652
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 653
    .local v0, "curve":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    .line 655
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v1

    #@e
    .line 658
    :cond_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    .line 659
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 660
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 650
    return-void
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@0
    .prologue
    .line 642
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 643
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 644
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 645
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    .line 646
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 647
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    #@1a
    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 640
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 731
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
    .line 732
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
    .line 744
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    #@9
    .line 745
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
    .line 764
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
    .line 772
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

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
    .line 756
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
