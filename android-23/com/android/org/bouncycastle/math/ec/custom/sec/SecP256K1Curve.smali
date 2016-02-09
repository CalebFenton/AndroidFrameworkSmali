.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SecP256K1Curve.java"


# static fields
.field private static final SECP256K1_DEFAULT_COORDS:I = 0x2

.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 13
    new-instance v0, Ljava/math/BigInteger;

    #@2
    .line 14
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@8
    move-result-object v1

    #@9
    .line 13
    const/4 v2, 0x1

    #@a
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    #@f
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    #@3
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    #@6
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    #@8
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    #@d
    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    .line 27
    const-wide/16 v0, 0x7

    #@17
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    .line 28
    new-instance v0, Ljava/math/BigInteger;

    #@23
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    #@26
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@2e
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->order:Ljava/math/BigInteger;

    #@30
    .line 29
    const-wide/16 v0, 0x1

    #@32
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->cofactor:Ljava/math/BigInteger;

    #@38
    .line 30
    const/4 v0, 0x2

    #@39
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->coord:I

    #@3b
    .line 20
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

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
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    .line 71
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

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
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@a
    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>(Ljava/math/BigInteger;)V

    #@5
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

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
    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->infinity:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    #@0
    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 43
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 40
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
