.class public Landroid/icu/impl/units/UnitsRouter$RouteResult;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteResult"
.end annotation


# instance fields
.field public final blacklist complexConverterResult:Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

.field public final blacklist outputUnit:Landroid/icu/impl/units/MeasureUnitImpl;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/units/UnitsRouter;Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Landroid/icu/impl/units/MeasureUnitImpl;)V
    .registers 4
    .param p1, "this$0"    # Landroid/icu/impl/units/UnitsRouter;
    .param p2, "complexConverterResult"    # Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    .param p3, "outputUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Landroid/icu/impl/units/UnitsRouter$RouteResult;->complexConverterResult:Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    .line 197
    iput-object p3, p0, Landroid/icu/impl/units/UnitsRouter$RouteResult;->outputUnit:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 198
    return-void
.end method
