.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SecP384R1Curve.java"


# static fields
.field private static final blacklist SECP384R1_AFFINE_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field public static final blacklist q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSECP384R1_AFFINE_ZS()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->SECP384R1_AFFINE_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->SECP384R1_AFFINE_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    .line 35
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    .line 37
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 39
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 46
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    return-object p0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
    .registers 11

    mul-int/lit8 v0, p3, 0x18

    .line 94
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, p3, :cond_2c

    add-int v4, p2, v2

    .line 99
    aget-object v4, p1, v4

    .line 100
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v5, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/16 v6, 0xc

    invoke-static {v6, v5, v1, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    add-int/lit8 v5, v3, 0xc

    .line 101
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v4, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v4, v1, v0, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 105
    :cond_2c
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;

    invoke-direct {p1, p0, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;-><init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V

    return-object p1
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 72
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 67
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public blacklist getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    return-object p0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    const/16 p0, 0xc

    .line 156
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object p0

    .line 157
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 158
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    const/16 p0, 0xc

    .line 163
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object p0

    .line 164
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->randomMult(Ljava/security/SecureRandom;[I)V

    .line 165
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
