.class public Landroid/icu/impl/number/MixedUnitLongNameHandler;
.super Ljava/lang/Object;
.source "MixedUnitLongNameHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;
.implements Landroid/icu/impl/number/ModifierStore;
.implements Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist fIntegerFormatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private blacklist fListFormatter:Landroid/icu/text/ListFormatter;

.field private blacklist fMixedUnitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field private final blacklist rules:Landroid/icu/text/PluralRules;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 22
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 3
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->rules:Landroid/icu/text/PluralRules;

    .line 44
    iput-object p2, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 45
    return-void
.end method

.method public static blacklist forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MixedUnitLongNameHandler;
    .registers 11
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "mixedUnit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "unitDisplayCase"    # Ljava/lang/String;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 67
    nop

    .line 75
    new-instance v0, Landroid/icu/impl/number/MixedUnitLongNameHandler;

    invoke-direct {v0, p4, p5}, Landroid/icu/impl/number/MixedUnitLongNameHandler;-><init>(Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    .line 76
    .local v0, "result":Landroid/icu/impl/number/MixedUnitLongNameHandler;
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->splitToSingleUnits()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "individualUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/MeasureUnit;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 81
    sget v3, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v3, v3, [Ljava/lang/String;

    .line 82
    .local v3, "unitData":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/MeasureUnit;

    invoke-static {p0, v4, p2, p3, v3}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    iget-object v4, v0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "unitData":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 89
    .end local v2    # "i":I
    :cond_2d
    sget-object v2, Landroid/icu/text/ListFormatter$Width;->SHORT:Landroid/icu/text/ListFormatter$Width;

    .line 90
    .local v2, "listWidth":Landroid/icu/text/ListFormatter$Width;
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v3, :cond_36

    .line 91
    sget-object v2, Landroid/icu/text/ListFormatter$Width;->NARROW:Landroid/icu/text/ListFormatter$Width;

    goto :goto_3c

    .line 92
    :cond_36
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v3, :cond_3c

    .line 94
    sget-object v2, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    .line 97
    :cond_3c
    :goto_3c
    sget-object v3, Landroid/icu/text/ListFormatter$Type;->UNITS:Landroid/icu/text/ListFormatter$Type;

    invoke-static {p0, v3, v2}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fListFormatter:Landroid/icu/text/ListFormatter;

    .line 102
    invoke-static {p0}, Landroid/icu/number/NumberFormatter;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fIntegerFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 104
    return-object v0
.end method

.method private blacklist getMixedUnitModifier(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/Modifier;
    .registers 14
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "micros"    # Landroid/icu/impl/number/MicroProps;

    .line 162
    iget-object v0, p2, Landroid/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c4

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "outputMeasuresList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    .line 188
    .local v1, "quantityPlural":Landroid/icu/impl/StandardPlural;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p2, Landroid/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_a0

    .line 190
    iget v3, p2, Landroid/icu/impl/number/MicroProps;->indexOfQuantity:I

    if-ne v2, v3, :cond_4f

    .line 191
    if-lez v2, :cond_29

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 194
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->negate()V

    .line 197
    :cond_29
    iget-object v3, p2, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v6, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v3, v6, p1}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 198
    iget-object v3, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "quantitySimpleFormat":Ljava/lang/String;
    invoke-static {v3, v5, v4}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object v6

    .line 200
    .local v6, "finalFormatter":Landroid/icu/text/SimpleFormatter;
    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v7, "{0}"

    aput-object v7, v4, v5

    invoke-virtual {v6, v4}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_9c

    .line 206
    .end local v3    # "quantitySimpleFormat":Ljava/lang/String;
    .end local v6    # "finalFormatter":Landroid/icu/text/SimpleFormatter;
    :cond_4f
    new-instance v3, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    iget-object v6, p2, Landroid/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/Measure;

    invoke-virtual {v6}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 207
    .local v3, "fdec":Landroid/icu/impl/number/DecimalQuantity;
    if-lez v2, :cond_6b

    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 210
    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->negate()V

    .line 213
    :cond_6b
    iget-object v6, p2, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v7, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v6, v7, v3}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v6

    .line 215
    .local v6, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v7, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "simpleFormat":Ljava/lang/String;
    invoke-static {v7, v5, v4}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object v8

    .line 218
    .local v8, "compiledFormatter":Landroid/icu/text/SimpleFormatter;
    new-instance v9, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v9}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 219
    .local v9, "appendable":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v10, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fIntegerFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v10, v3, v9}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 220
    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v9}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v8, v4}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3    # "fdec":Landroid/icu/impl/number/DecimalQuantity;
    .end local v6    # "pluralForm":Landroid/icu/impl/StandardPlural;
    .end local v7    # "simpleFormat":Ljava/lang/String;
    .end local v8    # "compiledFormatter":Landroid/icu/text/SimpleFormatter;
    .end local v9    # "appendable":Landroid/icu/impl/FormattedStringBuilder;
    :goto_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 226
    .end local v2    # "i":I
    :cond_a0
    iget-object v2, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->fListFormatter:Landroid/icu/text/ListFormatter;

    invoke-virtual {v2, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "premixedFormatPattern":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v3, "sb":Ljava/lang/StringBuilder;
    nop

    .line 229
    invoke-static {v2, v3, v5, v4}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "premixedCompiled":Ljava/lang/String;
    new-instance v6, Landroid/icu/impl/number/Modifier$Parameters;

    invoke-direct {v6}, Landroid/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 233
    .local v6, "params":Landroid/icu/impl/number/Modifier$Parameters;
    iput-object p0, v6, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    .line 234
    sget-object v7, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    iput-object v7, v6, Landroid/icu/impl/number/Modifier$Parameters;->signum:Landroid/icu/impl/number/Modifier$Signum;

    .line 235
    iput-object v1, v6, Landroid/icu/impl/number/Modifier$Parameters;->plural:Landroid/icu/impl/StandardPlural;

    .line 237
    new-instance v7, Landroid/icu/impl/number/SimpleModifier;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v5, v6}, Landroid/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLandroid/icu/impl/number/Modifier$Parameters;)V

    return-object v7

    .line 163
    .end local v0    # "outputMeasuresList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "quantityPlural":Landroid/icu/impl/StandardPlural;
    .end local v2    # "premixedFormatPattern":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "premixedCompiled":Ljava/lang/String;
    .end local v6    # "params":Landroid/icu/impl/number/Modifier$Parameters;
    :cond_c4
    nop

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;
    .registers 4
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 149
    nop

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 118
    nop

    .line 120
    iget-object v0, p0, Landroid/icu/impl/number/MixedUnitLongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 121
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/MixedUnitLongNameHandler;->getMixedUnitModifier(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/Modifier;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    .line 122
    return-object v0
.end method

.method public blacklist processQuantityWithMicros(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "micros"    # Landroid/icu/impl/number/MicroProps;

    .line 134
    nop

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/MixedUnitLongNameHandler;->getMixedUnitModifier(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/Modifier;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    .line 136
    return-object p2
.end method
