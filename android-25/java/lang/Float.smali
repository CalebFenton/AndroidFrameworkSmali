.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 137
    const-class v0, [F

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@8
    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 524
    double-to-float v0, p1

    #@4
    iput v0, p0, Ljava/lang/Float;->value:F

    #@6
    .line 523
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 514
    iput p1, p0, Ljava/lang/Float;->value:F

    #@5
    .line 513
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    #@b
    .line 538
    return-void
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 909
    cmpg-float v4, p0, p1

    #@4
    if-gez v4, :cond_0

    #@6
    .line 910
    return v2

    #@7
    .line 911
    :cond_0
    cmpl-float v4, p0, p1

    #@9
    if-lez v4, :cond_1

    #@b
    .line 912
    return v3

    #@c
    .line 915
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@f
    move-result v1

    #@10
    .line 916
    .local v1, "thisBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@13
    move-result v0

    #@14
    .line 918
    .local v0, "anotherBits":I
    if-ne v1, v0, :cond_3

    #@16
    const/4 v2, 0x0

    #@17
    :cond_2
    :goto_0
    return v2

    #@18
    .line 919
    :cond_3
    if-lt v1, v0, :cond_2

    #@1a
    move v2, v3

    #@1b
    .line 920
    goto :goto_0
.end method

.method public static floatToIntBits(F)I
    .locals 3
    .param p0, "value"    # F

    #@0
    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    #@2
    .line 746
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@5
    move-result v0

    #@6
    .line 749
    .local v0, "result":I
    and-int v1, v0, v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 751
    const v1, 0x7fffff

    #@d
    and-int/2addr v1, v0

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 752
    const/high16 v0, 0x7fc00000    # NaNf

    #@12
    .line 753
    :cond_0
    return v0
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "value"    # F

    #@0
    .prologue
    .line 666
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isFinite(F)Z
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 497
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    #@7
    cmpg-float v0, v0, v1

    #@9
    if-gtz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public static isInfinite(F)Z
    .locals 2
    .param p0, "v"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 483
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@3
    cmpl-float v1, p0, v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    #@9
    cmpl-float v1, p0, v1

    #@b
    if-nez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static isNaN(F)Z
    .locals 1
    .param p0, "v"    # F

    #@0
    .prologue
    .line 471
    cmpl-float v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 948
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 962
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->floatValue()F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static sum(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 934
    add-float v0, p0, p1

    #@2
    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # F

    #@0
    .prologue
    .line 284
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v1

    #@4
    const/high16 v2, 0x800000

    #@6
    cmpg-float v1, v1, v2

    #@8
    if-gez v1, :cond_0

    #@a
    .line 285
    const/4 v1, 0x0

    #@b
    cmpl-float v1, p0, v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 289
    float-to-double v2, p0

    #@10
    .line 291
    const/16 v1, -0x380

    #@12
    .line 289
    invoke-static {v2, v3, v1}, Lsun/misc/FpUtils;->scalb(DI)D

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 293
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "p-1022$"

    #@1d
    const-string/jumbo v2, "p-126"

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 296
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    float-to-double v2, p0

    #@26
    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 206
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->loadFloat(F)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->toJavaFormatString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 441
    new-instance v0, Ljava/lang/Float;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    #@5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    new-instance v0, Ljava/lang/Float;

    #@2
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/FloatingDecimal;->floatValue()F

    #@d
    move-result v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@11
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 587
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .locals 2
    .param p1, "anotherFloat"    # Ljava/lang/Float;

    #@0
    .prologue
    .line 887
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    iget v1, p1, Ljava/lang/Float;->value:F

    #@4
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherFloat"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 886
    check-cast p1, Ljava/lang/Float;

    #@2
    .end local p1    # "anotherFloat":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 641
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 710
    instance-of v1, p1, Ljava/lang/Float;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 711
    check-cast p1, Ljava/lang/Float;

    #@7
    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Ljava/lang/Float;->value:F

    #@9
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@c
    move-result v1

    #@d
    iget v2, p0, Ljava/lang/Float;->value:F

    #@f
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v2

    #@13
    if-ne v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 710
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 630
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 654
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 610
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    return v0
.end method

.method public isInfinite()Z
    .locals 1

    #@0
    .prologue
    .line 563
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNaN()Z
    .locals 1

    #@0
    .prologue
    .line 551
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 621
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 599
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 576
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
