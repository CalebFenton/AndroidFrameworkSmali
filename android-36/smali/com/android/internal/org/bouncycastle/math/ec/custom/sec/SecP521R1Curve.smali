.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SecP521R1Curve.java"


# static fields
.field private static final blacklist SECP521R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field private static final blacklist SECP521R1_DEFAULT_COORDS:I = 0x2

.field public static final blacklist q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSECP521R1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->SECP521R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->SECP521R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    .line 35
    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    .line 37
    const-string v1, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->order:Ljava/math/BigInteger;

    .line 39
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->cofactor:Ljava/math/BigInteger;

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->coord:I

    .line 42
    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;-><init>()V

    return-object v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 12
    .param p1, "points"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 92
    const/16 v0, 0x11

    .line 94
    .local v0, "FE_INTS":I
    mul-int/lit8 v1, p3, 0x11

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 96
    .local v1, "table":[I
    const/4 v2, 0x0

    .line 97
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, p3, :cond_2f

    .line 99
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 100
    .local v4, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    add-int/lit8 v2, v2, 0x11

    .line 101
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v5, v7, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    .end local v4    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    add-int/2addr v2, v6

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 105
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;I[I)V

    return-object v2
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 67
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 62
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 156
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 157
    .local v0, "x":[I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 158
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 163
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 164
    .local v0, "x":[I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->randomMult(Ljava/security/SecureRandom;[I)V

    .line 165
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .line 51
    packed-switch p1, :pswitch_data_8

    .line 56
    const/4 v0, 0x0

    return v0

    .line 54
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method
