.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;
.super Ljava/lang/Object;
.source "X962NamedCurves.java"


# static fields
.field static blacklist c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static final blacklist curves:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;

.field static blacklist prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 116
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 168
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 194
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 223
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 250
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$9;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 277
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$10;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 304
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$11;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 331
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$12;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 358
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$13;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 385
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$14;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 412
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$15;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 439
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$16;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 466
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$17;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 493
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$18;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 520
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$19;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 547
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$20;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 574
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$21;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 601
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$22;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 628
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$23;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 656
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    .line 657
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    .line 658
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    .line 669
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 670
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 671
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime192v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime192v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 672
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 673
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 674
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime239v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 675
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->prime256v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "prime256v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 676
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 677
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 678
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb163v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb163v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 679
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb176w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb176w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 680
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 681
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 682
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb191v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb191v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 683
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb208w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb208w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 684
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 685
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 686
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb239v3:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb239v3"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 687
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb272w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb272w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 688
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb304w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb304w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 689
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb359v1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb359v1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 690
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2pnb368w1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2pnb368w1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 691
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->c2tnb431r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "c2tnb431r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 692
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 4
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 24
    .local v0, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 25
    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 30
    return-object p0
.end method

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 662
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    return-void
.end method

.method private static blacklist fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 696
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 697
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 702
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 703
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 714
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 715
    .local v0, "holder":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 720
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 741
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 750
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 732
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
