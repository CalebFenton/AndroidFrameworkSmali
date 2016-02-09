.class public Landroid/icu/util/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# instance fields
.field private final number:Ljava/lang/Number;

.field private final unit:Landroid/icu/util/MeasureUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "unit"    # Landroid/icu/util/MeasureUnit;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    .line 46
    :cond_1
    iput-object p1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@f
    .line 47
    iput-object p2, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@11
    .line 42
    return-void
.end method

.method private static numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 75
    return v4

    #@8
    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@f
    move-result-wide v2

    #@10
    cmpl-double v0, v0, v2

    #@12
    if-nez v0, :cond_1

    #@14
    .line 78
    return v4

    #@15
    .line 80
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    if-ne p1, p0, :cond_0

    #@3
    .line 57
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 59
    :cond_0
    instance-of v2, p1, Landroid/icu/util/Measure;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 60
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 62
    check-cast v0, Landroid/icu/util/Measure;

    #@d
    .line 63
    .local v0, "m":Landroid/icu/util/Measure;
    iget-object v2, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@f
    iget-object v3, v0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@11
    invoke-virtual {v2, v3}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@19
    iget-object v2, v0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@1b
    invoke-static {v1, v2}, Landroid/icu/util/Measure;->numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@2
    return-object v0
.end method

.method public getUnit()Landroid/icu/util/MeasureUnit;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@2
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    #@d
    move-result v0

    #@e
    mul-int/lit8 v0, v0, 0x1f

    #@10
    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@12
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->hashCode()I

    #@15
    move-result v1

    #@16
    add-int/2addr v0, v1

    #@17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    #@7
    invoke-virtual {v1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x20

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    #@17
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
