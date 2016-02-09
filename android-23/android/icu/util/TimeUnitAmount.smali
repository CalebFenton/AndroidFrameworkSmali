.class public Landroid/icu/util/TimeUnitAmount;
.super Landroid/icu/util/Measure;
.source "TimeUnitAmount.java"


# direct methods
.method public constructor <init>(DLandroid/icu/util/TimeUnit;)V
    .locals 1
    .param p1, "number"    # D
    .param p3, "unit"    # Landroid/icu/util/TimeUnit;

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/lang/Double;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    #@5
    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    #@8
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "unit"    # Landroid/icu/util/TimeUnit;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    #@3
    .line 23
    return-void
.end method


# virtual methods
.method public getTimeUnit()Landroid/icu/util/TimeUnit;
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/icu/util/TimeUnitAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/TimeUnit;

    #@6
    return-object v0
.end method
