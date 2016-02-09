.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SecP384R1Curve.java"


# static fields
.field private static final SecP384R1_DEFAULT_COORDS:I = 0x2

.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 12
    new-instance v0, Ljava/math/BigInteger;

    #@2
    .line 13
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@8
    move-result-object v1

    #@9
    .line 12
    const/4 v2, 0x1

    #@a
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    #@f
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    #@7
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@9
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@e
    .line 25
    new-instance v0, Ljava/math/BigInteger;

    #@10
    .line 26
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@16
    move-result-object v1

    #@17
    .line 25
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    .line 27
    new-instance v0, Ljava/math/BigInteger;

    #@22
    .line 28
    const-string/jumbo v1, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    #@25
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@28
    move-result-object v1

    #@29
    .line 27
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@2c
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    .line 29
    new-instance v0, Ljava/math/BigInteger;

    #@34
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    #@37
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@3e
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->order:Ljava/math/BigInteger;

    #@40
    .line 30
    const-wide/16 v0, 0x1

    #@42
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->cofactor:Ljava/math/BigInteger;

    #@48
    .line 32
    const/4 v0, 0x2

    #@49
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->coord:I

    #@4b
    .line 19
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    #@5
    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@5
    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@a
    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    #@5
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    #@0
    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 45
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 42
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
