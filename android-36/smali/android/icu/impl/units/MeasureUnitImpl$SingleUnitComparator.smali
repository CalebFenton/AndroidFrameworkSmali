.class Landroid/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;
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
    name = "SingleUnitComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/impl/units/SingleUnitImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/impl/units/SingleUnitImpl;Landroid/icu/impl/units/SingleUnitImpl;)I
    .registers 4
    .param p1, "o1"    # Landroid/icu/impl/units/SingleUnitImpl;
    .param p2, "o2"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 839
    invoke-virtual {p1, p2}, Landroid/icu/impl/units/SingleUnitImpl;->compareTo(Landroid/icu/impl/units/SingleUnitImpl;)I

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

    .line 836
    check-cast p1, Landroid/icu/impl/units/SingleUnitImpl;

    check-cast p2, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;->compare(Landroid/icu/impl/units/SingleUnitImpl;Landroid/icu/impl/units/SingleUnitImpl;)I

    move-result p1

    return p1
.end method
