.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SecP224K1Curve.java"


# static fields
.field private static final blacklist SECP224K1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field private static final blacklist SECP224K1_DEFAULT_COORDS:I = 0x2

.field public static final blacklist q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSECP224K1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->SECP224K1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->SECP224K1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 35
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->order:Ljava/math/BigInteger;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->cofactor:Ljava/math/BigInteger;

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->coord:I

    .line 39
    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    return-object v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 11
    .param p1, "points"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 89
    const/4 v0, 0x7

    .line 91
    .local v0, "FE_INTS":I
    mul-int/lit8 v1, p3, 0x7

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 93
    .local v1, "table":[I
    const/4 v2, 0x0

    .line 94
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, p3, :cond_2d

    .line 96
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 97
    .local v4, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([II[II)V

    add-int/lit8 v2, v2, 0x7

    .line 98
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v6, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([II[II)V

    .end local v4    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v2, 0x7

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 102
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_2d
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;I[I)V

    return-object v2
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 74
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 59
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 160
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 161
    .local v0, "x":[I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 162
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 167
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 168
    .local v0, "x":[I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->randomMult(Ljava/security/SecureRandom;[I)V

    .line 169
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .line 48
    packed-switch p1, :pswitch_data_8

    .line 53
    const/4 v0, 0x0

    return v0

    .line 51
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method
