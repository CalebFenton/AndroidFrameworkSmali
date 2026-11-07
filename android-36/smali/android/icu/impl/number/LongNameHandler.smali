.class public Landroid/icu/impl/number/LongNameHandler;
.super Ljava/lang/Object;
.source "LongNameHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;
.implements Landroid/icu/impl/number/ModifierStore;
.implements Landroid/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;,
        Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;,
        Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;,
        Landroid/icu/impl/number/LongNameHandler$PluralTableSink;,
        Landroid/icu/impl/number/LongNameHandler$AliasSink;,
        Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field static final blacklist ARRAY_LENGTH:I

.field private static final blacklist DNAM_INDEX:I

.field private static final blacklist GENDER_INDEX:I

.field private static final blacklist PER_INDEX:I

.field private static blacklist i:I


# instance fields
.field private blacklist gender:Ljava/lang/String;

.field private final blacklist modifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Landroid/icu/impl/number/SimpleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field private final blacklist rules:Landroid/icu/text/PluralRules;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetIndex(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/number/LongNameHandler;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    nop

    .line 41
    const/4 v0, 0x0

    sput v0, Landroid/icu/impl/number/LongNameHandler;->i:I

    .line 42
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v1, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Landroid/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    .line 43
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v1, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Landroid/icu/impl/number/LongNameHandler;->PER_INDEX:I

    .line 44
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v1, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    .line 45
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v1, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 5
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Landroid/icu/impl/number/SimpleModifier;",
            ">;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/impl/number/MicroPropsGenerator;",
            ")V"
        }
    .end annotation

    .line 779
    .local p1, "modifiers":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/SimpleModifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    .line 780
    iput-object p1, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    .line 781
    iput-object p2, p0, Landroid/icu/impl/number/LongNameHandler;->rules:Landroid/icu/text/PluralRules;

    .line 782
    iput-object p3, p0, Landroid/icu/impl/number/LongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 783
    return-void
.end method

