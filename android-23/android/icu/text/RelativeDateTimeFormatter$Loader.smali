.class Landroid/icu/text/RelativeDateTimeFormatter$Loader;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final ulocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 586
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@5
    .line 585
    return-void
.end method

.method private static addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/QuantityFormatter$Builder;)V
    .locals 5
    .param p0, "pastOrFuture"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "builder"    # Landroid/icu/text/QuantityFormatter$Builder;

    #@0
    .prologue
    .line 819
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@3
    move-result v2

    #@4
    .line 820
    .local v2, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@7
    .line 821
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v1

    #@b
    .line 822
    .local v1, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {p1, v3, v4}, Landroid/icu/text/QuantityFormatter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/QuantityFormatter$Builder;

    #@16
    .line 820
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 818
    .end local v1    # "r":Landroid/icu/util/UResourceBundle;
    :cond_0
    return-void
.end method

.method private addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V
    .locals 3
    .param p1, "timeUnitBundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "relativeUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p3, "absoluteUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 765
    .local p4, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;"
    .local p5, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    invoke-static {p1, p2, p4}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@3
    .line 766
    const-string/jumbo v1, "dn"

    #@6
    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 768
    .local v0, "unitName":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@c
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "en"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 769
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 771
    :cond_0
    const-string/jumbo v1, "relative"

    #@20
    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@23
    move-result-object p1

    #@24
    .line 772
    invoke-static {p5, p3, p1, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap0(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@27
    .line 764
    return-void
.end method

.method private static addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V
    .locals 5
    .param p0, "timeUnitBundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "relativeUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 804
    .local p2, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;"
    new-instance v0, Landroid/icu/text/QuantityFormatter$Builder;

    #@2
    invoke-direct {v0}, Landroid/icu/text/QuantityFormatter$Builder;-><init>()V

    #@5
    .line 805
    .local v0, "future":Landroid/icu/text/QuantityFormatter$Builder;
    new-instance v1, Landroid/icu/text/QuantityFormatter$Builder;

    #@7
    invoke-direct {v1}, Landroid/icu/text/QuantityFormatter$Builder;-><init>()V

    #@a
    .line 806
    .local v1, "past":Landroid/icu/text/QuantityFormatter$Builder;
    const-string/jumbo v2, "relativeTime"

    #@d
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@10
    move-result-object p0

    #@11
    .line 808
    const-string/jumbo v2, "future"

    #@14
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@17
    move-result-object v2

    #@18
    .line 807
    invoke-static {v2, v0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/QuantityFormatter$Builder;)V

    #@1b
    .line 811
    const-string/jumbo v2, "past"

    #@1e
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@21
    move-result-object v2

    #@22
    .line 810
    invoke-static {v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/QuantityFormatter$Builder;)V

    #@25
    .line 814
    const/4 v2, 0x2

    #@26
    new-array v2, v2, [Landroid/icu/text/QuantityFormatter;

    #@28
    invoke-virtual {v1}, Landroid/icu/text/QuantityFormatter$Builder;->build()Landroid/icu/text/QuantityFormatter;

    #@2b
    move-result-object v3

    #@2c
    const/4 v4, 0x0

    #@2d
    aput-object v3, v2, v4

    #@2f
    invoke-virtual {v0}, Landroid/icu/text/QuantityFormatter$Builder;->build()Landroid/icu/text/QuantityFormatter;

    #@32
    move-result-object v3

    #@33
    const/4 v4, 0x1

    #@34
    aput-object v3, v2, v4

    #@36
    .line 813
    invoke-virtual {p2, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 803
    return-void
.end method

.method private addTimeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V
    .locals 6
    .param p1, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathShort"    # Ljava/lang/String;
    .param p4, "pathNarrow"    # Ljava/lang/String;
    .param p5, "relativeUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p6, "absoluteUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 739
    .local p7, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    .local p8, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    invoke-virtual {p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v1

    #@4
    .line 742
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@6
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Ljava/util/EnumMap;

    #@c
    .line 743
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@e
    invoke-virtual {p8, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Ljava/util/EnumMap;

    #@14
    move-object v0, p0

    #@15
    move-object v2, p5

    #@16
    move-object v3, p6

    #@17
    .line 738
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@1a
    .line 745
    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@1d
    move-result-object v1

    #@1e
    .line 748
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@20
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Ljava/util/EnumMap;

    #@26
    .line 749
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@28
    invoke-virtual {p8, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Ljava/util/EnumMap;

    #@2e
    move-object v0, p0

    #@2f
    move-object v2, p5

    #@30
    move-object v3, p6

    #@31
    .line 744
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@34
    .line 751
    invoke-virtual {p1, p4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@37
    move-result-object v1

    #@38
    .line 754
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@3a
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, Ljava/util/EnumMap;

    #@40
    .line 755
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@42
    invoke-virtual {p8, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Ljava/util/EnumMap;

    #@48
    move-object v0, p0

    #@49
    move-object v2, p5

    #@4a
    move-object v3, p6

    #@4b
    .line 750
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@4e
    .line 737
    return-void
.end method

.method private addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V
    .locals 3
    .param p1, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathShort"    # Ljava/lang/String;
    .param p4, "pathNarrow"    # Ljava/lang/String;
    .param p6, "weekDay"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 835
    .local p5, "dayOfWeekMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;>;>;"
    .local p7, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/EnumMap;

    #@8
    .line 837
    invoke-virtual {p1, p2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@b
    move-result-object v2

    #@c
    .line 838
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@e
    invoke-virtual {p5, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/EnumMap;

    #@14
    invoke-virtual {v1, p6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 834
    invoke-static {v0, p6, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap0(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@1d
    .line 840
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1f
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/EnumMap;

    #@25
    .line 842
    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@28
    move-result-object v2

    #@29
    .line 843
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2b
    invoke-virtual {p5, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/util/EnumMap;

    #@31
    invoke-virtual {v1, p6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/lang/String;

    #@37
    .line 839
    invoke-static {v0, p6, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap0(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@3a
    .line 845
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@3c
    invoke-virtual {p7, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/util/EnumMap;

    #@42
    .line 847
    invoke-virtual {p1, p4}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@45
    move-result-object v2

    #@46
    .line 848
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@48
    invoke-virtual {p5, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Ljava/util/EnumMap;

    #@4e
    invoke-virtual {v1, p6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Ljava/lang/String;

    #@54
    .line 844
    invoke-static {v0, p6, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap0(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@57
    .line 833
    return-void
.end method

.method private initRelativeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V
    .locals 2
    .param p1, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathShort"    # Ljava/lang/String;
    .param p4, "pathNarrow"    # Ljava/lang/String;
    .param p5, "relativeUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 787
    .local p6, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    invoke-virtual {p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v1

    #@4
    .line 789
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@6
    invoke-virtual {p6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/EnumMap;

    #@c
    .line 786
    invoke-static {v1, p5, v0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@f
    .line 791
    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v1

    #@13
    .line 793
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@15
    invoke-virtual {p6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/EnumMap;

    #@1b
    .line 790
    invoke-static {v1, p5, v0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@1e
    .line 795
    invoke-virtual {p1, p4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@21
    move-result-object v1

    #@22
    .line 797
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@24
    invoke-virtual {p6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/EnumMap;

    #@2a
    .line 794
    invoke-static {v1, p5, v0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnit(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@2d
    .line 785
    return-void
.end method

.method private static readDaysOfWeek(Landroid/icu/impl/ICUResourceBundle;)Ljava/util/EnumMap;
    .locals 8
    .param p0, "daysOfWeekBundle"    # Landroid/icu/impl/ICUResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 853
    new-instance v0, Ljava/util/EnumMap;

    #@3
    const-class v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@5
    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@8
    .line 854
    .local v0, "dayOfWeekMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@b
    move-result v3

    #@c
    const/4 v4, 0x7

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 855
    new-instance v3, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v4, "Expect 7 days in a week, got %d"

    #@14
    const/4 v5, 0x1

    #@15
    new-array v5, v5, [Ljava/lang/Object;

    #@17
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@1a
    move-result v6

    #@1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v6

    #@1f
    aput-object v6, v5, v7

    #@21
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 859
    :cond_0
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@2b
    const/4 v1, 0x1

    #@2c
    .local v1, "idx":I
    invoke-virtual {p0, v7}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 860
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@35
    add-int/lit8 v2, v1, 0x1

    #@37
    .end local v1    # "idx":I
    .local v2, "idx":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 861
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@40
    add-int/lit8 v1, v2, 0x1

    #@42
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 862
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4b
    add-int/lit8 v2, v1, 0x1

    #@4d
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 863
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@56
    add-int/lit8 v1, v2, 0x1

    #@58
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 864
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@61
    add-int/lit8 v2, v1, 0x1

    #@63
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 865
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@6c
    add-int/lit8 v1, v2, 0x1

    #@6e
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 866
    return-object v0
.end method


# virtual methods
.method public load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 20

    #@0
    .prologue
    .line 591
    new-instance v9, Ljava/util/EnumMap;

    #@2
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@4
    invoke-direct {v9, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 594
    .local v9, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    new-instance v8, Ljava/util/EnumMap;

    #@9
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@b
    invoke-direct {v8, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@e
    .line 596
    .local v8, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@11
    move-result-object v3

    #@12
    const/4 v1, 0x0

    #@13
    array-length v4, v3

    #@14
    :goto_0
    if-ge v1, v4, :cond_0

    #@16
    aget-object v19, v3, v1

    #@18
    .line 597
    .local v19, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    new-instance v5, Ljava/util/EnumMap;

    #@1a
    const-class v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@1c
    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@1f
    move-object/from16 v0, v19

    #@21
    invoke-virtual {v9, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 598
    new-instance v5, Ljava/util/EnumMap;

    #@26
    const-class v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@28
    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@2b
    move-object/from16 v0, v19

    #@2d
    invoke-virtual {v8, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 596
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 602
    .end local v19    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_0
    const-string/jumbo v1, "android/icu/impl/data/icudt55b"

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@3a
    .line 601
    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@40
    .line 605
    .local v2, "r":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v3, "fields/day"

    #@43
    const-string/jumbo v4, "fields/day-short"

    #@46
    const-string/jumbo v5, "fields/day-narrow"

    #@49
    .line 606
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@4b
    .line 607
    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4d
    move-object/from16 v1, p0

    #@4f
    .line 603
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@52
    .line 612
    const-string/jumbo v3, "fields/week"

    #@55
    const-string/jumbo v4, "fields/week-short"

    #@58
    const-string/jumbo v5, "fields/week-narrow"

    #@5b
    .line 613
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@5d
    .line 614
    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@5f
    move-object/from16 v1, p0

    #@61
    .line 610
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@64
    .line 619
    const-string/jumbo v3, "fields/month"

    #@67
    const-string/jumbo v4, "fields/month-short"

    #@6a
    const-string/jumbo v5, "fields/month-narrow"

    #@6d
    .line 620
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@6f
    .line 621
    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@71
    move-object/from16 v1, p0

    #@73
    .line 617
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@76
    .line 626
    const-string/jumbo v3, "fields/year"

    #@79
    const-string/jumbo v4, "fields/year-short"

    #@7c
    const-string/jumbo v5, "fields/year-narrow"

    #@7f
    .line 627
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@81
    .line 628
    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@83
    move-object/from16 v1, p0

    #@85
    .line 624
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addTimeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    #@88
    .line 633
    const-string/jumbo v3, "fields/second"

    #@8b
    const-string/jumbo v4, "fields/second-short"

    #@8e
    const-string/jumbo v5, "fields/second-narrow"

    #@91
    .line 634
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@93
    move-object/from16 v1, p0

    #@95
    move-object v7, v8

    #@96
    .line 631
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->initRelativeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@99
    .line 638
    const-string/jumbo v3, "fields/minute"

    #@9c
    const-string/jumbo v4, "fields/minute-short"

    #@9f
    const-string/jumbo v5, "fields/minute-narrow"

    #@a2
    .line 639
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@a4
    move-object/from16 v1, p0

    #@a6
    move-object v7, v8

    #@a7
    .line 636
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->initRelativeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@aa
    .line 643
    const-string/jumbo v3, "fields/hour"

    #@ad
    const-string/jumbo v4, "fields/hour-short"

    #@b0
    const-string/jumbo v5, "fields/hour-narrow"

    #@b3
    .line 644
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@b5
    move-object/from16 v1, p0

    #@b7
    move-object v7, v8

    #@b8
    .line 641
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->initRelativeUnits(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Ljava/util/EnumMap;)V

    #@bb
    .line 648
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@bd
    invoke-virtual {v9, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    move-result-object v1

    #@c1
    check-cast v1, Ljava/util/EnumMap;

    #@c3
    .line 649
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c5
    .line 650
    const-string/jumbo v4, "fields/second/relative/0"

    #@c8
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@cb
    move-result-object v4

    #@cc
    .line 647
    invoke-static {v1, v3, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap1(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V

    #@cf
    .line 652
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@d1
    invoke-virtual {v9, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    move-result-object v1

    #@d5
    check-cast v1, Ljava/util/EnumMap;

    #@d7
    .line 653
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@d9
    .line 654
    const-string/jumbo v4, "fields/second-short/relative/0"

    #@dc
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@df
    move-result-object v4

    #@e0
    .line 651
    invoke-static {v1, v3, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap1(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V

    #@e3
    .line 656
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@e5
    invoke-virtual {v9, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    move-result-object v1

    #@e9
    check-cast v1, Ljava/util/EnumMap;

    #@eb
    .line 657
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@ed
    .line 658
    const-string/jumbo v4, "fields/second-narrow/relative/0"

    #@f0
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@f3
    move-result-object v4

    #@f4
    .line 655
    invoke-static {v1, v3, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap1(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V

    #@f7
    .line 661
    new-instance v15, Ljava/util/EnumMap;

    #@f9
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@fb
    invoke-direct {v15, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@fe
    .line 662
    .local v15, "dayOfWeekMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;>;>;"
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@100
    .line 663
    const-string/jumbo v3, "calendar/gregorian/dayNames/stand-alone/wide"

    #@103
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@106
    move-result-object v3

    #@107
    .line 662
    invoke-static {v3}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->readDaysOfWeek(Landroid/icu/impl/ICUResourceBundle;)Ljava/util/EnumMap;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v15, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    .line 664
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@110
    .line 665
    const-string/jumbo v3, "calendar/gregorian/dayNames/stand-alone/short"

    #@113
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@116
    move-result-object v3

    #@117
    .line 664
    invoke-static {v3}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->readDaysOfWeek(Landroid/icu/impl/ICUResourceBundle;)Ljava/util/EnumMap;

    #@11a
    move-result-object v3

    #@11b
    invoke-virtual {v15, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@11e
    .line 666
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@120
    .line 667
    const-string/jumbo v3, "calendar/gregorian/dayNames/stand-alone/narrow"

    #@123
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@126
    move-result-object v3

    #@127
    .line 666
    invoke-static {v3}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->readDaysOfWeek(Landroid/icu/impl/ICUResourceBundle;)Ljava/util/EnumMap;

    #@12a
    move-result-object v3

    #@12b
    invoke-virtual {v15, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@12e
    .line 671
    const-string/jumbo v12, "fields/mon/relative"

    #@131
    .line 672
    const-string/jumbo v13, "fields/mon-short/relative"

    #@134
    .line 673
    const-string/jumbo v14, "fields/mon-narrow/relative"

    #@137
    .line 675
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@139
    move-object/from16 v10, p0

    #@13b
    move-object v11, v2

    #@13c
    move-object/from16 v17, v9

    #@13e
    .line 669
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@141
    .line 679
    const-string/jumbo v12, "fields/tue/relative"

    #@144
    .line 680
    const-string/jumbo v13, "fields/tue-short/relative"

    #@147
    .line 681
    const-string/jumbo v14, "fields/tue-narrow/relative"

    #@14a
    .line 683
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@14c
    move-object/from16 v10, p0

    #@14e
    move-object v11, v2

    #@14f
    move-object/from16 v17, v9

    #@151
    .line 677
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@154
    .line 687
    const-string/jumbo v12, "fields/wed/relative"

    #@157
    .line 688
    const-string/jumbo v13, "fields/wed-short/relative"

    #@15a
    .line 689
    const-string/jumbo v14, "fields/wed-narrow/relative"

    #@15d
    .line 691
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@15f
    move-object/from16 v10, p0

    #@161
    move-object v11, v2

    #@162
    move-object/from16 v17, v9

    #@164
    .line 685
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@167
    .line 695
    const-string/jumbo v12, "fields/thu/relative"

    #@16a
    .line 696
    const-string/jumbo v13, "fields/thu-short/relative"

    #@16d
    .line 697
    const-string/jumbo v14, "fields/thu-narrow/relative"

    #@170
    .line 699
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@172
    move-object/from16 v10, p0

    #@174
    move-object v11, v2

    #@175
    move-object/from16 v17, v9

    #@177
    .line 693
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@17a
    .line 703
    const-string/jumbo v12, "fields/fri/relative"

    #@17d
    .line 704
    const-string/jumbo v13, "fields/fri-short/relative"

    #@180
    .line 705
    const-string/jumbo v14, "fields/fri-narrow/relative"

    #@183
    .line 707
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@185
    move-object/from16 v10, p0

    #@187
    move-object v11, v2

    #@188
    move-object/from16 v17, v9

    #@18a
    .line 701
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@18d
    .line 711
    const-string/jumbo v12, "fields/sat/relative"

    #@190
    .line 712
    const-string/jumbo v13, "fields/sat-short/relative"

    #@193
    .line 713
    const-string/jumbo v14, "fields/sat-narrow/relative"

    #@196
    .line 715
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@198
    move-object/from16 v10, p0

    #@19a
    move-object v11, v2

    #@19b
    move-object/from16 v17, v9

    #@19d
    .line 709
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@1a0
    .line 719
    const-string/jumbo v12, "fields/sun/relative"

    #@1a3
    .line 720
    const-string/jumbo v13, "fields/sun-short/relative"

    #@1a6
    .line 721
    const-string/jumbo v14, "fields/sun-narrow/relative"

    #@1a9
    .line 723
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@1ab
    move-object/from16 v10, p0

    #@1ad
    move-object v11, v2

    #@1ae
    move-object/from16 v17, v9

    #@1b0
    .line 717
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->addWeekDays(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap;)V

    #@1b3
    .line 725
    new-instance v18, Landroid/icu/impl/CalendarData;

    #@1b5
    .line 726
    move-object/from16 v0, p0

    #@1b7
    iget-object v1, v0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    #@1b9
    const-string/jumbo v3, "calendar/default"

    #@1bc
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@1bf
    move-result-object v3

    #@1c0
    .line 725
    move-object/from16 v0, v18

    #@1c2
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@1c5
    .line 727
    .local v18, "calData":Landroid/icu/impl/CalendarData;
    new-instance v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@1c7
    .line 728
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/CalendarData;->getDateTimePattern()Ljava/lang/String;

    #@1ca
    move-result-object v3

    #@1cb
    .line 727
    invoke-direct {v1, v9, v8, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    #@1ce
    return-object v1
.end method
