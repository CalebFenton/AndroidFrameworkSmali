.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 138
    const-class v0, [D

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@8
    .line 49
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 602
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    #@5
    .line 601
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@7
    move-result-wide v0

    #@8
    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@b
    .line 616
    return-void
.end method

.method public static compare(DD)I
    .locals 8
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 1005
    cmpg-double v6, p0, p2

    #@4
    if-gez v6, :cond_0

    #@6
    .line 1006
    return v4

    #@7
    .line 1007
    :cond_0
    cmpl-double v6, p0, p2

    #@9
    if-lez v6, :cond_1

    #@b
    .line 1008
    return v5

    #@c
    .line 1011
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@f
    move-result-wide v2

    #@10
    .line 1012
    .local v2, "thisBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@13
    move-result-wide v0

    #@14
    .line 1014
    .local v0, "anotherBits":J
    cmp-long v6, v2, v0

    #@16
    if-nez v6, :cond_3

    #@18
    const/4 v4, 0x0

    #@19
    :cond_2
    :goto_0
    return v4

    #@1a
    .line 1015
    :cond_3
    cmp-long v6, v2, v0

    #@1c
    if-ltz v6, :cond_2

    #@1e
    move v4, v5

    #@1f
    .line 1016
    goto :goto_0
.end method

.method public static doubleToLongBits(D)J
    .locals 6
    .param p0, "value"    # D

    #@0
    .prologue
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2
    .line 841
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@5
    move-result-wide v0

    #@6
    .line 844
    .local v0, "result":J
    and-long v2, v0, v4

    #@8
    cmp-long v2, v2, v4

    #@a
    if-nez v2, :cond_0

    #@c
    .line 846
    const-wide v2, 0xfffffffffffffL

    #@11
    and-long/2addr v2, v0

    #@12
    const-wide/16 v4, 0x0

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 847
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@1a
    .line 848
    :cond_0
    return-wide v0
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static hashCode(D)I
    .locals 4
    .param p0, "value"    # D

    #@0
    .prologue
    .line 759
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 760
    .local v0, "bits":J
    const/16 v2, 0x20

    #@6
    ushr-long v2, v0, v2

    #@8
    xor-long/2addr v2, v0

    #@9
    long-to-int v2, v2

    #@a
    return v2
.end method

.method public static isFinite(D)Z
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    .line 585
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@9
    cmpg-double v0, v0, v2

    #@b
    if-gtz v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static isInfinite(D)Z
    .locals 4
    .param p0, "v"    # D

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 571
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@3
    cmpl-double v1, p0, v2

    #@5
    if-eqz v1, :cond_0

    #@7
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@9
    cmpl-double v1, p0, v2

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

.method public static isNaN(D)Z
    .locals 2
    .param p0, "v"    # D

    #@0
    .prologue
    .line 559
    cmpl-double v0, p0, p0

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

.method public static native longBitsToDouble(J)D
.end method

.method public static max(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    #@0
    .prologue
    .line 1044
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static min(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    #@0
    .prologue
    .line 1058
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public static sum(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    #@0
    .prologue
    .line 1030
    add-double v0, p0, p2

    #@2
    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .locals 10
    .param p0, "d"    # D

    #@0
    .prologue
    .line 286
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isFinite(D)Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 288
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    return-object v5

    #@b
    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@d
    const/16 v5, 0x18

    #@f
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@12
    .line 293
    .local v0, "answer":Ljava/lang/StringBuffer;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@14
    invoke-static {v6, v7, p0, p1}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    #@17
    move-result-wide v6

    #@18
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    #@1a
    cmpl-double v5, v6, v8

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 294
    const-string/jumbo v5, "-"

    #@21
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 296
    :cond_1
    const-string/jumbo v5, "0x"

    #@27
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 298
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@2d
    move-result-wide p0

    #@2e
    .line 300
    const-wide/16 v6, 0x0

    #@30
    cmpl-double v5, p0, v6

    #@32
    if-nez v5, :cond_2

    #@34
    .line 301
    const-string/jumbo v5, "0.0p0"

    #@37
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    .line 334
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    return-object v5

    #@3f
    .line 304
    :cond_2
    const-wide/high16 v6, 0x10000000000000L

    #@41
    cmpg-double v5, p0, v6

    #@43
    if-gez v5, :cond_3

    #@45
    const/4 v4, 0x1

    #@46
    .line 309
    .local v4, "subnormal":Z
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@49
    move-result-wide v6

    #@4a
    .line 310
    const-wide v8, 0xfffffffffffffL

    #@4f
    .line 309
    and-long/2addr v6, v8

    #@50
    .line 311
    const-wide/high16 v8, 0x1000000000000000L

    #@52
    .line 309
    or-long v2, v6, v8

    #@54
    .line 315
    .local v2, "signifBits":J
    if-eqz v4, :cond_4

    #@56
    const-string/jumbo v5, "0."

    #@59
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 321
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    const/4 v6, 0x3

    #@61
    const/16 v7, 0x10

    #@63
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 322
    .local v1, "signif":Ljava/lang/String;
    const-string/jumbo v5, "0000000000000"

    #@6a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_5

    #@70
    .line 323
    const-string/jumbo v5, "0"

    #@73
    .line 322
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v6, "p"

    #@7e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    if-eqz v4, :cond_6

    #@84
    .line 331
    const/16 v5, -0x3fe

    #@86
    .line 330
    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@91
    goto :goto_0

    #@92
    .line 304
    .end local v1    # "signif":Ljava/lang/String;
    .end local v2    # "signifBits":J
    .end local v4    # "subnormal":Z
    :cond_3
    const/4 v4, 0x0

    #@93
    .restart local v4    # "subnormal":Z
    goto :goto_1

    #@94
    .line 315
    .restart local v2    # "signifBits":J
    :cond_4
    const-string/jumbo v5, "1."

    #@97
    goto :goto_2

    #@98
    .line 324
    .restart local v1    # "signif":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "0{1,12}$"

    #@9b
    const-string/jumbo v6, ""

    #@9e
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    goto :goto_3

    #@a3
    .line 332
    :cond_6
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    #@a6
    move-result v5

    #@a7
    goto :goto_4
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 203
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->toJavaFormatString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 528
    new-instance v0, Ljava/lang/Double;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    #@5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    new-instance v0, Ljava/lang/Double;

    #@2
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/FloatingDecimal;->doubleValue()D

    #@d
    move-result-wide v2

    #@e
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@11
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    #@0
    .prologue
    .line 666
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .locals 4
    .param p1, "anotherDouble"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 983
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherDouble"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 982
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "anotherDouble":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 722
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 803
    instance-of v1, p1, Ljava/lang/Double;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 804
    check-cast p1, Ljava/lang/Double;

    #@7
    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    #@9
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@c
    move-result-wide v2

    #@d
    .line 805
    iget-wide v4, p0, Ljava/lang/Double;->value:D

    #@f
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@12
    move-result-wide v4

    #@13
    .line 804
    cmp-long v1, v2, v4

    #@15
    if-nez v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 803
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 712
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 747
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 689
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    return v0
.end method

.method public isInfinite()Z
    .locals 2

    #@0
    .prologue
    .line 641
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNaN()Z
    .locals 2

    #@0
    .prologue
    .line 629
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 700
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    #@0
    .prologue
    .line 678
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 654
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
