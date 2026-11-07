.class public Landroid/icu/util/TimeUnitAmount;
.super Landroid/icu/util/Measure;
.source "TimeUnitAmount.java"


# direct methods
.method public constructor greylist-max-o <init>(DLandroid/icu/util/TimeUnit;)V
    .registers 5
    .param p1, "number"    # D
    .param p3, "unit"    # Landroid/icu/util/TimeUnit;

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 34
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "unit"    # Landroid/icu/util/TimeUnit;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 27
    return-void
.end method


# virtual methods
.method public greylist-max-o getTimeUnit()Landroid/icu/util/TimeUnit;
    .registers 2

    .line 40
    invoke-virtual {p0}, Landroid/icu/util/TimeUnitAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeUnit;

    return-object v0
.end method
