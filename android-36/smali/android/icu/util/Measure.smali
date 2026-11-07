.class public Landroid/icu/util/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# instance fields
.field private final greylist-max-o number:Ljava/lang/Number;

.field private final greylist-max-o unit:Landroid/icu/util/MeasureUnit;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V
    .registers 5
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 47
    iput-object p1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    .line 48
    iput-object p2, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    .line 49
    return-void

    .line 45
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Number and MeasureUnit must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 76
    return v1

    .line 78
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_15

    .line 79
    return v1

    .line 81
    :cond_15
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 58
    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Landroid/icu/util/Measure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 61
    return v2

    .line 63
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/util/Measure;

    .line 64
    .local v1, "m":Landroid/icu/util/Measure;
    iget-object v3, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v4, v1, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v3, v4}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    iget-object v4, v1, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-static {v3, v4}, Landroid/icu/util/Measure;->numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist test-api getNumber()Ljava/lang/Number;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    return-object v0
.end method

.method public whitelist test-api getUnit()Landroid/icu/util/MeasureUnit;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
