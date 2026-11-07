.class public Landroid/icu/impl/units/UnitsData$Categories;
.super Ljava/lang/Object;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Categories"
.end annotation


# static fields
.field static blacklist baseUnitToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist indexToCategory:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 224
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "units"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 225
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/impl/units/UnitsData$CategoriesSink;

    invoke-direct {v1}, Landroid/icu/impl/units/UnitsData$CategoriesSink;-><init>()V

    .line 226
    .local v1, "sink":Landroid/icu/impl/units/UnitsData$CategoriesSink;
    const-string v2, "unitQuantities"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 227
    iget-object v2, v1, Landroid/icu/impl/units/UnitsData$CategoriesSink;->mapFromUnitToIndex:Ljava/util/HashMap;

    sput-object v2, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    .line 228
    iget-object v2, v1, Landroid/icu/impl/units/UnitsData$CategoriesSink;->categories:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Landroid/icu/impl/units/UnitsData$Categories;->indexToCategory:[Ljava/lang/String;

    .line 229
    .end local v0    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "sink":Landroid/icu/impl/units/UnitsData$CategoriesSink;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
