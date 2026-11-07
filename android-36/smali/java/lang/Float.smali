.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/constant/Constable;
.implements Ljava/lang/constant/ConstantDesc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/lang/constant/Constable;",
        "Ljava/lang/constant/ConstantDesc;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api BYTES:I = 0x4

.field public static final whitelist test-api MAX_EXPONENT:I = 0x7f

.field public static final whitelist test-api MAX_VALUE:F = 3.4028235E38f

.field public static final whitelist test-api MIN_EXPONENT:I = -0x7e

.field public static final whitelist test-api MIN_NORMAL:F = 1.1754944E-38f

.field public static final whitelist test-api MIN_VALUE:F = 1.4E-45f

.field public static final whitelist test-api NEGATIVE_INFINITY:F = -Infinityf

.field public static final whitelist test-api NaN:F = NaNf

.field public static final whitelist test-api POSITIVE_INFINITY:F = Infinityf

.field public static final whitelist test-api PRECISION:I = 0x18

.field public static final whitelist test-api SIZE:I = 0x20

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final greylist-max-p value:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    nop

    .line 173
    const-string v0, "float"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 4
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 651
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 652
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 653
    return-void
.end method

.method public constructor whitelist test-api <init>(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 634
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 635
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 636
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 673
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 674
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 675
    return-void
.end method

.method public static whitelist test-api compare(FF)I
    .registers 6
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .line 1242
    cmpg-float v0, p0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_6

    .line 1243
    return v1

    .line 1244
    :cond_6
    cmpl-float v0, p0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_c

    .line 1245
    return v2

    .line 1248
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1249
    .local v0, "thisBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1251
    .local v3, "anotherBits":I
    if-ne v0, v3, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    .line 1252
    :cond_18
    if-ge v0, v3, :cond_1b

    goto :goto_1c

    .line 1253
    :cond_1b
    move v1, v2

    .line 1251
    :goto_1c
    return v1
.end method

.method public static whitelist test-api float16ToFloat(S)F
    .registers 11
    .param p0, "floatBinary16"    # S

    .line 1028
    move v0, p0

    .line 1029
    .local v0, "bin16arg":I
    const v1, 0x8000

    and-int/2addr v1, v0

    .line 1030
    .local v1, "bin16SignBit":I
    and-int/lit16 v2, v0, 0x7c00

    .line 1031
    .local v2, "bin16ExpBits":I
    and-int/lit16 v3, v0, 0x3ff

    .line 1035
    .local v3, "bin16SignifBits":I
    const/16 v4, 0xd

    .line 1037
    .local v4, "SIGNIF_SHIFT":I
    if-eqz v1, :cond_10

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_12

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1043
    .local v5, "sign":F
    :goto_12
    shr-int/lit8 v6, v2, 0xa

    add-int/lit8 v6, v6, -0xf

    .line 1044
    .local v6, "bin16Exp":I
    const/16 v7, -0xf

    if-ne v6, v7, :cond_20

    .line 1048
    const/high16 v7, 0x33800000

    int-to-float v8, v3

    mul-float/2addr v8, v7

    mul-float/2addr v8, v5

    return v8

    .line 1049
    :cond_20
    const/16 v7, 0x10

    if-ne v6, v7, :cond_37

    .line 1050
    if-nez v3, :cond_2a

    .line 1051
    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    mul-float/2addr v7, v5

    goto :goto_36

    .line 1052
    :cond_2a
    shl-int/lit8 v7, v1, 0x10

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int/2addr v7, v8

    shl-int/lit8 v8, v3, 0xd

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 1050
    :goto_36
    return v7

    .line 1058
    :cond_37
    nop

    .line 1060
    add-int/lit8 v7, v6, 0x7f

    shl-int/lit8 v7, v7, 0x17

    .line 1064
    .local v7, "floatExpBits":I
    shl-int/lit8 v8, v1, 0x10

    or-int/2addr v8, v7

    shl-int/lit8 v9, v3, 0xd

    or-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    return v8
.end method

.method public static whitelist test-api floatToFloat16(F)S
    .registers 13
    .param p0, "f"    # F

    .line 1100
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1101
    .local v0, "doppel":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    .line 1103
    .local v1, "sign_bit":S
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1105
    or-int/lit16 v2, v1, 0x7c00

    const v3, 0x7fe000

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0xd

    or-int/2addr v2, v3

    and-int/lit16 v3, v0, 0x1ff0

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    and-int/lit8 v3, v0, 0xf

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 1115
    :cond_23
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1118
    .local v2, "abs_f":F
    const v3, 0x477ff000    # 65520.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_32

    .line 1119
    or-int/lit16 v3, v1, 0x7c00

    int-to-short v3, v3

    return v3

    .line 1124
    :cond_32
    const/high16 v3, 0x33000000

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_39

    .line 1125
    return v1

    .line 1130
    :cond_39
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v3

    .line 1131
    .local v3, "exp":I
    nop

    .line 1138
    const/4 v4, 0x0

    .line 1139
    .local v4, "expdelta":I
    const/4 v5, 0x0

    .line 1140
    .local v5, "msb":I
    const/16 v6, -0xe

    if-ge v3, v6, :cond_4a

    .line 1141
    rsub-int/lit8 v4, v3, -0xe

    .line 1142
    const/16 v3, -0xf

    .line 1143
    const/high16 v5, 0x800000

    .line 1145
    :cond_4a
    const v6, 0x7fffff

    and-int/2addr v6, v0

    or-int/2addr v6, v5

    .line 1148
    .local v6, "f_signif_bits":I
    add-int/lit8 v7, v4, 0xd

    shr-int v7, v6, v7

    int-to-short v7, v7

    .line 1163
    .local v7, "signif_bits":S
    add-int/lit8 v8, v4, 0xd

    const/4 v9, 0x1

    shl-int v8, v9, v8

    and-int/2addr v8, v6

    .line 1164
    .local v8, "lsb":I
    add-int/lit8 v10, v4, 0xc

    shl-int v10, v9, v10

    and-int/2addr v10, v6

    .line 1165
    .local v10, "round":I
    add-int/lit8 v11, v4, 0xc

    shl-int v11, v9, v11

    sub-int/2addr v11, v9

    and-int v9, v6, v11

    .line 1167
    .local v9, "sticky":I
    if-eqz v10, :cond_6f

    or-int v11, v8, v9

    if-eqz v11, :cond_6f

    .line 1168
    add-int/lit8 v11, v7, 0x1

    int-to-short v7, v11

    .line 1174
    :cond_6f
    nop

    .line 1176
    add-int/lit8 v11, v3, 0xf

    shl-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v7

    or-int/2addr v11, v1

    int-to-short v11, v11

    return v11
.end method

.method public static whitelist test-api floatToIntBits(F)I
    .registers 2
    .param p0, "value"    # F

    .line 879
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 880
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    .line 882
    :cond_b
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public static native whitelist test-api floatToRawIntBits(F)I
.end method

.method public static whitelist test-api hashCode(F)I
    .registers 2
    .param p0, "value"    # F

    .line 811
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static native whitelist test-api intBitsToFloat(I)F
.end method

.method public static whitelist test-api isFinite(F)Z
    .registers 3
    .param p0, "f"    # F

    .line 611
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static whitelist test-api isInfinite(F)Z
    .registers 3
    .param p0, "v"    # F

    .line 591
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static whitelist test-api isNaN(F)Z
    .registers 2
    .param p0, "v"    # F

    .line 574
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1288
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1306
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 558
    invoke-static {p0}, Ljdk/internal/math/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api sum(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1270
    add-float v0, p0, p1

    return v0
.end method

.method public static whitelist test-api toHexString(F)Ljava/lang/String;
    .registers 4
    .param p0, "f"    # F

    .line 390
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_23

    .line 395
    float-to-double v0, p0

    const/16 v2, -0x380

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "s":Ljava/lang/String;
    const-string v1, "p-1022$"

    const-string v2, "p-126"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 402
    .end local v0    # "s":Ljava/lang/String;
    :cond_23
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 308
    invoke-static {p0}, Ljdk/internal/math/FloatToDecimal;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(F)Ljava/lang/Float;
    .registers 2
    .param p0, "f"    # F

    .line 540
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/lang/Float;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 722
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Float;)I
    .registers 4
    .param p1, "anotherFloat"    # Ljava/lang/Float;

    .line 1220
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 74
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1319
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 785
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 842
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    iget v0, v0, Ljava/lang/Float;->value:F

    .line 843
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 842
    :goto_18
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 769
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 799
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 747
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist test-api isInfinite()Z
    .registers 2

    .line 697
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNaN()Z
    .registers 2

    .line 685
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 759
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Float;
    .registers 2
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 1333
    return-object p0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Float;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 735
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 710
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
