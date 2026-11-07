.class Landroid/icu/number/CompactNotation$CompactHandler;
.super Ljava/lang/Object;
.source "CompactNotation.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/CompactNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactHandler"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist data:Landroid/icu/impl/number/CompactData;

.field final blacklist parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final blacklist precomputedMods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist rules:Landroid/icu/text/PluralRules;

.field final blacklist unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    const-class v0, Landroid/icu/number/CompactNotation;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 11
    .param p1, "notation"    # Landroid/icu/number/CompactNotation;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "nsName"    # Ljava/lang/String;
    .param p4, "compactType"    # Landroid/icu/impl/number/CompactData$CompactType;
    .param p5, "rules"    # Landroid/icu/text/PluralRules;
    .param p6, "buildReference"    # Landroid/icu/impl/number/MutablePatternModifier;
    .param p7, "safe"    # Z
    .param p8, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->rules:Landroid/icu/text/PluralRules;

    .line 92
    iput-object p8, p0, Landroid/icu/number/CompactNotation$CompactHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 93
    new-instance v0, Landroid/icu/impl/number/CompactData;

    invoke-direct {v0}, Landroid/icu/impl/number/CompactData;-><init>()V

    iput-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    .line 94
    iget-object v0, p1, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-eqz v0, :cond_1a

    .line 95
    iget-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    iget-object v1, p1, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/icu/impl/number/CompactData;->populate(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;)V

    goto :goto_21

    .line 97
    :cond_1a
    iget-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    iget-object v1, p1, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/CompactData;->populate(Ljava/util/Map;)V

    .line 99
    :goto_21
    const/4 v0, 0x0

    if-eqz p7, :cond_31

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    .line 102
    invoke-direct {p0, p6}, Landroid/icu/number/CompactNotation$CompactHandler;->precomputeAllModifiers(Landroid/icu/impl/number/MutablePatternModifier;)V

    .line 103
    iput-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;

    goto :goto_35

    .line 106
    :cond_31
    iput-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    .line 107
    iput-object p6, p0, Landroid/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;

    .line 109
    :goto_35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/CompactNotation-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/icu/number/CompactNotation$CompactHandler;-><init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method private blacklist precomputeAllModifiers(Landroid/icu/impl/number/MutablePatternModifier;)V
    .registers 8
    .param p1, "buildReference"    # Landroid/icu/impl/number/MutablePatternModifier;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v0, "allPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/CompactData;->getUniquePatterns(Ljava/util/Set;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "patternString":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v3

    .line 118
    .local v3, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/text/NumberFormat$Field;)V

    .line 119
    iget-object v4, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/impl/number/MutablePatternModifier;->createImmutable()Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v2    # "patternString":Ljava/lang/String;
    .end local v3    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    goto :goto_e

    .line 121
    :cond_2d
    return-void
.end method


# virtual methods
.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 10
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 125
    iget-object v0, p0, Landroid/icu/number/CompactNotation$CompactHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 126
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    nop

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "multiplier":I
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "magnitude":I
    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v3, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    goto :goto_2a

    .line 135
    .end local v2    # "magnitude":I
    :cond_15
    iget-object v2, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v3, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    invoke-virtual {v2, p1, v3}, Landroid/icu/number/Precision;->chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I

    move-result v1

    .line 136
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_29

    :cond_25
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v2

    .line 137
    .restart local v2    # "magnitude":I
    :goto_29
    sub-int/2addr v2, v1

    .line 140
    :goto_2a
    iget-object v3, p0, Landroid/icu/number/CompactNotation$CompactHandler;->data:Landroid/icu/impl/number/CompactData;

    iget-object v4, p0, Landroid/icu/number/CompactNotation$CompactHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v3, v2, v4, p1}, Landroid/icu/impl/number/CompactData;->getPattern(ILandroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "patternString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_36

    goto :goto_5e

    .line 144
    :cond_36
    iget-object v5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    if-eqz v5, :cond_46

    .line 147
    iget-object v5, p0, Landroid/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    .line 148
    .local v5, "mod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    invoke-virtual {v5, v0, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 149
    .end local v5    # "mod":Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    goto :goto_5e

    .line 152
    :cond_46
    invoke-static {v3}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v5

    .line 153
    .local v5, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    iget-object v6, p0, Landroid/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v6, v5, v7}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/text/NumberFormat$Field;)V

    .line 154
    iget-object v6, p0, Landroid/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->signum()Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 155
    iget-object v6, p0, Landroid/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Landroid/icu/impl/number/MutablePatternModifier;

    iput-object v6, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    .line 161
    .end local v5    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    :goto_5e
    mul-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Landroid/icu/impl/number/DecimalQuantity;->adjustExponent(I)V

    .line 164
    iput-object v4, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 166
    return-object v0
.end method
