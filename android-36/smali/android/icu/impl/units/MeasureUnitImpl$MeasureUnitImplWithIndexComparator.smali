.class Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureUnitImplWithIndexComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist measureUnitImplComparator:Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/units/ConversionRates;)V
    .registers 3
    .param p1, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    invoke-direct {v0, p1}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;-><init>(Landroid/icu/impl/units/ConversionRates;)V

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->measureUnitImplComparator:Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    .line 828
    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;)I
    .registers 6
    .param p1, "o1"    # Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;
    .param p2, "o2"    # Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    .line 832
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->measureUnitImplComparator:Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    iget-object v1, p1, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    iget-object v2, p2, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 823
    check-cast p1, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    check-cast p2, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->compare(Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;)I

    move-result p1

    return p1
.end method
