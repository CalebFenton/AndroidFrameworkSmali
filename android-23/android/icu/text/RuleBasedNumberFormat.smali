.class public Landroid/icu/text/RuleBasedNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# static fields
.field private static final DEBUG:Z

.field public static final DURATION:I = 0x3

.field public static final NUMBERING_SYSTEM:I = 0x4

.field public static final ORDINAL:I = 0x2

.field public static final SPELLOUT:I = 0x1

.field private static final locnames:[Ljava/lang/String;

.field private static final rulenames:[Ljava/lang/String;

.field static final serialVersionUID:J = -0x6a5ce54888ed36fcL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationForListOrMenu:Z

.field private capitalizationForStandAlone:Z

.field private capitalizationInfoIsSet:Z

.field private transient decimalFormat:Landroid/icu/text/DecimalFormat;

.field private transient decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private transient defaultRuleSet:Landroid/icu/text/NFRuleSet;

.field private lenientParse:Z

.field private transient lenientParseRules:Ljava/lang/String;

.field private locale:Landroid/icu/util/ULocale;

.field private transient lookedForScanner:Z

.field private transient postProcessRules:Ljava/lang/String;

.field private transient postProcessor:Landroid/icu/text/RBNFPostProcessor;

.field private publicRuleSetNames:[Ljava/lang/String;

.field private transient ruleSetDescriptions:[Ljava/lang/String;

.field private ruleSetDisplayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient ruleSets:[Landroid/icu/text/NFRuleSet;

.field private transient scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 633
    const-string/jumbo v0, "rbnf"

    #@8
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    #@e
    .line 815
    new-array v0, v6, [Ljava/lang/String;

    #@10
    .line 816
    const-string/jumbo v1, "SpelloutRules"

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "OrdinalRules"

    #@18
    aput-object v1, v0, v3

    #@1a
    const-string/jumbo v1, "DurationRules"

    #@1d
    aput-object v1, v0, v4

    #@1f
    const-string/jumbo v1, "NumberingSystemRules"

    #@22
    aput-object v1, v0, v5

    #@24
    .line 815
    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    #@26
    .line 818
    new-array v0, v6, [Ljava/lang/String;

    #@28
    .line 819
    const-string/jumbo v1, "SpelloutLocalizations"

    #@2b
    aput-object v1, v0, v2

    #@2d
    const-string/jumbo v1, "OrdinalLocalizations"

    #@30
    aput-object v1, v0, v3

    #@32
    const-string/jumbo v1, "DurationLocalizations"

    #@35
    aput-object v1, v0, v4

    #@37
    const-string/jumbo v1, "NumberingSystemLocalizations"

    #@3a
    aput-object v1, v0, v5

    #@3c
    .line 818
    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    #@3e
    .line 505
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 835
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@9
    .line 834
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 13
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "format"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 775
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 545
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 550
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@9
    .line 556
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 563
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 570
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@f
    .line 580
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 587
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@13
    .line 593
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    .line 627
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 628
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@19
    .line 629
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@1b
    .line 630
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@1d
    .line 776
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@1f
    .line 779
    const-string/jumbo v10, "android/icu/impl/data/icudt55b/rbnf"

    #@22
    .line 778
    invoke-static {v10, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@28
    .line 784
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@2b
    move-result-object v9

    #@2c
    .line 785
    .local v9, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v9, v9}, Landroid/icu/text/RuleBasedNumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@2f
    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    .line 788
    .local v1, "description":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@35
    .line 791
    .local v6, "localizations":[[Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v11, "RBNFRules/"

    #@3d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v10

    #@41
    sget-object v11, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    #@43
    add-int/lit8 v12, p2, -0x1

    #@45
    aget-object v11, v11, v12

    #@47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v0, v10}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@52
    move-result-object v8

    #@53
    .line 792
    .local v8, "rules":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@56
    move-result-object v5

    #@57
    .line 793
    .local v5, "it":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_0

    #@5d
    .line 794
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    goto :goto_0

    #@65
    .line 797
    .end local v5    # "it":Landroid/icu/util/UResourceBundleIterator;
    .end local v8    # "rules":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v3

    #@66
    .line 801
    :cond_0
    :try_start_1
    sget-object v10, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    #@68
    add-int/lit8 v11, p2, -0x1

    #@6a
    aget-object v10, v10, v11

    #@6c
    invoke-virtual {v0, v10}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6f
    move-result-object v7

    #@70
    .line 802
    .local v7, "locb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@73
    move-result v10

    #@74
    new-array v6, v10, [[Ljava/lang/String;

    #@76
    .line 803
    .local v6, "localizations":[[Ljava/lang/String;
    const/4 v4, 0x0

    #@77
    .local v4, "i":I
    :goto_1
    array-length v10, v6

    #@78
    if-ge v4, v10, :cond_1

    #@7a
    .line 804
    invoke-virtual {v7, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    aput-object v10, v6, v4
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@84
    .line 803
    add-int/lit8 v4, v4, 0x1

    #@86
    goto :goto_1

    #@87
    .line 807
    .end local v4    # "i":I
    .end local v6    # "localizations":[[Ljava/lang/String;
    .end local v7    # "locb":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v2

    #@88
    .line 811
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v10

    #@8c
    invoke-direct {p0, v10, v6}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@8f
    .line 775
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 648
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 545
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 550
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@9
    .line 556
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 563
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 570
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@f
    .line 580
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 587
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@13
    .line 593
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    .line 627
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 628
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@19
    .line 629
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@1b
    .line 630
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@1d
    .line 649
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1f
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@25
    .line 650
    invoke-direct {p0, p1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@28
    .line 648
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 710
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 545
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 550
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@9
    .line 556
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 563
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 570
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@f
    .line 580
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 587
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@13
    .line 593
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    .line 627
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 628
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@19
    .line 629
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@1b
    .line 630
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@1d
    .line 711
    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@1f
    .line 712
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@22
    .line 710
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 694
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@7
    .line 693
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 675
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 545
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 550
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@9
    .line 556
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 563
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 570
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@f
    .line 580
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 587
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@13
    .line 593
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    .line 627
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 628
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@19
    .line 629
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@1b
    .line 630
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@1d
    .line 676
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1f
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@25
    .line 677
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@28
    .line 675
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 740
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 545
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 550
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@9
    .line 556
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 563
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 570
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@f
    .line 580
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 587
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@13
    .line 593
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    .line 627
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 628
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@19
    .line 629
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@1b
    .line 630
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@1d
    .line 741
    iput-object p3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@1f
    .line 742
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@22
    .line 740
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # I

    #@0
    .prologue
    .line 758
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@7
    .line 757
    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1893
    if-eqz p1, :cond_3

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_3

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 1894
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@15
    invoke-virtual {p0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@18
    move-result-object v0

    #@19
    .line 1895
    .local v0, "capitalization":Landroid/icu/text/DisplayContext;
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 1896
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@1f
    if-ne v0, v1, :cond_0

    #@21
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@23
    .line 1895
    if-nez v1, :cond_1

    #@25
    .line 1897
    :cond_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@27
    if-ne v0, v1, :cond_3

    #@29
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@2b
    .line 1895
    if-eqz v1, :cond_3

    #@2d
    .line 1898
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 1900
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@33
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@39
    .line 1902
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@3b
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@3d
    .line 1903
    const/16 v3, 0x300

    #@3f
    .line 1902
    invoke-static {v1, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1

    #@44
    .line 1906
    .end local v0    # "capitalization":Landroid/icu/text/DisplayContext;
    :cond_3
    return-object p1
.end method

.method private extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "specialName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 1522
    const/4 v3, 0x0

    #@2
    .line 1523
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 1524
    .local v0, "lp":I
    if-eq v0, v6, :cond_3

    #@8
    .line 1528
    if-eqz v0, :cond_0

    #@a
    add-int/lit8 v4, v0, -0x1

    #@c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    #@f
    move-result v4

    #@10
    const/16 v5, 0x3b

    #@12
    if-ne v4, v5, :cond_3

    #@14
    .line 1532
    :cond_0
    const-string/jumbo v4, ";%"

    #@17
    invoke-virtual {p1, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 1534
    .local v1, "lpEnd":I
    if-ne v1, v6, :cond_1

    #@1d
    .line 1535
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v1, v4, -0x1

    #@23
    .line 1537
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@26
    move-result v4

    #@27
    add-int v2, v0, v4

    #@29
    .line 1538
    .local v2, "lpStart":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@2b
    .line 1539
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@2e
    move-result v4

    #@2f
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@32
    move-result v4

    #@33
    .line 1538
    if-eqz v4, :cond_2

    #@35
    .line 1540
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1544
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 1547
    .local v3, "result":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@3e
    invoke-virtual {p1, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@41
    .line 1550
    .end local v1    # "lpEnd":I
    .end local v2    # "lpStart":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    .line 1828
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1829
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;I)V

    #@9
    .line 1830
    invoke-direct {p0, v0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@c
    .line 1831
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    .line 1853
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1854
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V

    #@9
    .line 1855
    invoke-direct {p0, v0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@c
    .line 1856
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 7
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 996
    if-eqz p1, :cond_2

    #@4
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@6
    if-eqz v4, :cond_2

    #@8
    .line 997
    const/4 v4, 0x2

    #@9
    new-array v2, v4, [Ljava/lang/String;

    #@b
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    aput-object v4, v2, v5

    #@11
    sget-object v4, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@13
    invoke-static {v4}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v2, v5

    #@1e
    .line 998
    .local v2, "localeNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@20
    if-ge v0, v4, :cond_2

    #@22
    .line 999
    aget-object v1, v2, v0

    #@24
    .line 1000
    .local v1, "lname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    if-lez v4, :cond_1

    #@2a
    .line 1001
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@2c
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, [Ljava/lang/String;

    #@32
    .line 1002
    .local v3, "names":[Ljava/lang/String;
    if-eqz v3, :cond_0

    #@34
    .line 1003
    return-object v3

    #@35
    .line 1005
    :cond_0
    invoke-static {v1}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    goto :goto_1

    #@3a
    .line 998
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1009
    .end local v0    # "i":I
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "localeNames":[Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 20
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 1562
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    #@7
    .line 1569
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v6

    #@b
    .line 1576
    .local v6, "descBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v17, "%%lenient-parse:"

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v17

    #@12
    invoke-direct {v0, v6, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v17

    #@16
    move-object/from16 v0, v17

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    #@1c
    .line 1577
    const-string/jumbo v17, "%%post-process:"

    #@1f
    move-object/from16 v0, p0

    #@21
    move-object/from16 v1, v17

    #@23
    invoke-direct {v0, v6, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v17

    #@27
    move-object/from16 v0, v17

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@2d
    .line 1582
    const/4 v11, 0x0

    #@2e
    .line 1583
    .local v11, "numRuleSets":I
    const-string/jumbo v17, ";%"

    #@31
    move-object/from16 v0, v17

    #@33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@36
    move-result v12

    #@37
    .local v12, "p":I
    :goto_0
    const/16 v17, -0x1

    #@39
    move/from16 v0, v17

    #@3b
    if-eq v12, v0, :cond_0

    #@3d
    .line 1584
    add-int/lit8 v11, v11, 0x1

    #@3f
    .line 1585
    add-int/lit8 v12, v12, 0x1

    #@41
    .line 1583
    const-string/jumbo v17, ";%"

    #@44
    move-object/from16 v0, v17

    #@46
    invoke-virtual {v6, v0, v12}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@49
    move-result v12

    #@4a
    goto :goto_0

    #@4b
    .line 1587
    :cond_0
    add-int/lit8 v11, v11, 0x1

    #@4d
    .line 1590
    new-array v0, v11, [Landroid/icu/text/NFRuleSet;

    #@4f
    move-object/from16 v17, v0

    #@51
    move-object/from16 v0, v17

    #@53
    move-object/from16 v1, p0

    #@55
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@57
    .line 1599
    new-array v0, v11, [Ljava/lang/String;

    #@59
    move-object/from16 v17, v0

    #@5b
    move-object/from16 v0, v17

    #@5d
    move-object/from16 v1, p0

    #@5f
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@61
    .line 1601
    const/4 v3, 0x0

    #@62
    .line 1602
    .local v3, "curRuleSet":I
    const/16 v16, 0x0

    #@64
    .line 1603
    .local v16, "start":I
    const-string/jumbo v17, ";%"

    #@67
    move-object/from16 v0, v17

    #@69
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@6c
    move-result v12

    #@6d
    :goto_1
    const/16 v17, -0x1

    #@6f
    move/from16 v0, v17

    #@71
    if-eq v12, v0, :cond_1

    #@73
    .line 1604
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@77
    move-object/from16 v17, v0

    #@79
    add-int/lit8 v18, v12, 0x1

    #@7b
    move/from16 v0, v16

    #@7d
    move/from16 v1, v18

    #@7f
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@82
    move-result-object v18

    #@83
    aput-object v18, v17, v3

    #@85
    .line 1605
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@89
    move-object/from16 v17, v0

    #@8b
    new-instance v18, Landroid/icu/text/NFRuleSet;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@91
    move-object/from16 v19, v0

    #@93
    move-object/from16 v0, v18

    #@95
    move-object/from16 v1, v19

    #@97
    invoke-direct {v0, v1, v3}, Landroid/icu/text/NFRuleSet;-><init>([Ljava/lang/String;I)V

    #@9a
    aput-object v18, v17, v3

    #@9c
    .line 1606
    add-int/lit8 v3, v3, 0x1

    #@9e
    .line 1607
    add-int/lit8 v16, v12, 0x1

    #@a0
    .line 1603
    const-string/jumbo v17, ";%"

    #@a3
    move-object/from16 v0, v17

    #@a5
    move/from16 v1, v16

    #@a7
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@aa
    move-result v12

    #@ab
    goto :goto_1

    #@ac
    .line 1609
    :cond_1
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@b0
    move-object/from16 v17, v0

    #@b2
    move/from16 v0, v16

    #@b4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@b7
    move-result-object v18

    #@b8
    aput-object v18, v17, v3

    #@ba
    .line 1610
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@be
    move-object/from16 v17, v0

    #@c0
    new-instance v18, Landroid/icu/text/NFRuleSet;

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@c6
    move-object/from16 v19, v0

    #@c8
    move-object/from16 v0, v18

    #@ca
    move-object/from16 v1, v19

    #@cc
    invoke-direct {v0, v1, v3}, Landroid/icu/text/NFRuleSet;-><init>([Ljava/lang/String;I)V

    #@cf
    aput-object v18, v17, v3

    #@d1
    .line 1625
    const/4 v5, 0x0

    #@d2
    .line 1626
    .local v5, "defaultNameFound":Z
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, v17

    #@da
    array-length v9, v0

    #@db
    .line 1627
    .local v9, "n":I
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@df
    move-object/from16 v17, v0

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@e5
    move-object/from16 v18, v0

    #@e7
    move-object/from16 v0, v18

    #@e9
    array-length v0, v0

    #@ea
    move/from16 v18, v0

    #@ec
    add-int/lit8 v18, v18, -0x1

    #@ee
    aget-object v17, v17, v18

    #@f0
    move-object/from16 v0, v17

    #@f2
    move-object/from16 v1, p0

    #@f4
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@f6
    .line 1629
    :cond_2
    add-int/lit8 v9, v9, -0x1

    #@f8
    if-ltz v9, :cond_4

    #@fa
    .line 1630
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@fe
    move-object/from16 v17, v0

    #@100
    aget-object v17, v17, v9

    #@102
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    .line 1631
    .local v4, "currentName":Ljava/lang/String;
    const-string/jumbo v17, "%spellout-numbering"

    #@109
    move-object/from16 v0, v17

    #@10b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v17

    #@10f
    if-nez v17, :cond_3

    #@111
    const-string/jumbo v17, "%digits-ordinal"

    #@114
    move-object/from16 v0, v17

    #@116
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v17

    #@11a
    if-nez v17, :cond_3

    #@11c
    const-string/jumbo v17, "%duration"

    #@11f
    move-object/from16 v0, v17

    #@121
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v17

    #@125
    if-eqz v17, :cond_2

    #@127
    .line 1632
    :cond_3
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@12b
    move-object/from16 v17, v0

    #@12d
    aget-object v17, v17, v9

    #@12f
    move-object/from16 v0, v17

    #@131
    move-object/from16 v1, p0

    #@133
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@135
    .line 1633
    const/4 v5, 0x1

    #@136
    .line 1638
    .end local v4    # "currentName":Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_5

    #@138
    .line 1639
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@13c
    move-object/from16 v17, v0

    #@13e
    move-object/from16 v0, v17

    #@140
    array-length v0, v0

    #@141
    move/from16 v17, v0

    #@143
    add-int/lit8 v7, v17, -0x1

    #@145
    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_5

    #@147
    .line 1640
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@14b
    move-object/from16 v17, v0

    #@14d
    aget-object v17, v17, v7

    #@14f
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@152
    move-result-object v17

    #@153
    const-string/jumbo v18, "%%"

    #@156
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@159
    move-result v17

    #@15a
    if-nez v17, :cond_6

    #@15c
    .line 1641
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@160
    move-object/from16 v17, v0

    #@162
    aget-object v17, v17, v7

    #@164
    move-object/from16 v0, v17

    #@166
    move-object/from16 v1, p0

    #@168
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@16a
    .line 1649
    .end local v7    # "i":I
    :cond_5
    const/4 v7, 0x0

    #@16b
    .restart local v7    # "i":I
    :goto_3
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@16f
    move-object/from16 v17, v0

    #@171
    move-object/from16 v0, v17

    #@173
    array-length v0, v0

    #@174
    move/from16 v17, v0

    #@176
    move/from16 v0, v17

    #@178
    if-ge v7, v0, :cond_7

    #@17a
    .line 1650
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@17e
    move-object/from16 v17, v0

    #@180
    aget-object v17, v17, v7

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@186
    move-object/from16 v18, v0

    #@188
    aget-object v18, v18, v7

    #@18a
    move-object/from16 v0, v17

    #@18c
    move-object/from16 v1, v18

    #@18e
    move-object/from16 v2, p0

    #@190
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;Landroid/icu/text/RuleBasedNumberFormat;)V

    #@193
    .line 1649
    add-int/lit8 v7, v7, 0x1

    #@195
    goto :goto_3

    #@196
    .line 1639
    :cond_6
    add-int/lit8 v7, v7, -0x1

    #@198
    goto :goto_2

    #@199
    .line 1658
    :cond_7
    const/4 v13, 0x0

    #@19a
    .line 1659
    .local v13, "publicRuleSetCount":I
    const/4 v7, 0x0

    #@19b
    :goto_4
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@19f
    move-object/from16 v17, v0

    #@1a1
    move-object/from16 v0, v17

    #@1a3
    array-length v0, v0

    #@1a4
    move/from16 v17, v0

    #@1a6
    move/from16 v0, v17

    #@1a8
    if-ge v7, v0, :cond_9

    #@1aa
    .line 1660
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1ae
    move-object/from16 v17, v0

    #@1b0
    aget-object v17, v17, v7

    #@1b2
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@1b5
    move-result-object v17

    #@1b6
    const-string/jumbo v18, "%%"

    #@1b9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1bc
    move-result v17

    #@1bd
    if-nez v17, :cond_8

    #@1bf
    .line 1661
    add-int/lit8 v13, v13, 0x1

    #@1c1
    .line 1659
    :cond_8
    add-int/lit8 v7, v7, 0x1

    #@1c3
    goto :goto_4

    #@1c4
    .line 1666
    :cond_9
    new-array v15, v13, [Ljava/lang/String;

    #@1c6
    .line 1667
    .local v15, "publicRuleSetTemp":[Ljava/lang/String;
    const/4 v13, 0x0

    #@1c7
    .line 1668
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1cb
    move-object/from16 v17, v0

    #@1cd
    move-object/from16 v0, v17

    #@1cf
    array-length v0, v0

    #@1d0
    move/from16 v17, v0

    #@1d2
    add-int/lit8 v7, v17, -0x1

    #@1d4
    move v14, v13

    #@1d5
    .end local v13    # "publicRuleSetCount":I
    .local v14, "publicRuleSetCount":I
    :goto_5
    if-ltz v7, :cond_a

    #@1d7
    .line 1669
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1db
    move-object/from16 v17, v0

    #@1dd
    aget-object v17, v17, v7

    #@1df
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@1e2
    move-result-object v17

    #@1e3
    const-string/jumbo v18, "%%"

    #@1e6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e9
    move-result v17

    #@1ea
    if-nez v17, :cond_f

    #@1ec
    .line 1670
    add-int/lit8 v13, v14, 0x1

    #@1ee
    .end local v14    # "publicRuleSetCount":I
    .restart local v13    # "publicRuleSetCount":I
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1f2
    move-object/from16 v17, v0

    #@1f4
    aget-object v17, v17, v7

    #@1f6
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@1f9
    move-result-object v17

    #@1fa
    aput-object v17, v15, v14

    #@1fc
    .line 1668
    :goto_6
    add-int/lit8 v7, v7, -0x1

    #@1fe
    move v14, v13

    #@1ff
    .end local v13    # "publicRuleSetCount":I
    .restart local v14    # "publicRuleSetCount":I
    goto :goto_5

    #@200
    .line 1674
    :cond_a
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@204
    move-object/from16 v17, v0

    #@206
    if-eqz v17, :cond_e

    #@208
    .line 1677
    const/4 v7, 0x0

    #@209
    :goto_7
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@20d
    move-object/from16 v17, v0

    #@20f
    move-object/from16 v0, v17

    #@211
    array-length v0, v0

    #@212
    move/from16 v17, v0

    #@214
    move/from16 v0, v17

    #@216
    if-ge v7, v0, :cond_d

    #@218
    .line 1678
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@21c
    move-object/from16 v17, v0

    #@21e
    aget-object v10, v17, v7

    #@220
    .line 1679
    .local v10, "name":Ljava/lang/String;
    const/4 v8, 0x0

    #@221
    .local v8, "j":I
    :goto_8
    array-length v0, v15

    #@222
    move/from16 v17, v0

    #@224
    move/from16 v0, v17

    #@226
    if-ge v8, v0, :cond_c

    #@228
    .line 1680
    aget-object v17, v15, v8

    #@22a
    move-object/from16 v0, v17

    #@22c
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22f
    move-result v17

    #@230
    if-eqz v17, :cond_b

    #@232
    .line 1677
    add-int/lit8 v7, v7, 0x1

    #@234
    goto :goto_7

    #@235
    .line 1679
    :cond_b
    add-int/lit8 v8, v8, 0x1

    #@237
    goto :goto_8

    #@238
    .line 1684
    :cond_c
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@23a
    new-instance v18, Ljava/lang/StringBuilder;

    #@23c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@23f
    const-string/jumbo v19, "did not find public rule set: "

    #@242
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v18

    #@246
    move-object/from16 v0, v18

    #@248
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v18

    #@24c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24f
    move-result-object v18

    #@250
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@253
    throw v17

    #@254
    .line 1687
    .end local v8    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@256
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@258
    move-object/from16 v17, v0

    #@25a
    const/16 v18, 0x0

    #@25c
    aget-object v17, v17, v18

    #@25e
    move-object/from16 v0, p0

    #@260
    move-object/from16 v1, v17

    #@262
    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@265
    move-result-object v17

    #@266
    move-object/from16 v0, v17

    #@268
    move-object/from16 v1, p0

    #@26a
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@26c
    .line 1561
    :goto_9
    return-void

    #@26d
    .line 1689
    :cond_e
    move-object/from16 v0, p0

    #@26f
    iput-object v15, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@271
    goto :goto_9

    #@272
    :cond_f
    move v13, v14

    #@273
    .end local v14    # "publicRuleSetCount":I
    .restart local v13    # "publicRuleSetCount":I
    goto :goto_6
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "theLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1724
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@5
    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 1726
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    const-string/jumbo v6, "contextTransforms/number-spellout"

    #@e
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@11
    move-result-object v3

    #@12
    .line 1727
    .local v3, "rdb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    #@15
    move-result-object v1

    #@16
    .line 1728
    .local v1, "intVector":[I
    array-length v6, v1

    #@17
    const/4 v7, 0x2

    #@18
    if-lt v6, v7, :cond_0

    #@1a
    .line 1729
    const/4 v6, 0x0

    #@1b
    aget v6, v1, v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    move v6, v4

    #@20
    :goto_0
    iput-boolean v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@22
    .line 1730
    const/4 v6, 0x1

    #@23
    aget v6, v1, v6

    #@25
    if-eqz v6, :cond_2

    #@27
    :goto_1
    iput-boolean v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1723
    .end local v1    # "intVector":[I
    .end local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    :goto_2
    return-void

    #@2a
    .restart local v1    # "intVector":[I
    .restart local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    move v6, v5

    #@2b
    .line 1729
    goto :goto_0

    #@2c
    :cond_2
    move v4, v5

    #@2d
    .line 1730
    goto :goto_1

    #@2e
    .line 1732
    .end local v1    # "intVector":[I
    .end local v3    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_2
.end method

.method private initLocalizations([[Ljava/lang/String;)V
    .locals 8
    .param p1, "localizations"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1698
    if-eqz p1, :cond_2

    #@3
    .line 1699
    aget-object v5, p1, v7

    #@5
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v5

    #@9
    check-cast v5, [Ljava/lang/String;

    #@b
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@d
    .line 1701
    new-instance v3, Ljava/util/HashMap;

    #@f
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@12
    .line 1702
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v1, 0x1

    #@13
    .local v1, "i":I
    :goto_0
    array-length v5, p1

    #@14
    if-ge v1, v5, :cond_1

    #@16
    .line 1703
    aget-object v0, p1, v1

    #@18
    .line 1704
    .local v0, "data":[Ljava/lang/String;
    aget-object v2, v0, v7

    #@1a
    .line 1705
    .local v2, "loc":Ljava/lang/String;
    array-length v5, v0

    #@1b
    add-int/lit8 v5, v5, -0x1

    #@1d
    new-array v4, v5, [Ljava/lang/String;

    #@1f
    .line 1706
    .local v4, "names":[Ljava/lang/String;
    array-length v5, v4

    #@20
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@22
    array-length v6, v6

    #@23
    if-eq v5, v6, :cond_0

    #@25
    .line 1707
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "public name length: "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    iget-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@35
    array-length v7, v7

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 1708
    const-string/jumbo v7, " != localized names["

    #@3d
    .line 1707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 1708
    const-string/jumbo v7, "] length: "

    #@48
    .line 1707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 1708
    array-length v7, v4

    #@4d
    .line 1707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v5

    #@59
    .line 1710
    :cond_0
    array-length v5, v4

    #@5a
    const/4 v6, 0x1

    #@5b
    invoke-static {v0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5e
    .line 1711
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 1702
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1714
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "loc":Ljava/lang/String;
    .end local v4    # "names":[Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@67
    move-result v5

    #@68
    if-nez v5, :cond_2

    #@6a
    .line 1715
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@6c
    .line 1697
    .end local v1    # "i":I
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1863
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@3
    if-eqz v4, :cond_2

    #@5
    .line 1864
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 1865
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@b
    const-string/jumbo v5, ";"

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 1866
    .local v2, "ix":I
    const/4 v4, -0x1

    #@13
    if-ne v2, v4, :cond_0

    #@15
    .line 1867
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1a
    move-result v2

    #@1b
    .line 1869
    :cond_0
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 1871
    .local v3, "ppClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@29
    move-result-object v0

    #@2a
    .line 1872
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Landroid/icu/text/RBNFPostProcessor;

    #@30
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@32
    .line 1873
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@34
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@36
    invoke-interface {v4, p0, v5}, Landroid/icu/text/RBNFPostProcessor;->init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1885
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ix":I
    .end local v3    # "ppClassName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@3b
    invoke-interface {v4, p1, p2}, Landroid/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@3e
    .line 1862
    :cond_2
    return-void

    #@3f
    .line 1875
    .restart local v2    # "ix":I
    .restart local v3    # "ppClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@40
    .line 1877
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    #@42
    if-eqz v4, :cond_3

    #@44
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "could not locate "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    const-string/jumbo v6, ", error "

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 1878
    invoke-virtual {v1}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 1877
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 1878
    const-string/jumbo v6, ", "

    #@6c
    .line 1877
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 1878
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    .line 1877
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 1879
    :cond_3
    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@81
    .line 1880
    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@83
    .line 1881
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 939
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 943
    .local v0, "description":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 952
    .local v2, "loc":Landroid/icu/util/ULocale;
    :goto_0
    new-instance v3, Landroid/icu/text/RuleBasedNumberFormat;

    #@c
    invoke-direct {v3, v0, v2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@f
    .line 953
    .local v3, "temp":Landroid/icu/text/RuleBasedNumberFormat;
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@11
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@13
    .line 954
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@15
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@17
    .line 955
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@19
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@1b
    .line 956
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1d
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1f
    .line 957
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@21
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@23
    .line 958
    iget-object v4, v3, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@25
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@27
    .line 936
    return-void

    #@28
    .line 944
    .end local v2    # "loc":Landroid/icu/util/ULocale;
    .end local v3    # "temp":Landroid/icu/text/RuleBasedNumberFormat;
    :catch_0
    move-exception v1

    #@29
    .line 945
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2b
    invoke-static {v4}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@2e
    move-result-object v2

    #@2f
    .restart local v2    # "loc":Landroid/icu/util/ULocale;
    goto :goto_0
.end method

.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x3b

    #@2
    .line 1747
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1748
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 1751
    .local v0, "descriptionLength":I
    const/4 v3, 0x0

    #@c
    .line 1752
    .local v3, "start":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@e
    .line 1754
    :goto_1
    if-ge v3, v0, :cond_0

    #@10
    .line 1755
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v4

    #@14
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@17
    move-result v4

    #@18
    .line 1754
    if-eqz v4, :cond_0

    #@1a
    .line 1757
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 1761
    :cond_0
    if-ge v3, v0, :cond_1

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v4

    #@23
    if-ne v4, v5, :cond_1

    #@25
    .line 1762
    add-int/lit8 v3, v3, 0x1

    #@27
    .line 1763
    goto :goto_0

    #@28
    .line 1768
    :cond_1
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@2b
    move-result v1

    #@2c
    .line 1769
    .local v1, "p":I
    const/4 v4, -0x1

    #@2d
    if-ne v1, v4, :cond_3

    #@2f
    .line 1772
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1787
    .end local v1    # "p":I
    :cond_2
    return-object v2

    #@37
    .line 1775
    .restart local v1    # "p":I
    :cond_3
    if-ge v1, v0, :cond_2

    #@39
    .line 1776
    add-int/lit8 v4, v1, 0x1

    #@3b
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 1777
    add-int/lit8 v3, v1, 0x1

    #@44
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7
    .line 928
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 924
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 848
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;
    .locals 3
    .param p1, "pluralType"    # Landroid/icu/text/PluralRules$PluralType;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1503
    new-instance v0, Landroid/icu/text/PluralFormat;

    #@2
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@4
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, p1, p2, v2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 863
    instance-of v2, p1, Landroid/icu/text/RuleBasedNumberFormat;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 864
    return v4

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 868
    check-cast v1, Landroid/icu/text/RuleBasedNumberFormat;

    #@9
    .line 871
    .local v1, "that2":Landroid/icu/text/RuleBasedNumberFormat;
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@b
    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@15
    iget-boolean v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@17
    if-eq v2, v3, :cond_2

    #@19
    .line 872
    :cond_1
    return v4

    #@1a
    .line 876
    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1c
    array-length v2, v2

    #@1d
    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1f
    array-length v3, v3

    #@20
    if-eq v2, v3, :cond_3

    #@22
    .line 877
    return v4

    #@23
    .line 879
    :cond_3
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@26
    array-length v2, v2

    #@27
    if-ge v0, v2, :cond_5

    #@29
    .line 880
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@2b
    aget-object v2, v2, v0

    #@2d
    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@2f
    aget-object v3, v3, v0

    #@31
    invoke-virtual {v2, v3}, Landroid/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_4

    #@37
    .line 881
    return v4

    #@38
    .line 879
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 885
    :cond_5
    const/4 v2, 0x1

    #@3c
    return v2
.end method

.method findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1916
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 1917
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1918
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@16
    aget-object v1, v1, v0

    #@18
    return-object v1

    #@19
    .line 1916
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1921
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "No rule set named "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1
.end method

.method public format(DLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D
    .param p3, "ruleSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1088
    const-string/jumbo v0, "%%"

    #@3
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Can\'t use internal rule set"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1091
    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public format(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J
    .param p3, "ruleSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    const-string/jumbo v0, "%%"

    #@3
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Can\'t use internal rule set"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1110
    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "ignore"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1129
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1130
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@8
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 1135
    :goto_0
    return-object p3

    #@14
    .line 1133
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@16
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "ignore"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1157
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1158
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@8
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 1163
    :goto_0
    return-object p3

    #@14
    .line 1161
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@16
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    goto :goto_0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1200
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1187
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    #@5
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1175
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@5
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getDecimalFormat()Landroid/icu/text/DecimalFormat;
    .locals 2

    #@0
    .prologue
    .line 1492
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1493
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@6
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@c
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@e
    .line 1495
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1496
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@14
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@19
    .line 1499
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@1b
    return-object v0
.end method

.method getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    #@0
    .prologue
    .line 1485
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1486
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@b
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@d
    .line 1488
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@f
    return-object v0
.end method

.method getDefaultRuleSet()Landroid/icu/text/NFRuleSet;
    .locals 1

    #@0
    .prologue
    .line 1455
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@2
    return-object v0
.end method

.method public getDefaultRuleSetName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1392
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@6
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1393
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@e
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 1395
    :cond_0
    const-string/jumbo v0, ""

    #@16
    return-object v0
.end method

.method getLenientScanner()Landroid/icu/text/RbnfLenientScanner;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1465
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1466
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;

    #@8
    move-result-object v0

    #@9
    .line 1467
    .local v0, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    if-eqz v0, :cond_0

    #@b
    .line 1468
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    #@f
    invoke-interface {v0, v1, v2}, Landroid/icu/text/RbnfLenientScannerProvider;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 1471
    .end local v0    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    :cond_0
    return-object v2
.end method

.method public getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;
    .locals 4

    #@0
    .prologue
    .line 1331
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@2
    if-nez v3, :cond_0

    #@4
    iget-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 1343
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@e
    return-object v3

    #@f
    .line 1333
    :cond_1
    const/4 v3, 0x1

    #@10
    :try_start_0
    iput-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    #@12
    .line 1334
    const-string/jumbo v3, "android.icu.impl.text.RbnfScannerProviderImpl"

    #@15
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    .line 1335
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/icu/text/RbnfLenientScannerProvider;

    #@1f
    .line 1336
    .local v2, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    invoke-virtual {p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 1338
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ruleSetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1076
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 6
    .param p1, "ruleSetName"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1055
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@2
    .line 1056
    .local v2, "rsnames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .local v0, "ix":I
    :goto_0
    array-length v3, v2

    #@4
    if-ge v0, v3, :cond_2

    #@6
    .line 1057
    aget-object v3, v2, v0

    #@8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1058
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1059
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@14
    .line 1060
    aget-object v3, v1, v0

    #@16
    return-object v3

    #@17
    .line 1062
    :cond_0
    aget-object v3, v2, v0

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 1056
    .end local v1    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1065
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "unrecognized rule set name: "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3
.end method

.method public getRuleSetDisplayNameLocales()[Landroid/icu/util/ULocale;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 982
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 983
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@7
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    .line 984
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@e
    move-result v4

    #@f
    new-array v4, v4, [Ljava/lang/String;

    #@11
    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, [Ljava/lang/String;

    #@17
    .line 985
    .local v1, "locales":[Ljava/lang/String;
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@19
    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1c
    .line 986
    array-length v4, v1

    #@1d
    new-array v2, v4, [Landroid/icu/util/ULocale;

    #@1f
    .line 987
    .local v2, "result":[Landroid/icu/util/ULocale;
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    array-length v4, v1

    #@21
    if-ge v0, v4, :cond_0

    #@23
    .line 988
    new-instance v4, Landroid/icu/util/ULocale;

    #@25
    aget-object v5, v1, v0

    #@27
    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@2a
    aput-object v4, v2, v0

    #@2c
    .line 987
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 990
    :cond_0
    return-object v2

    #@30
    .line 992
    .end local v0    # "i":I
    .end local v1    # "locales":[Ljava/lang/String;
    .end local v2    # "result":[Landroid/icu/util/ULocale;
    .end local v3    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v5
.end method

.method public getRuleSetDisplayNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1042
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 4
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1023
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1024
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1025
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, [Ljava/lang/String;

    #@c
    return-object v2

    #@d
    .line 1027
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1028
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 1029
    aget-object v2, v1, v0

    #@17
    const/4 v3, 0x1

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v0

    #@1e
    .line 1028
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1031
    :cond_1
    return-object v1
.end method

.method public getRuleSetNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 897
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public lenientParseEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1303
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1225
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@4
    move-result v6

    #@5
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 1226
    .local v5, "workingText":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    #@b
    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    #@e
    .line 1227
    .local v4, "workingPos":Ljava/text/ParsePosition;
    const/4 v3, 0x0

    #@f
    .line 1231
    .local v3, "tempResult":Ljava/lang/Number;
    const-wide/16 v6, 0x0

    #@11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v2

    #@15
    .line 1232
    .local v2, "result":Ljava/lang/Number;
    new-instance v0, Ljava/text/ParsePosition;

    #@17
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@1a
    move-result v6

    #@1b
    invoke-direct {v0, v6}, Ljava/text/ParsePosition;-><init>(I)V

    #@1e
    .line 1238
    .local v0, "highWaterMark":Ljava/text/ParsePosition;
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@20
    array-length v6, v6

    #@21
    add-int/lit8 v1, v6, -0x1

    #@23
    .end local v3    # "tempResult":Ljava/lang/Number;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@25
    .line 1240
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@27
    aget-object v6, v6, v1

    #@29
    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_3

    #@2f
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@31
    aget-object v6, v6, v1

    #@33
    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isParseable()Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_3

    #@39
    .line 1246
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@3b
    aget-object v6, v6, v1

    #@3d
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@42
    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@45
    move-result-object v3

    #@46
    .line 1247
    .local v3, "tempResult":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@49
    move-result v6

    #@4a
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@4d
    move-result v7

    #@4e
    if-le v6, v7, :cond_0

    #@50
    .line 1248
    move-object v2, v3

    #@51
    .line 1249
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@54
    move-result v6

    #@55
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@58
    .line 1258
    :cond_0
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@5b
    move-result v6

    #@5c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5f
    move-result v7

    #@60
    if-ne v6, v7, :cond_2

    #@62
    .line 1269
    .end local v3    # "tempResult":Ljava/lang/Number;
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@65
    move-result v6

    #@66
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@69
    move-result v7

    #@6a
    add-int/2addr v6, v7

    #@6b
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6e
    .line 1274
    return-object v2

    #@6f
    .line 1264
    .restart local v3    # "tempResult":Ljava/lang/Number;
    :cond_2
    invoke-virtual {v4, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@72
    .line 1238
    .end local v3    # "tempResult":Ljava/lang/Number;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@74
    goto :goto_0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 1431
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@3
    .line 1432
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1433
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@9
    if-eq p1, v0, :cond_0

    #@b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 1434
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@11
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    #@14
    .line 1435
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 1437
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@19
    if-nez v0, :cond_4

    #@1b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@1d
    if-eq p1, v0, :cond_3

    #@1f
    .line 1438
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@21
    if-ne p1, v0, :cond_2

    #@23
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@25
    .line 1437
    if-nez v0, :cond_3

    #@27
    .line 1439
    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@29
    if-ne p1, v0, :cond_4

    #@2b
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@2d
    .line 1437
    if-eqz v0, :cond_4

    #@2f
    .line 1440
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@31
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@37
    .line 1430
    :cond_4
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 3
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 1407
    if-eqz p1, :cond_1

    #@2
    .line 1408
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    #@8
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@a
    .line 1409
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1410
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@10
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@12
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@15
    .line 1414
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@18
    array-length v1, v1

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 1415
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1d
    aget-object v1, v1, v0

    #@1f
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDescriptions:[Ljava/lang/String;

    #@21
    aget-object v2, v2, v0

    #@23
    invoke-virtual {v1, v2, p0}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;Landroid/icu/text/RuleBasedNumberFormat;)V

    #@26
    .line 1414
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1406
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setDefaultRuleSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "ruleSetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1354
    if-nez p1, :cond_6

    #@4
    .line 1355
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@6
    array-length v2, v2

    #@7
    if-lez v2, :cond_1

    #@9
    .line 1356
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@b
    aget-object v2, v2, v3

    #@d
    invoke-virtual {p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@13
    .line 1353
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1358
    :cond_1
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@16
    .line 1359
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@18
    array-length v1, v2

    #@19
    .line 1360
    .local v1, "n":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1b
    if-ltz v1, :cond_4

    #@1d
    .line 1361
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1f
    aget-object v2, v2, v1

    #@21
    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 1362
    .local v0, "currentName":Ljava/lang/String;
    const-string/jumbo v2, "%spellout-numbering"

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_3

    #@2e
    .line 1363
    const-string/jumbo v2, "%digits-ordinal"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 1362
    if-nez v2, :cond_3

    #@37
    .line 1364
    const-string/jumbo v2, "%duration"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 1362
    if-eqz v2, :cond_2

    #@40
    .line 1366
    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@42
    aget-object v2, v2, v1

    #@44
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@46
    .line 1367
    return-void

    #@47
    .line 1371
    .end local v0    # "currentName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@49
    array-length v1, v2

    #@4a
    .line 1372
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@4c
    if-ltz v1, :cond_0

    #@4e
    .line 1373
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@50
    aget-object v2, v2, v1

    #@52
    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_5

    #@58
    .line 1374
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@5a
    aget-object v2, v2, v1

    #@5c
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@5e
    goto :goto_0

    #@5f
    .line 1379
    .end local v1    # "n":I
    :cond_6
    const-string/jumbo v2, "%%"

    #@62
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_7

    #@68
    .line 1380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6a
    new-instance v3, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v4, "cannot use private rule set: "

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@81
    throw v2

    #@82
    .line 1382
    :cond_7
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@85
    move-result-object v2

    #@86
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@88
    goto :goto_0
.end method

.method public setLenientParseMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1292
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@2
    .line 1291
    return-void
.end method

.method public setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    .locals 0
    .param p1, "scannerProvider"    # Landroid/icu/text/RbnfLenientScannerProvider;

    #@0
    .prologue
    .line 1316
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@2
    .line 1315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 913
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 914
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 913
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 916
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method