.method private static blacklist calculateGenderForUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 13
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 678
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 679
    .local v0, "mui":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    .line 680
    .local v1, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    const/4 v2, 0x0

    .line 681
    .local v2, "singleUnitIndex":I
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v3

    sget-object v4, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    const-string v5, "gender"

    const/4 v6, 0x1

    if-ne v3, v4, :cond_7f

    .line 682
    const/4 v3, 0x0

    .line 684
    .local v3, "startSlice":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    .line 685
    .local v4, "endSlice":I
    nop

    .line 686
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v7

    const/4 v8, 0x0

    if-gez v7, :cond_62

    .line 688
    const-string v7, "per"

    invoke-static {p0, v5, v7}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "perRule":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v6, :cond_35

    .line 691
    return-object v7

    .line 693
    :cond_35
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_4c

    .line 695
    :goto_3d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v9}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v9

    if-ltz v9, :cond_62

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 700
    :cond_4c
    :goto_4c
    if-ltz v4, :cond_5d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v9}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v9

    if-gez v9, :cond_5d

    .line 701
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 703
    :cond_5d
    if-gez v4, :cond_62

    .line 707
    const-string v5, ""

    return-object v5

    .line 711
    .end local v7    # "perRule":Ljava/lang/String;
    :cond_62
    if-le v4, v3, :cond_7c

    .line 713
    const-string v7, "times"

    invoke-static {p0, v5, v7}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 714
    .local v7, "timesRule":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v6, :cond_71

    .line 716
    return-object v7

    .line 718
    :cond_71
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_7b

    .line 719
    move v4, v3

    goto :goto_7c

    .line 722
    :cond_7b
    move v3, v4

    .line 725
    .end local v7    # "timesRule":Ljava/lang/String;
    :cond_7c
    :goto_7c
    nop

    .line 726
    move v2, v3

    .line 727
    .end local v3    # "startSlice":I
    .end local v4    # "endSlice":I
    goto :goto_89

    :cond_7f
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v3

    sget-object v4, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-eq v3, v4, :cond_ca

    .line 730
    nop

    .line 731
    nop

    .line 735
    :goto_89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/SingleUnitImpl;

    .line 737
    .local v3, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v3}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eq v4, v6, :cond_a6

    .line 738
    const-string v4, "power"

    invoke-static {p0, v5, v4}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, "powerRule":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v6, :cond_a6

    .line 741
    return-object v4

    .line 746
    .end local v4    # "powerRule":Ljava/lang/String;
    :cond_a6
    invoke-virtual {v3}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eq v4, v6, :cond_bd

    .line 747
    const-string v4, "prefix"

    invoke-static {p0, v5, v4}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "prefixRule":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_bd

    .line 750
    return-object v4

    .line 755
    .end local v4    # "prefixRule":Ljava/lang/String;
    :cond_bd
    invoke-virtual {v3}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/MeasureUnit;->forIdentifier(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 728
    .end local v3    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :cond_ca
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v4, "calculateGenderForUnit does not support MIXED units"

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist extractCorePattern(Ljava/lang/String;)Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;-><init>(Landroid/icu/impl/number/LongNameHandler-IA;)V

    .line 95
    .local v0, "result":Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    const/4 v1, 0x0

    iput-char v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    .local v2, "len":I
    const-string v3, "{0}"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 98
    sget-object v1, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 99
    const/4 v1, 0x3

    if-le v2, v1, :cond_34

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    .line 101
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_80

    .line 103
    :cond_34
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_80

    .line 105
    :cond_3b
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 106
    sget-object v3, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v3, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 107
    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 108
    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 109
    add-int/lit8 v1, v2, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    goto :goto_80

    .line 111
    :cond_62
    add-int/lit8 v3, v2, -0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_80

    .line 113
    :cond_6b
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7a

    .line 114
    sget-object v1, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->NONE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 115
    iput-object p0, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_80

    .line 117
    :cond_7a
    sget-object v1, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 118
    iput-object p0, v0, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 120
    :goto_80
    return-object v0
.end method

.method private static blacklist forArbitraryUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;
    .registers 27
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "unitDisplayCase"    # Ljava/lang/String;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v3

    .line 863
    .local v3, "fullUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    const/4 v4, 0x0

    .line 864
    .end local p1    # "unit":Landroid/icu/util/MeasureUnit;
    .local v4, "unit":Landroid/icu/util/MeasureUnit;
    const/4 v5, 0x0

    .line 867
    .local v5, "perUnit":Landroid/icu/util/MeasureUnit;
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/units/SingleUnitImpl;

    .line 868
    .local v7, "subUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v8

    if-lez v8, :cond_36

    .line 869
    if-nez v4, :cond_2d

    .line 870
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v4

    goto :goto_4e

    .line 872
    :cond_2d
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/icu/util/MeasureUnit;->product(Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v4

    goto :goto_4e

    .line 876
    :cond_36
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 877
    if-nez v5, :cond_46

    .line 878
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v5

    goto :goto_4e

    .line 880
    :cond_46
    invoke-virtual {v7}, Landroid/icu/impl/units/SingleUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/icu/util/MeasureUnit;->product(Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v5

    .line 883
    .end local v7    # "subUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :goto_4e
    goto :goto_14

    .line 884
    :cond_4f
    const/4 v6, 0x0

    if-nez v4, :cond_54

    move-object v7, v6

    goto :goto_58

    :cond_54
    invoke-virtual {v4}, Landroid/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v7

    .line 885
    .local v7, "unitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    :goto_58
    if-nez v5, :cond_5b

    goto :goto_5f

    :cond_5b
    invoke-virtual {v5}, Landroid/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v6

    .line 892
    .local v6, "perUnitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    :goto_5f
    new-instance v8, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v9, "case"

    const-string v10, "per"

    invoke-direct {v8, v0, v9, v10}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v8, "derivedPerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    sget v9, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v9, v9, [Ljava/lang/String;

    .line 896
    .local v9, "numeratorUnitData":[Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v0, v1, v11, v9}, Landroid/icu/impl/number/LongNameHandler;->processPatternTimes(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 900
    sget v11, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v11, v11, [Ljava/lang/String;

    .line 901
    .local v11, "denominatorUnitData":[Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v0, v1, v12, v11}, Landroid/icu/impl/number/LongNameHandler;->processPatternTimes(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 918
    const/4 v12, 0x0

    .line 919
    .local v12, "perUnitPattern":Ljava/lang/String;
    sget v13, Landroid/icu/impl/number/LongNameHandler;->PER_INDEX:I

    aget-object v13, v11, v13

    if-eqz v13, :cond_8c

    .line 921
    sget v13, Landroid/icu/impl/number/LongNameHandler;->PER_INDEX:I

    aget-object v12, v11, v13

    move-object/from16 v16, v3

    goto :goto_c2

    .line 923
    :cond_8c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    .local v13, "sb":Ljava/lang/StringBuilder;
    invoke-static {v10, v0, v1}, Landroid/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v14

    .line 929
    .local v14, "rawPerUnitFormat":Ljava/lang/String;
    nop

    .line 930
    const/4 v15, 0x2

    invoke-static {v14, v13, v15, v15}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "perPatternFormatter":Ljava/lang/String;
    sget-object v15, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    invoke-static {v11, v15}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v15

    .line 936
    .local v15, "rawDenominatorFormat":Ljava/lang/String;
    nop

    .line 937
    const/4 v2, 0x0

    move-object/from16 v16, v3

    .end local v3    # "fullUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    .local v16, "fullUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    const/4 v3, 0x1

    invoke-static {v15, v13, v2, v3}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v17

    .line 938
    .local v17, "denominatorFormatter":Ljava/lang/String;
    nop

    .line 939
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 938
    invoke-static/range {v18 .. v18}, Landroid/icu/impl/PatternProps;->trimSpaceChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 947
    .local v18, "denominatorString":Ljava/lang/String;
    move/from16 v19, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v20, "{0}"

    aput-object v20, v2, v19

    aput-object v18, v2, v3

    .line 948
    invoke-static {v1, v2}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 950
    .end local v1    # "perPatternFormatter":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "rawPerUnitFormat":Ljava/lang/String;
    .end local v15    # "rawDenominatorFormat":Ljava/lang/String;
    .end local v17    # "denominatorFormatter":Ljava/lang/String;
    .end local v18    # "denominatorString":Ljava/lang/String;
    :goto_c2
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Landroid/icu/impl/StandardPlural;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 952
    .local v1, "modifiers":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/SimpleModifier;>;"
    new-instance v2, Landroid/icu/impl/number/LongNameHandler;

    move-object/from16 v3, p4

    move-object/from16 v13, p5

    invoke-direct {v2, v1, v3, v13}, Landroid/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    .line 953
    .local v2, "result":Landroid/icu/impl/number/LongNameHandler;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_de

    .line 954
    sget-object v14, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    invoke-direct {v2, v9, v14}, Landroid/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V

    goto :goto_e3

    .line 956
    :cond_de
    sget-object v14, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    invoke-direct {v2, v9, v12, v14}, Landroid/icu/impl/number/LongNameHandler;->multiSimpleFormatsToModifiers([Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V

    .line 968
    :goto_e3
    invoke-static {v0, v10, v9, v11}, Landroid/icu/impl/number/LongNameHandler;->getDerivedGender(Landroid/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Landroid/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    .line 969
    return-object v2
.end method

.method public static blacklist forCurrencyLongNames(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;
    .registers 8
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 796
    sget v0, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    .line 797
    .local v0, "simpleFormats":[Ljava/lang/String;
    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/LongNameHandler;->getCurrencyLongNameData(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;[Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Landroid/icu/impl/StandardPlural;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 801
    .local v1, "modifiers":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/SimpleModifier;>;"
    new-instance v2, Landroid/icu/impl/number/LongNameHandler;

    invoke-direct {v2, v1, p2, p3}, Landroid/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    .line 802
    .local v2, "result":Landroid/icu/impl/number/LongNameHandler;
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-direct {v2, v0, v3}, Landroid/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V

    .line 804
    return-object v2
.end method

.method public static blacklist forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;
    .registers 10
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "unitDisplayCase"    # Ljava/lang/String;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 832
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 833
    sget v0, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    .line 834
    .local v0, "simpleFormats":[Ljava/lang/String;
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 835
    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/LongNameHandler;->maybeCalculateGender(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;[Ljava/lang/String;)V

    .line 837
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Landroid/icu/impl/StandardPlural;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 838
    .local v1, "modifiers":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/SimpleModifier;>;"
    new-instance v2, Landroid/icu/impl/number/LongNameHandler;

    invoke-direct {v2, v1, p4, p5}, Landroid/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V

    .line 839
    .local v2, "result":Landroid/icu/impl/number/LongNameHandler;
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    invoke-direct {v2, v0, v3}, Landroid/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V

    .line 840
    sget v3, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v3, v0, v3

    if-eqz v3, :cond_2d

    .line 841
    sget v3, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v3, v0, v3

    iput-object v3, v2, Landroid/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    .line 843
    :cond_2d
    return-object v2

    .line 845
    .end local v0    # "simpleFormats":[Ljava/lang/String;
    .end local v1    # "modifiers":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/SimpleModifier;>;"
    .end local v2    # "result":Landroid/icu/impl/number/LongNameHandler;
    :cond_2e
    nop

    .line 847
    invoke-static/range {p0 .. p5}, Landroid/icu/impl/number/LongNameHandler;->forArbitraryUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCompoundValue(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;
    .registers 8
    .param p0, "compoundKey"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 479
    const-string v0, "android/icu/impl/data/icudata/unit"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 481
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v1, "key":Ljava/lang/StringBuilder;
    const-string v2, "units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v2, :cond_1c

    .line 484
    const-string v2, "Narrow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 485
    :cond_1c
    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v2, :cond_25

    .line 486
    const-string v2, "Short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_25
    :goto_25
    const-string v2, "/compound/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_35
    .catch Ljava/util/MissingResourceException; {:try_start_2d .. :try_end_35} :catch_36

    return-object v2

    .line 492
    :catch_36
    move-exception v2

    .line 493
    .local v2, "e":Ljava/util/MissingResourceException;
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v4, ""

    if-ne p2, v3, :cond_3e

    .line 494
    return-object v4

    .line 499
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_46
    .catch Ljava/util/MissingResourceException; {:try_start_3e .. :try_end_46} :catch_47

    return-object v2

    .line 500
    :catch_47
    move-exception v2

    .line 501
    .restart local v2    # "e":Ljava/util/MissingResourceException;
    return-object v4
.end method

.method private static blacklist getCurrencyLongNameData(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;[Ljava/lang/String;)V
    .registers 14
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "outArray"    # [Ljava/lang/String;

    .line 445
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v0

    .line 452
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    .line 453
    .local v1, "prules":Landroid/icu/text/PluralRules;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v2

    .line 454
    .local v2, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "other"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    .local v4, "otherPattern":Ljava/lang/String;
    if-eqz v2, :cond_3f

    if-eqz v4, :cond_3f

    .line 456
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 457
    .local v6, "keyword":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 458
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .end local v6    # "keyword":Ljava/lang/String;
    :cond_3e
    goto :goto_23

    .line 462
    :cond_3f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 464
    .local v6, "pluralKeyword":Ljava/lang/String;
    invoke-static {v6}, Landroid/icu/impl/number/LongNameHandler;->getIndex(Ljava/lang/String;)I

    move-result v7

    .line 465
    .local v7, "index":I
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p1, p0, v8, v6, v9}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "longName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 469
    .local v9, "simpleFormat":Ljava/lang/String;
    const-string v10, "{1}"

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 473
    aput-object v9, p2, v7

    .line 474
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pluralKeyword":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "longName":Ljava/lang/String;
    .end local v9    # "simpleFormat":Ljava/lang/String;
    goto :goto_47

    .line 475
    :cond_72
    return-void
.end method

.method private static blacklist getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "structure"    # Ljava/lang/String;

    .line 592
    nop

    .line 594
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "grammaticalFeatures"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 596
    .local v0, "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "grammaticalData"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 597
    const-string v1, "derivations"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 602
    :try_start_1d
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_1d .. :try_end_27} :catch_28

    .line 605
    .local v1, "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_32

    .line 603
    .end local v1    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_28
    move-exception v1

    .line 604
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v2, "root"

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    move-object v1, v2

    .line 607
    .local v1, "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_32
    const-string v2, "compound"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 608
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 610
    invoke-virtual {v1, p2}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getDerivedGender(Landroid/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "structure"    # Ljava/lang/String;
    .param p2, "data0"    # [Ljava/lang/String;
    .param p3, "data1"    # [Ljava/lang/String;

    .line 628
    const-string v0, "gender"

    invoke-static {p0, v0, p1}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_26

    goto :goto_24

    .line 634
    :pswitch_16
    if-nez p3, :cond_1a

    .line 635
    const/4 v1, 0x0

    return-object v1

    .line 637
    :cond_1a
    sget v1, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v1, p3, v1

    return-object v1

    .line 632
    :pswitch_1f
    sget v1, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v1, p2, v1

    return-object v1

    .line 640
    :cond_24
    :goto_24
    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x30
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private static blacklist getGenderForBuiltin(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "builtinUnit"    # Landroid/icu/util/MeasureUnit;

    .line 130
    const-string v0, "android/icu/impl/data/icudata/unit"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 132
    .local v0, "unitsBundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "key":Ljava/lang/StringBuilder;
    const-string v2, "units/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-person"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 140
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 142
    :cond_43
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_4a
    const-string v2, "/gender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :try_start_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2
    :try_end_5b
    .catch Ljava/util/MissingResourceException; {:try_start_4f .. :try_end_5b} :catch_5c

    return-object v2

    .line 148
    :catch_5c
    move-exception v2

    .line 153
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string v3, ""

    return-object v3
.end method

.method private static blacklist getIndex(Ljava/lang/String;)I
    .registers 2
    .param p0, "pluralKeyword"    # Ljava/lang/String;

    .line 50
    const-string v0, "dnam"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    sget v0, Landroid/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    return v0

    .line 52
    :cond_b
    const-string v0, "per"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 53
    sget v0, Landroid/icu/impl/number/LongNameHandler;->PER_INDEX:I

    return v0

    .line 54
    :cond_16
    const-string v0, "gender"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 55
    sget v0, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    return v0

    .line 57
    :cond_21
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    return v0
.end method

.method static blacklist getInflectedMeasureData(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p0, "subKey"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "caseVariant"    # Ljava/lang/String;
    .param p5, "outArray"    # [Ljava/lang/String;

    .line 278
    new-instance v0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;

    invoke-direct {v0, p3, p4, p5}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 279
    .local v0, "sink":Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;
    nop

    .line 280
    const-string v1, "android/icu/impl/data/icudata/unit"

    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 282
    .local v1, "unitsBundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v2, "key":Ljava/lang/StringBuilder;
    const-string v3, "units"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v3, :cond_22

    .line 285
    const-string v3, "Narrow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 286
    :cond_22
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v3, :cond_2b

    .line 287
    const-string v3, "Short"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_2b
    :goto_2b
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 294
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;
    :try_end_3c
    .catch Ljava/util/MissingResourceException; {:try_start_33 .. :try_end_3c} :catch_40

    if-ne p2, v3, :cond_3f

    .line 295
    return-void

    .line 299
    :cond_3f
    goto :goto_41

    .line 297
    :catch_40
    move-exception v3

    .line 301
    :goto_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 302
    return-void
.end method

.method static blacklist getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "unitDisplayCase"    # Ljava/lang/String;
    .param p4, "outArray"    # [Ljava/lang/String;

    .line 357
    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;

    invoke-direct {v0, p4}, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;-><init>([Ljava/lang/String;)V

    .line 359
    .local v0, "sink":Landroid/icu/impl/number/LongNameHandler$PluralTableSink;
    const-string v1, "android/icu/impl/data/icudata/unit"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 362
    .local v1, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v2, "subKey":Ljava/lang/StringBuilder;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "unitSubType":Ljava/lang/String;
    const-string v4, "android/icu/impl/data/icudata"

    const-string v5, "metadata"

    invoke-static {v4, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 370
    .local v4, "metadataResource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v5, Landroid/icu/impl/number/LongNameHandler$AliasSink;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/icu/impl/number/LongNameHandler$AliasSink;-><init>(Landroid/icu/impl/number/LongNameHandler-IA;)V

    .line 372
    .local v5, "aliasSink":Landroid/icu/impl/number/LongNameHandler$AliasSink;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alias/unit/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 373
    iget-object v6, v5, Landroid/icu/impl/number/LongNameHandler$AliasSink;->replacement:Ljava/lang/String;

    if-eqz v6, :cond_51

    .line 374
    iget-object v3, v5, Landroid/icu/impl/number/LongNameHandler$AliasSink;->replacement:Ljava/lang/String;

    .line 380
    :cond_51
    if-eqz v3, :cond_66

    const-string v6, "-person"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 381
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 383
    :cond_66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :goto_69
    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v7, "units"

    if-eq p2, v6, :cond_91

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v6, "genderKey":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 390
    const-string v8, "/gender"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :try_start_7f
    sget v8, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8
    :try_end_8f
    .catch Ljava/util/MissingResourceException; {:try_start_7f .. :try_end_8f} :catch_90

    .line 395
    goto :goto_91

    .line 393
    :catch_90
    move-exception v8

    .line 398
    .end local v6    # "genderKey":Ljava/lang/StringBuilder;
    :cond_91
    :goto_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v6, "key":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v7, :cond_a3

    .line 401
    const-string v7, "Narrow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 402
    :cond_a3
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v7, :cond_ac

    .line 403
    const-string v7, "Short"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_ac
    :goto_ac
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 411
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v7, :cond_d4

    if-eqz p3, :cond_d4

    .line 413
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d4

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v7, "caseKey":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 416
    const-string v8, "/case/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :try_start_cb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_d2
    .catch Ljava/util/MissingResourceException; {:try_start_cb .. :try_end_d2} :catch_d3

    .line 433
    goto :goto_d4

    .line 431
    :catch_d3
    move-exception v8

    .line 436
    .end local v7    # "caseKey":Ljava/lang/StringBuilder;
    :cond_d4
    :goto_d4
    :try_start_d4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_db
    .catch Ljava/util/MissingResourceException; {:try_start_d4 .. :try_end_db} :catch_dd

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catch_dd
    move-exception v7

    .line 438
    .local v7, "e":Ljava/util/MissingResourceException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No data for unit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", width "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static blacklist getUnitDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 786
    sget v0, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    .line 787
    .local v0, "measureData":[Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 788
    sget v1, Landroid/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    aget-object v1, v0, v1

    return-object v1
.end method

.method static blacklist getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .registers 5
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 62
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aget-object v0, p0, v0

    .line 63
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 64
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, p0, v1

    .line 66
    :cond_10
    if-eqz v0, :cond_13

    .line 70
    return-object v0

    .line 68
    :cond_13
    new-instance v1, Landroid/icu/util/ICUException;

    const-string v2, "Could not find data in \'other\' plural variant"

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist maybeCalculateGender(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;[Ljava/lang/String;)V
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "outArray"    # [Ljava/lang/String;

    .line 759
    sget v0, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v0, p2, v0

    if-nez v0, :cond_1b

    .line 760
    sget-object v0, Landroid/icu/util/MeasureUnit;->METER:Landroid/icu/util/MeasureUnit;

    invoke-static {p0, v0}, Landroid/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "meterGender":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 763
    return-void

    .line 766
    :cond_13
    sget v1, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    invoke-static {p0, p1}, Landroid/icu/impl/number/LongNameHandler;->calculateGenderForUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 768
    .end local v0    # "meterGender":Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method private blacklist multiSimpleFormatsToModifiers([Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V
    .registers 16
    .param p1, "leadFormats"    # [Ljava/lang/String;
    .param p2, "trailFormat"    # Ljava/lang/String;
    .param p3, "field"    # Landroid/icu/text/NumberFormat$Field;

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "trailCompiled":Ljava/lang/String;
    sget-object v3, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/StandardPlural;

    .line 1335
    .local v4, "plural":Landroid/icu/impl/StandardPlural;
    invoke-static {p1, v4}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v5

    .line 1337
    .local v5, "leadFormat":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_29

    .line 1338
    move-object v6, p2

    .local v6, "compoundFormat":Ljava/lang/String;
    goto :goto_31

    .line 1340
    .end local v6    # "compoundFormat":Ljava/lang/String;
    :cond_29
    new-array v6, v1, [Ljava/lang/CharSequence;

    aput-object v5, v6, v7

    invoke-static {v2, v6}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1342
    .restart local v6    # "compoundFormat":Ljava/lang/String;
    :goto_31
    nop

    .line 1343
    invoke-static {v6, v0, v7, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v8

    .line 1344
    .local v8, "compoundCompiled":Ljava/lang/String;
    new-instance v9, Landroid/icu/impl/number/Modifier$Parameters;

    invoke-direct {v9}, Landroid/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 1345
    .local v9, "parameters":Landroid/icu/impl/number/Modifier$Parameters;
    iput-object p0, v9, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    .line 1346
    const/4 v10, 0x0

    iput-object v10, v9, Landroid/icu/impl/number/Modifier$Parameters;->signum:Landroid/icu/impl/number/Modifier$Signum;

    .line 1347
    iput-object v4, v9, Landroid/icu/impl/number/Modifier$Parameters;->plural:Landroid/icu/impl/StandardPlural;

    .line 1348
    iget-object v10, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    new-instance v11, Landroid/icu/impl/number/SimpleModifier;

    invoke-direct {v11, v8, p3, v7, v9}, Landroid/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLandroid/icu/impl/number/Modifier$Parameters;)V

    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .end local v4    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v5    # "leadFormat":Ljava/lang/String;
    .end local v6    # "compoundFormat":Ljava/lang/String;
    .end local v8    # "compoundCompiled":Ljava/lang/String;
    .end local v9    # "parameters":Landroid/icu/impl/number/Modifier$Parameters;
    goto :goto_10

    .line 1350
    :cond_4d
    return-void
.end method

.method private static blacklist processPatternTimes(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 45
    .param p0, "productUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p3, "caseVariant"    # Ljava/lang/String;
    .param p4, "outArray"    # [Ljava/lang/String;

    .line 981
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    .line 982
    nop

    .line 984
    const-string v0, ""

    if-nez p0, :cond_18

    .line 985
    sget-object v3, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    aput-object v0, v6, v3

    .line 986
    sget v3, Landroid/icu/impl/number/LongNameHandler;->PER_INDEX:I

    aput-object v0, v6, v3

    .line 987
    return-void

    .line 989
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v3

    sget-object v4, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-eq v3, v4, :cond_3df

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 999
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_34

    .line 1001
    return-void

    .line 1004
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/MeasureUnit;->findBySubType(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v3

    .line 1005
    .local v3, "simpleUnit":Landroid/icu/util/MeasureUnit;
    if-eqz v3, :cond_47

    .line 1013
    move-object/from16 v4, p3

    invoke-static {v1, v3, v2, v4, v6}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1014
    invoke-static {v1, v3, v6}, Landroid/icu/impl/number/LongNameHandler;->maybeCalculateGender(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;[Ljava/lang/String;)V

    .line 1015
    return-void

    .line 1019
    :cond_47
    move-object/from16 v4, p3

    const-string v7, "times"

    invoke-static {v7, v1, v2}, Landroid/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v8

    .line 1020
    .local v8, "timesPattern":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    .line 1021
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x2

    invoke-static {v8, v9, v10, v10}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v11

    .line 1023
    .local v11, "timesPatternFormatter":Ljava/lang/String;
    sget v5, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v12, v5, [Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 1024
    .local v12, "globalPlaceholder":[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
    const/4 v5, 0x0

    .line 1032
    .local v5, "globalJoinerChar":C
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v13

    array-length v14, v13

    const/4 v10, 0x0

    :goto_65
    if-ge v10, v14, :cond_81

    const/16 v18, 0x0

    aget-object v15, v13, v10

    .line 1033
    .local v15, "plural":Landroid/icu/impl/StandardPlural;
    invoke-virtual {v15}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v19

    .line 1035
    .local v19, "pluralIndex":I
    move-object/from16 v20, v0

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-ne v15, v0, :cond_78

    .line 1036
    aput-object v20, v6, v19

    goto :goto_7a

    .line 1038
    :cond_78
    aput-object v18, v6, v19

    .line 1040
    :goto_7a
    aput-object v18, v12, v19

    .line 1032
    .end local v15    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v19    # "pluralIndex":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v20

    goto :goto_65

    .line 1044
    :cond_81
    const/16 v18, 0x0

    const/4 v0, 0x0

    .line 1045
    .local v0, "pluralCategory":Ljava/lang/String;
    new-instance v10, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v13, "plural"

    invoke-direct {v10, v1, v13, v7}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    .local v10, "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    new-instance v13, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v14, "case"

    invoke-direct {v13, v1, v14, v7}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .local v13, "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    new-instance v15, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;

    move-object/from16 v19, v8

    .end local v8    # "timesPattern":Ljava/lang/String;
    .local v19, "timesPattern":Ljava/lang/String;
    const-string v8, "power"

    invoke-direct {v15, v1, v14, v8}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .local v15, "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v14

    .line 1051
    .local v14, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    const/16 v20, 0x0

    move/from16 v39, v20

    move-object/from16 v20, v12

    move/from16 v12, v39

    .end local p3    # "caseVariant":Ljava/lang/String;
    .local v4, "caseVariant":Ljava/lang/String;
    .local v12, "singleUnitIndex":I
    .local v20, "globalPlaceholder":[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
    :goto_a7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_36a

    .line 1052
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/SingleUnitImpl;

    .line 1057
    .local v2, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v22, v14

    .end local v14    # "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .local v22, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    const/16 p3, 0x1

    add-int/lit8 v14, v21, -0x1

    if-ge v12, v14, :cond_d9

    .line 1059
    invoke-virtual {v10, v0}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1060
    .local v14, "singlePluralCategory":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1061
    .local v21, "singleCaseVariant":Ljava/lang/String;
    invoke-virtual {v10, v0}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-virtual {v13, v4}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v14

    move-object v14, v0

    goto :goto_ea

    .line 1064
    .end local v14    # "singlePluralCategory":Ljava/lang/String;
    .end local v21    # "singleCaseVariant":Ljava/lang/String;
    :cond_d9
    invoke-virtual {v10, v0}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1065
    .restart local v14    # "singlePluralCategory":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v14

    move-object v14, v0

    .line 1069
    .end local v0    # "pluralCategory":Ljava/lang/String;
    .local v4, "singleCaseVariant":Ljava/lang/String;
    .local v14, "pluralCategory":Ljava/lang/String;
    .local v21, "caseVariant":Ljava/lang/String;
    .local v23, "singlePluralCategory":Ljava/lang/String;
    :goto_ea
    invoke-virtual {v2}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/MeasureUnit;->findBySubType(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v3

    .line 1070
    if-eqz v3, :cond_346

    .line 1079
    move-object/from16 v24, v2

    move-object v2, v3

    .end local v3    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v2, "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v24, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-static {v1, v2}, Landroid/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "gender":Ljava/lang/String;
    nop

    .line 1083
    move-object/from16 v25, v10

    .end local v10    # "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v25, "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    invoke-virtual/range {v24 .. v24}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v10

    .line 1084
    .local v10, "dimensionality":I
    sget v0, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v1, v0, [Ljava/lang/String;

    .line 1085
    .local v1, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    move/from16 v0, p3

    if-eq v10, v0, :cond_176

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v26, v1

    .end local v1    # "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .local v26, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    const-string v1, "compound/power"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1090
    .local v1, "dimensionalityKey":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    :try_start_117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_11b
    .catch Ljava/util/MissingResourceException; {:try_start_117 .. :try_end_11b} :catch_13d

    move-object/from16 v27, v14

    move v14, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v27

    move-object/from16 v28, v1

    move-object/from16 v27, v13

    move-object/from16 v13, v24

    move-object/from16 v1, p1

    move-object/from16 v24, v2

    move-object/from16 v2, p2

    .end local v1    # "dimensionalityKey":Ljava/lang/StringBuilder;
    .end local v2    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v5, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .local v13, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v14, "globalJoinerChar":C
    .local v24, "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v26, "pluralCategory":Ljava/lang/String;
    .local v27, "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v28, "dimensionalityKey":Ljava/lang/StringBuilder;
    :try_start_12e
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/LongNameHandler;->getInflectedMeasureData(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/util/MissingResourceException; {:try_start_12e .. :try_end_131} :catch_13b

    .line 1105
    nop

    .line 1111
    invoke-virtual {v15, v4}, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_184

    .line 1094
    :catch_13b
    move-exception v0

    goto :goto_151

    .end local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v28    # "dimensionalityKey":Ljava/lang/StringBuilder;
    .restart local v1    # "dimensionalityKey":Ljava/lang/StringBuilder;
    .restart local v2    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v5, "globalJoinerChar":C
    .local v13, "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v14, "pluralCategory":Ljava/lang/String;
    .local v24, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v26, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    :catch_13d
    move-exception v0

    move-object/from16 v27, v14

    move v14, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v27

    move-object/from16 v28, v1

    move-object/from16 v27, v13

    move-object/from16 v13, v24

    move-object/from16 v1, p1

    move-object/from16 v24, v2

    move-object/from16 v2, p2

    .line 1099
    .end local v1    # "dimensionalityKey":Ljava/lang/StringBuilder;
    .end local v2    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v0, "e":Ljava/util/MissingResourceException;
    .local v5, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .local v13, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v14, "globalJoinerChar":C
    .local v24, "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v26, "pluralCategory":Ljava/lang/String;
    .restart local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v28    # "dimensionalityKey":Ljava/lang/StringBuilder;
    :goto_151
    const/4 v7, 0x3

    if-le v10, v7, :cond_173

    .line 1100
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v0

    .end local v0    # "e":Ljava/util/MissingResourceException;
    .local p3, "e":Ljava/util/MissingResourceException;
    const-string v0, "powerN not supported for N > 3: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1103
    .end local p3    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    :cond_173
    move-object/from16 p3, v0

    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local p3    # "e":Ljava/util/MissingResourceException;
    throw p3

    .line 1085
    .end local v26    # "pluralCategory":Ljava/lang/String;
    .end local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v28    # "dimensionalityKey":Ljava/lang/StringBuilder;
    .end local p3    # "e":Ljava/util/MissingResourceException;
    .local v1, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .restart local v2    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v5, "globalJoinerChar":C
    .local v13, "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v14, "pluralCategory":Ljava/lang/String;
    .local v24, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :cond_176
    move-object/from16 v27, v13

    move-object/from16 v26, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v2

    move v14, v5

    move-object/from16 v2, p2

    move-object v5, v1

    move-object/from16 v1, p1

    .line 1117
    .end local v1    # "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .end local v2    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v5, "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .local v13, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v14, "globalJoinerChar":C
    .local v24, "simpleUnit":Landroid/icu/util/MeasureUnit;
    .restart local v26    # "pluralCategory":Ljava/lang/String;
    .restart local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    :goto_184
    invoke-virtual {v13}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    .line 1118
    .local v0, "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    const-string v28, ""

    .line 1119
    .local v28, "prefixPattern":Ljava/lang/String;
    move-object/from16 v29, v3

    .end local v3    # "gender":Ljava/lang/String;
    .local v29, "gender":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v0, v3, :cond_1ba

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v3, "prefixKey":Ljava/lang/StringBuilder;
    move-object/from16 v30, v15

    .end local v15    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v30, "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    invoke-virtual {v0}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1125
    const/16 v15, 0x70

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v0}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v1, v2}, Landroid/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v28

    .line 1144
    sget-object v15, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v13, v15}, Landroid/icu/impl/units/SingleUnitImpl;->setPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)V

    move-object/from16 v3, v28

    goto :goto_1be

    .line 1119
    .end local v3    # "prefixKey":Ljava/lang/StringBuilder;
    .end local v30    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v15    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    :cond_1ba
    move-object/from16 v30, v15

    .end local v15    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v30    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    move-object/from16 v3, v28

    .line 1149
    .end local v28    # "prefixPattern":Ljava/lang/String;
    .local v3, "prefixPattern":Ljava/lang/String;
    :goto_1be
    sget v15, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v15, v15, [Ljava/lang/String;

    .line 1151
    .local v15, "singleUnitArray":[Ljava/lang/String;
    nop

    .line 1155
    move-object/from16 v28, v13

    .end local v13    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v28, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual/range {v28 .. v28}, Landroid/icu/impl/units/SingleUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v13

    invoke-static {v1, v13, v2, v4, v15}, Landroid/icu/impl/number/LongNameHandler;->getMeasureData(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1158
    sget v13, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v13, v15, v13

    if-eqz v13, :cond_237

    .line 1159
    nop

    .line 1161
    sget-object v13, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v0, v13, :cond_1e8

    .line 1162
    sget v13, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    .line 1163
    move-object/from16 v31, v4

    .end local v4    # "singleCaseVariant":Ljava/lang/String;
    .local v31, "singleCaseVariant":Ljava/lang/String;
    const-string v4, "prefix"

    move/from16 v32, v13

    move-object/from16 v13, v18

    invoke-static {v1, v4, v15, v13}, Landroid/icu/impl/number/LongNameHandler;->getDerivedGender(Landroid/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v32

    goto :goto_1ec

    .line 1161
    .end local v31    # "singleCaseVariant":Ljava/lang/String;
    .restart local v4    # "singleCaseVariant":Ljava/lang/String;
    :cond_1e8
    move-object/from16 v31, v4

    move-object/from16 v13, v18

    .line 1166
    .end local v4    # "singleCaseVariant":Ljava/lang/String;
    .restart local v31    # "singleCaseVariant":Ljava/lang/String;
    :goto_1ec
    const/4 v4, 0x1

    if-eq v10, v4, :cond_1f7

    .line 1167
    sget v4, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    .line 1168
    invoke-static {v1, v8, v15, v13}, Landroid/icu/impl/number/LongNameHandler;->getDerivedGender(Landroid/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v4

    .line 1171
    :cond_1f7
    const-string v4, "gender"

    invoke-static {v1, v4, v7}, Landroid/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "timesGenderRule":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v32, v7

    const/4 v7, 0x1

    if-ne v13, v7, :cond_22c

    .line 1173
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v33

    packed-switch v33, :pswitch_data_3ea

    goto :goto_22b

    .line 1181
    :pswitch_20f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v7

    if-ne v12, v13, :cond_22b

    .line 1182
    nop

    .line 1183
    sget v7, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    sget v13, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v13, v15, v13

    aput-object v13, v6, v7

    goto :goto_22b

    .line 1175
    :pswitch_220
    if-nez v12, :cond_22b

    .line 1176
    nop

    .line 1177
    sget v7, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    sget v13, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v13, v15, v13

    aput-object v13, v6, v7

    .line 1183
    :cond_22b
    :goto_22b
    goto :goto_23b

    .line 1187
    :cond_22c
    sget v7, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v7, v6, v7

    if-nez v7, :cond_23b

    .line 1188
    sget v7, Landroid/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aput-object v4, v6, v7

    goto :goto_23b

    .line 1158
    .end local v31    # "singleCaseVariant":Ljava/lang/String;
    .local v4, "singleCaseVariant":Ljava/lang/String;
    :cond_237
    move-object/from16 v31, v4

    move-object/from16 v32, v7

    .line 1194
    .end local v4    # "singleCaseVariant":Ljava/lang/String;
    .restart local v31    # "singleCaseVariant":Ljava/lang/String;
    :cond_23b
    :goto_23b
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v4

    array-length v7, v4

    const/4 v13, 0x0

    :goto_241
    if-ge v13, v7, :cond_326

    aget-object v33, v4, v13

    .line 1195
    .local v33, "plural_":Landroid/icu/impl/StandardPlural;
    move-object/from16 v34, v33

    .line 1196
    .local v34, "plural":Landroid/icu/impl/StandardPlural;
    invoke-virtual/range {v34 .. v34}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v35

    .line 1199
    .local v35, "pluralIndex":I
    aget-object v36, v6, v35

    if-nez v36, :cond_26d

    .line 1200
    aget-object v36, v15, v35

    if-nez v36, :cond_262

    .line 1203
    move-object/from16 v38, v0

    move-object/from16 v36, v4

    move/from16 v34, v7

    move-object/from16 v37, v8

    const/4 v0, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_310

    .line 1208
    :cond_262
    move-object/from16 v36, v4

    move-object/from16 v4, v34

    .end local v34    # "plural":Landroid/icu/impl/StandardPlural;
    .local v4, "plural":Landroid/icu/impl/StandardPlural;
    invoke-static {v6, v4}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v35

    goto :goto_271

    .line 1199
    .end local v4    # "plural":Landroid/icu/impl/StandardPlural;
    .restart local v34    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_26d
    move-object/from16 v36, v4

    move-object/from16 v4, v34

    .line 1212
    .end local v34    # "plural":Landroid/icu/impl/StandardPlural;
    .restart local v4    # "plural":Landroid/icu/impl/StandardPlural;
    :goto_271
    if-eqz v23, :cond_279

    .line 1213
    invoke-static/range {v23 .. v23}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v34

    move-object/from16 v4, v34

    .line 1218
    :cond_279
    invoke-static {v15, v4}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/icu/impl/number/LongNameHandler;->extractCorePattern(Ljava/lang/String;)Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;

    move-result-object v6

    .line 1221
    .local v6, "r":Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    move/from16 v34, v7

    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    move-object/from16 v37, v8

    sget-object v8, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    if-eq v7, v8, :cond_31e

    .line 1226
    aget-object v7, v20, v35

    if-nez v7, :cond_297

    .line 1227
    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    aput-object v7, v20, v35

    .line 1228
    iget-char v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    move v14, v7

    .end local v14    # "globalJoinerChar":C
    .local v7, "globalJoinerChar":C
    goto :goto_298

    .line 1231
    .end local v7    # "globalJoinerChar":C
    .restart local v14    # "globalJoinerChar":C
    :cond_297
    nop

    .line 1239
    :goto_298
    sget-object v7, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v0, v7, :cond_2c0

    .line 1240
    nop

    .line 1241
    const/4 v7, 0x1

    invoke-static {v3, v9, v7, v7}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v8

    .line 1250
    .local v8, "prefixCompiled":Ljava/lang/String;
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v2, v7, :cond_2ae

    .line 1251
    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 1253
    :cond_2ae
    move-object/from16 v38, v0

    const/4 v7, 0x1

    .end local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .local v38, "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    new-array v0, v7, [Ljava/lang/CharSequence;

    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v7, v0, v17

    invoke-static {v8, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_2c2

    .line 1239
    .end local v8    # "prefixCompiled":Ljava/lang/String;
    .end local v38    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .restart local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    :cond_2c0
    move-object/from16 v38, v0

    .line 1257
    .end local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .restart local v38    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    :goto_2c2
    const/4 v7, 0x1

    if-eq v10, v7, :cond_2e9

    .line 1258
    nop

    .line 1259
    invoke-static {v5, v4}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-static {v0, v9, v7, v7}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "dimensionalityCompiled":Ljava/lang/String;
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v2, v7, :cond_2da

    .line 1269
    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 1271
    :cond_2da
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    iget-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v7, v8, v17

    .line 1272
    invoke-static {v0, v8}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 1275
    .end local v0    # "dimensionalityCompiled":Ljava/lang/String;
    :cond_2e9
    aget-object v0, p4, v35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2fb

    .line 1277
    iget-object v0, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    aput-object v0, p4, v35

    const/4 v0, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto :goto_310

    .line 1280
    :cond_2fb
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/CharSequence;

    aget-object v8, p4, v35

    const/16 v17, 0x0

    aput-object v8, v7, v17

    iget-object v8, v6, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v8, v7, v16

    invoke-static {v11, v7}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p4, v35

    .line 1194
    .end local v4    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v6    # "r":Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    .end local v33    # "plural_":Landroid/icu/impl/StandardPlural;
    .end local v35    # "pluralIndex":I
    :goto_310
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p4

    move/from16 v7, v34

    move-object/from16 v4, v36

    move-object/from16 v8, v37

    move-object/from16 v0, v38

    goto/16 :goto_241

    .line 1222
    .end local v38    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .local v0, "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .restart local v4    # "plural":Landroid/icu/impl/StandardPlural;
    .restart local v6    # "r":Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    .restart local v33    # "plural_":Landroid/icu/impl/StandardPlural;
    .restart local v35    # "pluralIndex":I
    :cond_31e
    move-object/from16 v38, v0

    .end local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .restart local v38    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1194
    .end local v4    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v6    # "r":Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    .end local v33    # "plural_":Landroid/icu/impl/StandardPlural;
    .end local v35    # "pluralIndex":I
    .end local v38    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .restart local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    :cond_326
    move-object/from16 v38, v0

    move-object/from16 v37, v8

    const/4 v0, 0x2

    const/16 v17, 0x0

    .line 1051
    .end local v0    # "prefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .end local v3    # "prefixPattern":Ljava/lang/String;
    .end local v5    # "dimensionalityPrefixPatterns":[Ljava/lang/String;
    .end local v10    # "dimensionality":I
    .end local v15    # "singleUnitArray":[Ljava/lang/String;
    .end local v23    # "singlePluralCategory":Ljava/lang/String;
    .end local v28    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .end local v29    # "gender":Ljava/lang/String;
    .end local v31    # "singleCaseVariant":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p4

    move v5, v14

    move-object/from16 v4, v21

    move-object/from16 v14, v22

    move-object/from16 v3, v24

    move-object/from16 v10, v25

    move-object/from16 v0, v26

    move-object/from16 v13, v27

    move-object/from16 v15, v30

    move-object/from16 v7, v32

    const/16 v18, 0x0

    goto/16 :goto_a7

    .line 1076
    .end local v24    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .end local v25    # "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v26    # "pluralCategory":Ljava/lang/String;
    .end local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v30    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v2, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v3, "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v4, "singleCaseVariant":Ljava/lang/String;
    .local v5, "globalJoinerChar":C
    .local v10, "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v13, "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v14, "pluralCategory":Ljava/lang/String;
    .local v15, "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v23    # "singlePluralCategory":Ljava/lang/String;
    :cond_346
    move-object/from16 v28, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v14

    move v14, v5

    .end local v2    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .end local v3    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .end local v5    # "globalJoinerChar":C
    .local v14, "globalJoinerChar":C
    .restart local v24    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .restart local v26    # "pluralCategory":Ljava/lang/String;
    .restart local v28    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported sinlgeUnit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1077
    invoke-virtual/range {v28 .. v28}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    .end local v21    # "caseVariant":Ljava/lang/String;
    .end local v22    # "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .end local v23    # "singlePluralCategory":Ljava/lang/String;
    .end local v24    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .end local v26    # "pluralCategory":Ljava/lang/String;
    .end local v28    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v0, "pluralCategory":Ljava/lang/String;
    .restart local v3    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .local v4, "caseVariant":Ljava/lang/String;
    .restart local v5    # "globalJoinerChar":C
    .local v14, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    :cond_36a
    move-object/from16 v2, p2

    move-object/from16 v25, v10

    move-object/from16 v27, v13

    move-object/from16 v22, v14

    move-object/from16 v30, v15

    const/16 v17, 0x0

    move v14, v5

    .line 1285
    .end local v5    # "globalJoinerChar":C
    .end local v10    # "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v12    # "singleUnitIndex":I
    .end local v13    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v15    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local v14, "globalJoinerChar":C
    .restart local v22    # "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .restart local v25    # "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .restart local v30    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v5

    array-length v6, v5

    move/from16 v15, v17

    :goto_37e
    if-ge v15, v6, :cond_3de

    aget-object v7, v5, v15

    .line 1286
    .local v7, "plural":Landroid/icu/impl/StandardPlural;
    invoke-virtual {v7}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v8

    .line 1287
    .local v8, "pluralIndex":I
    aget-object v10, v20, v8

    sget-object v12, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v13, "{0}"

    if-ne v10, v12, :cond_3a7

    .line 1288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .local v10, "tmp":Ljava/lang/StringBuilder;
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    if-eqz v14, :cond_39b

    .line 1291
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    :cond_39b
    aget-object v12, p4, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, p4, v8

    .end local v10    # "tmp":Ljava/lang/StringBuilder;
    goto :goto_3da

    .line 1295
    :cond_3a7
    aget-object v10, v20, v8

    sget-object v12, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    if-ne v10, v12, :cond_3da

    .line 1296
    if-eqz v14, :cond_3c4

    .line 1297
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, p4, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, p4, v8

    .line 1299
    :cond_3c4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, p4, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, p4, v8

    goto :goto_3db

    .line 1295
    :cond_3da
    :goto_3da
    nop

    .line 1285
    .end local v7    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v8    # "pluralIndex":I
    :goto_3db
    add-int/lit8 v15, v15, 0x1

    goto :goto_37e

    .line 1302
    :cond_3de
    return-void

    .line 991
    .end local v0    # "pluralCategory":Ljava/lang/String;
    .end local v3    # "simpleUnit":Landroid/icu/util/MeasureUnit;
    .end local v4    # "caseVariant":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "timesPatternFormatter":Ljava/lang/String;
    .end local v14    # "globalJoinerChar":C
    .end local v19    # "timesPattern":Ljava/lang/String;
    .end local v20    # "globalPlaceholder":[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
    .end local v22    # "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .end local v25    # "derivedTimesPlurals":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v27    # "derivedTimesCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .end local v30    # "derivedPowerCases":Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
    .local p3, "caseVariant":Ljava/lang/String;
    :cond_3df
    move-object/from16 v4, p3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Mixed units not supported by LongNameHandler"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3ea
    .packed-switch 0x30
        :pswitch_220
        :pswitch_20f
    .end packed-switch
.end method

.method private blacklist simpleFormatsToModifiers([Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;)V
    .registers 12
    .param p1, "simpleFormats"    # [Ljava/lang/String;
    .param p2, "field"    # Landroid/icu/text/NumberFormat$Field;

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1309
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StandardPlural;

    .line 1310
    .local v2, "plural":Landroid/icu/impl/StandardPlural;
    invoke-static {p1, v2}, Landroid/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Landroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v3

    .line 1311
    .local v3, "simpleFormat":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v4}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 1312
    .local v4, "compiled":Ljava/lang/String;
    new-instance v6, Landroid/icu/impl/number/Modifier$Parameters;

    invoke-direct {v6}, Landroid/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 1313
    .local v6, "parameters":Landroid/icu/impl/number/Modifier$Parameters;
    iput-object p0, v6, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    .line 1314
    const/4 v7, 0x0

    iput-object v7, v6, Landroid/icu/impl/number/Modifier$Parameters;->signum:Landroid/icu/impl/number/Modifier$Signum;

    .line 1315
    iput-object v2, v6, Landroid/icu/impl/number/Modifier$Parameters;->plural:Landroid/icu/impl/StandardPlural;

    .line 1316
    iget-object v7, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    new-instance v8, Landroid/icu/impl/number/SimpleModifier;

    invoke-direct {v8, v4, p2, v5, v6}, Landroid/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLandroid/icu/impl/number/Modifier$Parameters;)V

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .end local v2    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v3    # "simpleFormat":Ljava/lang/String;
    .end local v4    # "compiled":Ljava/lang/String;
    .end local v6    # "parameters":Landroid/icu/impl/number/Modifier$Parameters;
    goto :goto_b

    .line 1318
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;
    .registers 4
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 1379
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/Modifier;

    return-object v0
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 5
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 1354
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 1355
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v1, v2, p1}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 1356
    .local v1, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/number/Modifier;

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    .line 1357
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    .line 1358
    return-object v0
.end method

.method public blacklist processQuantityWithMicros(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/number/MicroProps;
    .registers 5
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "micros"    # Landroid/icu/impl/number/MicroProps;

    .line 1371
    iget-object v0, p2, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v1, p0, Landroid/icu/impl/number/LongNameHandler;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v0, v1, p1}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 1372
    .local v0, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v1, p0, Landroid/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/number/Modifier;

    iput-object v1, p2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    .line 1373
    return-object p2
.end method
