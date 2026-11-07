.class public Landroid/icu/impl/number/LongNameMultiplexer;
.super Ljava/lang/Object;
.source "LongNameMultiplexer.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist fHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fMeasureUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist fParent:Landroid/icu/impl/number/MicroPropsGenerator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 2
    .param p1, "fParent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/impl/number/LongNameMultiplexer;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 44
    return-void
.end method

.method public static blacklist forMeasureUnits(Landroid/icu/util/ULocale;Ljava/util/List;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameMultiplexer;
    .registers 15
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "unitDisplayCase"    # Ljava/lang/String;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List<",
            "Landroid/icu/util/MeasureUnit;",
            ">;",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/impl/number/MicroPropsGenerator;",
            ")",
            "Landroid/icu/impl/number/LongNameMultiplexer;"
        }
    .end annotation

    .line 54
    .local p1, "units":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/MeasureUnit;>;"
    new-instance v0, Landroid/icu/impl/number/LongNameMultiplexer;

    invoke-direct {v0, p5}, Landroid/icu/impl/number/LongNameMultiplexer;-><init>(Landroid/icu/impl/number/MicroPropsGenerator;)V

    .line 56
    .local v0, "result":Landroid/icu/impl/number/LongNameMultiplexer;
    nop

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/icu/util/MeasureUnit;

    .line 64
    .local v4, "unit":Landroid/icu/util/MeasureUnit;
    iget-object v2, v0, Landroid/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v4}, Landroid/icu/util/MeasureUnit;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v2

    sget-object v3, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v2, v3, :cond_3f

    .line 66
    nop

    .line 67
    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "locale":Landroid/icu/util/ULocale;
    .end local p2    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local p3    # "unitDisplayCase":Ljava/lang/String;
    .end local p4    # "rules":Landroid/icu/text/PluralRules;
    .local v3, "locale":Landroid/icu/util/ULocale;
    .local v5, "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .local v6, "unitDisplayCase":Ljava/lang/String;
    .local v7, "rules":Landroid/icu/text/PluralRules;
    invoke-static/range {v3 .. v8}, Landroid/icu/impl/number/MixedUnitLongNameHandler;->forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MixedUnitLongNameHandler;

    move-result-object p0

    .line 68
    .local p0, "mlnh":Landroid/icu/impl/number/MixedUnitLongNameHandler;
    iget-object p2, v0, Landroid/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local p0    # "mlnh":Landroid/icu/impl/number/MixedUnitLongNameHandler;
    goto :goto_4d

    .line 70
    .end local v3    # "locale":Landroid/icu/util/ULocale;
    .end local v5    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local v6    # "unitDisplayCase":Ljava/lang/String;
    .end local v7    # "rules":Landroid/icu/text/PluralRules;
    .local p0, "locale":Landroid/icu/util/ULocale;
    .restart local p2    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local p3    # "unitDisplayCase":Ljava/lang/String;
    .restart local p4    # "rules":Landroid/icu/text/PluralRules;
    :cond_3f
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "locale":Landroid/icu/util/ULocale;
    .end local p2    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local p3    # "unitDisplayCase":Ljava/lang/String;
    .end local p4    # "rules":Landroid/icu/text/PluralRules;
    .restart local v3    # "locale":Landroid/icu/util/ULocale;
    .restart local v5    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local v6    # "unitDisplayCase":Ljava/lang/String;
    .restart local v7    # "rules":Landroid/icu/text/PluralRules;
    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/icu/impl/number/LongNameHandler;->forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object p0

    .line 71
    .local p0, "lnh":Landroid/icu/impl/number/LongNameHandler;
    iget-object p2, v0, Landroid/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v4    # "unit":Landroid/icu/util/MeasureUnit;
    .end local p0    # "lnh":Landroid/icu/impl/number/LongNameHandler;
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move-object p2, v5

    move-object p3, v6

    move-object p4, v7

    goto :goto_15

    .line 75
    .end local v1    # "i":I
    .end local v3    # "locale":Landroid/icu/util/ULocale;
    .end local v5    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .end local v6    # "unitDisplayCase":Ljava/lang/String;
    .end local v7    # "rules":Landroid/icu/text/PluralRules;
    .local p0, "locale":Landroid/icu/util/ULocale;
    .restart local p2    # "width":Landroid/icu/number/NumberFormatter$UnitWidth;
    .restart local p3    # "unitDisplayCase":Ljava/lang/String;
    .restart local p4    # "rules":Landroid/icu/text/PluralRules;
    :cond_54
    return-object v0
.end method


# virtual methods
.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 85
    iget-object v0, p0, Landroid/icu/impl/number/LongNameMultiplexer;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 88
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 89
    iget-object v2, p0, Landroid/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/MeasureUnit;

    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->outputUnit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v2, v3}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 90
    iget-object v2, p0, Landroid/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;

    .line 91
    .local v2, "handler":Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;
    invoke-interface {v2, p1, v0}, Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;->processQuantityWithMicros(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/MicroProps;

    move-result-object v3

    return-object v3

    .line 88
    .end local v2    # "handler":Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 94
    .end local v1    # "i":I
    :cond_2f
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, " We shouldn\'t receive any outputUnit for which we haven\'t already got a LongNameHandler"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
