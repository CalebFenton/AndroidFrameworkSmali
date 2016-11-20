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

.field private transient defaultInfinityRule:Landroid/icu/text/NFRule;

.field private transient defaultNaNRule:Landroid/icu/text/NFRule;

.field private transient defaultRuleSet:Landroid/icu/text/NFRuleSet;

.field private lenientParse:Z

.field private transient lenientParseRules:Ljava/lang/String;

.field private locale:Landroid/icu/util/ULocale;

.field private transient lookedForScanner:Z

.field private transient postProcessRules:Ljava/lang/String;

.field private transient postProcessor:Landroid/icu/text/RBNFPostProcessor;

.field private publicRuleSetNames:[Ljava/lang/String;

.field private roundingMode:I

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

.field private transient ruleSetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            ">;"
        }
    .end annotation
.end field

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
    .line 680
    const-string/jumbo v0, "rbnf"

    #@8
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    #@e
    .line 854
    new-array v0, v6, [Ljava/lang/String;

    #@10
    .line 855
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
    .line 854
    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    #@26
    .line 857
    new-array v0, v6, [Ljava/lang/String;

    #@28
    .line 858
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
    .line 857
    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    #@3e
    .line 538
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 873
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@9
    .line 872
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 12
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "format"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 815
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 574
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 579
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@9
    .line 585
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 592
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 598
    const/4 v9, 0x7

    #@e
    iput v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@10
    .line 605
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@12
    .line 615
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@14
    .line 622
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 628
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    .line 634
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@1a
    .line 640
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@1c
    .line 674
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@1e
    .line 675
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@20
    .line 676
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@22
    .line 677
    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@24
    .line 816
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@26
    .line 819
    const-string/jumbo v9, "android/icu/impl/data/icudt56b/rbnf"

    #@29
    .line 818
    invoke-static {v9, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@2f
    .line 824
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@32
    move-result-object v8

    #@33
    .line 825
    .local v8, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v8, v8}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@36
    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    .line 828
    .local v1, "description":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@3c
    .line 831
    .local v6, "localizations":[[Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v10, "RBNFRules/"

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    sget-object v10, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    #@4a
    add-int/lit8 v11, p2, -0x1

    #@4c
    aget-object v10, v10, v11

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@59
    move-result-object v7

    #@5a
    .line 832
    .local v7, "rules":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@5d
    move-result-object v4

    #@5e
    .line 833
    .local v4, "it":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_0

    #@64
    .line 834
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_0

    #@6c
    .line 837
    .end local v4    # "it":Landroid/icu/util/UResourceBundleIterator;
    .end local v7    # "rules":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v2

    #@6d
    .line 842
    :cond_0
    sget-object v9, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    #@6f
    add-int/lit8 v10, p2, -0x1

    #@71
    aget-object v9, v9, v10

    #@73
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@76
    move-result-object v5

    #@77
    .line 843
    .local v5, "locNamesBundle":Landroid/icu/util/UResourceBundle;
    if-eqz v5, :cond_1

    #@79
    .line 844
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@7c
    move-result v9

    #@7d
    new-array v6, v9, [[Ljava/lang/String;

    #@7f
    .line 845
    .local v6, "localizations":[[Ljava/lang/String;
    const/4 v3, 0x0

    #@80
    .local v3, "i":I
    :goto_1
    array-length v9, v6

    #@81
    if-ge v3, v9, :cond_1

    #@83
    .line 846
    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    aput-object v9, v6, v3

    #@8d
    .line 845
    add-int/lit8 v3, v3, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 851
    .end local v3    # "i":I
    .end local v6    # "localizations":[[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    invoke-direct {p0, v9, v6}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@97
    .line 815
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 694
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 574
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 579
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@9
    .line 585
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 592
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 598
    const/4 v0, 0x7

    #@e
    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@10
    .line 605
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@12
    .line 615
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@14
    .line 622
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 628
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    .line 634
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@1a
    .line 640
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@1c
    .line 674
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@1e
    .line 675
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@20
    .line 676
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@22
    .line 677
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@24
    .line 695
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@26
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@2c
    .line 696
    invoke-direct {p0, p1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@2f
    .line 694
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 753
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 574
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 579
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@9
    .line 585
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 592
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 598
    const/4 v0, 0x7

    #@e
    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@10
    .line 605
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@12
    .line 615
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@14
    .line 622
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 628
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    .line 634
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@1a
    .line 640
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@1c
    .line 674
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@1e
    .line 675
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@20
    .line 676
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@22
    .line 677
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@24
    .line 754
    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@26
    .line 755
    invoke-direct {p0, p1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@29
    .line 753
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 738
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@7
    .line 737
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 720
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 574
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 579
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@9
    .line 585
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 592
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 598
    const/4 v0, 0x7

    #@e
    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@10
    .line 605
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@12
    .line 615
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@14
    .line 622
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 628
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    .line 634
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@1a
    .line 640
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@1c
    .line 674
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@1e
    .line 675
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@20
    .line 676
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@22
    .line 677
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@24
    .line 721
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@26
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@2c
    .line 722
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@2f
    .line 720
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 782
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@5
    .line 574
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    .line 579
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@9
    .line 585
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@b
    .line 592
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 598
    const/4 v0, 0x7

    #@e
    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@10
    .line 605
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@12
    .line 615
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@14
    .line 622
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 628
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    .line 634
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@1a
    .line 640
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@1c
    .line 674
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@1e
    .line 675
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@20
    .line 676
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@22
    .line 677
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@24
    .line 783
    iput-object p3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@26
    .line 784
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    #@29
    .line 782
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # I

    #@0
    .prologue
    .line 799
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@7
    .line 798
    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1963
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
    .line 1964
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@15
    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@18
    move-result-object v0

    #@19
    .line 1965
    .local v0, "capitalization":Landroid/icu/text/DisplayContext;
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 1966
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@1f
    if-ne v0, v1, :cond_0

    #@21
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@23
    .line 1965
    if-nez v1, :cond_1

    #@25
    .line 1967
    :cond_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@27
    if-ne v0, v1, :cond_3

    #@29
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@2b
    .line 1965
    if-eqz v1, :cond_3

    #@2d
    .line 1968
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 1970
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@33
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@39
    .line 1972
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@3b
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@3d
    .line 1973
    const/16 v3, 0x300

    #@3f
    .line 1972
    invoke-static {v1, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1

    #@44
    .line 1976
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
    .line 1605
    const/4 v3, 0x0

    #@2
    .line 1606
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 1607
    .local v0, "lp":I
    if-eq v0, v6, :cond_3

    #@8
    .line 1611
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
    .line 1615
    :cond_0
    const-string/jumbo v4, ";%"

    #@17
    invoke-virtual {p1, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 1617
    .local v1, "lpEnd":I
    if-ne v1, v6, :cond_1

    #@1d
    .line 1618
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v1, v4, -0x1

    #@23
    .line 1620
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@26
    move-result v4

    #@27
    add-int v2, v0, v4

    #@29
    .line 1621
    .local v2, "lpStart":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@2b
    .line 1622
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@2e
    move-result v4

    #@2f
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@32
    move-result v4

    #@33
    .line 1621
    if-eqz v4, :cond_2

    #@35
    .line 1623
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1627
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 1630
    .local v3, "result":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@3e
    invoke-virtual {p1, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@41
    .line 1633
    .end local v1    # "lpEnd":I
    .end local v2    # "lpStart":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # D
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1894
    new-instance v4, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 1895
    .local v4, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x7

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 1897
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@f
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    #@19
    move-result v1

    #@1a
    iget v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@23
    move-result-wide p1

    #@24
    :cond_0
    move-object v1, p3

    #@25
    move-wide v2, p1

    #@26
    move v6, v5

    #@27
    .line 1899
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    #@2a
    .line 1900
    invoke-direct {p0, v4, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@2d
    .line 1901
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method private format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # J
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1923
    new-instance v4, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .local v4, "result":Ljava/lang/StringBuffer;
    move-object v1, p3

    #@7
    move-wide v2, p1

    #@8
    move v6, v5

    #@9
    .line 1924
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@c
    .line 1925
    invoke-direct {p0, v4, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@f
    .line 1926
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 7
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1037
    if-eqz p1, :cond_2

    #@4
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@6
    if-eqz v4, :cond_2

    #@8
    .line 1038
    const/4 v4, 0x2

    #@9
    new-array v1, v4, [Ljava/lang/String;

    #@b
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    aput-object v4, v1, v3

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
    aput-object v4, v1, v5

    #@1e
    .line 1039
    .local v1, "localeNames":[Ljava/lang/String;
    array-length v4, v1

    #@1f
    :goto_0
    if-ge v3, v4, :cond_2

    #@21
    aget-object v0, v1, v3

    #@23
    .line 1040
    .local v0, "lname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    if-lez v5, :cond_1

    #@29
    .line 1041
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@2b
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, [Ljava/lang/String;

    #@31
    .line 1042
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@33
    .line 1043
    return-object v2

    #@34
    .line 1045
    :cond_0
    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    goto :goto_1

    #@39
    .line 1039
    .end local v2    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1049
    .end local v0    # "lname":Ljava/lang/String;
    .end local v1    # "localeNames":[Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 19
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 1645
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    #@7
    .line 1652
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v4

    #@b
    .line 1659
    .local v4, "descBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v16, "%%lenient-parse:"

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v16

    #@12
    invoke-direct {v0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v16

    #@16
    move-object/from16 v0, v16

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    #@1c
    .line 1660
    const-string/jumbo v16, "%%post-process:"

    #@1f
    move-object/from16 v0, p0

    #@21
    move-object/from16 v1, v16

    #@23
    invoke-direct {v0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v16

    #@27
    move-object/from16 v0, v16

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@2d
    .line 1665
    const/4 v8, 0x1

    #@2e
    .line 1666
    .local v8, "numRuleSets":I
    const/4 v9, 0x0

    #@2f
    .line 1667
    .local v9, "p":I
    :goto_0
    const-string/jumbo v16, ";%"

    #@32
    move-object/from16 v0, v16

    #@34
    invoke-virtual {v4, v0, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@37
    move-result v9

    #@38
    const/16 v16, -0x1

    #@3a
    move/from16 v0, v16

    #@3c
    if-eq v9, v0, :cond_0

    #@3e
    .line 1668
    add-int/lit8 v8, v8, 0x1

    #@40
    .line 1669
    add-int/lit8 v9, v9, 0x2

    #@42
    goto :goto_0

    #@43
    .line 1673
    :cond_0
    new-array v0, v8, [Landroid/icu/text/NFRuleSet;

    #@45
    move-object/from16 v16, v0

    #@47
    move-object/from16 v0, v16

    #@49
    move-object/from16 v1, p0

    #@4b
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@4d
    .line 1674
    new-instance v16, Ljava/util/HashMap;

    #@4f
    mul-int/lit8 v17, v8, 0x2

    #@51
    add-int/lit8 v17, v17, 0x1

    #@53
    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    #@56
    move-object/from16 v0, v16

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@5c
    .line 1675
    const/16 v16, 0x0

    #@5e
    move-object/from16 v0, v16

    #@60
    move-object/from16 v1, p0

    #@62
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@64
    .line 1679
    const/4 v10, 0x0

    #@65
    .line 1688
    .local v10, "publicRuleSetCount":I
    new-array v14, v8, [Ljava/lang/String;

    #@67
    .line 1690
    .local v14, "ruleSetDescriptions":[Ljava/lang/String;
    const/4 v2, 0x0

    #@68
    .line 1691
    .local v2, "curRuleSet":I
    const/4 v15, 0x0

    #@69
    .line 1693
    .local v15, "start":I
    :goto_1
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@6d
    move-object/from16 v16, v0

    #@6f
    move-object/from16 v0, v16

    #@71
    array-length v0, v0

    #@72
    move/from16 v16, v0

    #@74
    move/from16 v0, v16

    #@76
    if-ge v2, v0, :cond_5

    #@78
    .line 1694
    const-string/jumbo v16, ";%"

    #@7b
    move-object/from16 v0, v16

    #@7d
    invoke-virtual {v4, v0, v15}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@80
    move-result v9

    #@81
    .line 1695
    if-gez v9, :cond_1

    #@83
    .line 1696
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@86
    move-result v16

    #@87
    add-int/lit8 v9, v16, -0x1

    #@89
    .line 1698
    :cond_1
    add-int/lit8 v16, v9, 0x1

    #@8b
    move/from16 v0, v16

    #@8d
    invoke-virtual {v4, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v16

    #@91
    aput-object v16, v14, v2

    #@93
    .line 1699
    new-instance v13, Landroid/icu/text/NFRuleSet;

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-direct {v13, v0, v14, v2}, Landroid/icu/text/NFRuleSet;-><init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V

    #@9a
    .line 1700
    .local v13, "ruleSet":Landroid/icu/text/NFRuleSet;
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@9e
    move-object/from16 v16, v0

    #@a0
    aput-object v13, v16, v2

    #@a2
    .line 1701
    invoke-virtual {v13}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    .line 1702
    .local v3, "currentName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@aa
    move-object/from16 v16, v0

    #@ac
    move-object/from16 v0, v16

    #@ae
    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 1703
    const-string/jumbo v16, "%%"

    #@b4
    move-object/from16 v0, v16

    #@b6
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b9
    move-result v16

    #@ba
    if-nez v16, :cond_4

    #@bc
    .line 1704
    add-int/lit8 v10, v10, 0x1

    #@be
    .line 1705
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@c2
    move-object/from16 v16, v0

    #@c4
    if-nez v16, :cond_2

    #@c6
    .line 1706
    const-string/jumbo v16, "%spellout-numbering"

    #@c9
    move-object/from16 v0, v16

    #@cb
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v16

    #@cf
    .line 1705
    if-nez v16, :cond_3

    #@d1
    .line 1707
    :cond_2
    const-string/jumbo v16, "%digits-ordinal"

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v16

    #@da
    .line 1705
    if-nez v16, :cond_3

    #@dc
    .line 1708
    const-string/jumbo v16, "%duration"

    #@df
    move-object/from16 v0, v16

    #@e1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v16

    #@e5
    .line 1705
    if-eqz v16, :cond_4

    #@e7
    .line 1710
    :cond_3
    move-object/from16 v0, p0

    #@e9
    iput-object v13, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@eb
    .line 1713
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@ed
    .line 1714
    add-int/lit8 v15, v9, 0x1

    #@ef
    goto/16 :goto_1

    #@f1
    .line 1730
    .end local v3    # "currentName":Ljava/lang/String;
    .end local v13    # "ruleSet":Landroid/icu/text/NFRuleSet;
    :cond_5
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@f5
    move-object/from16 v16, v0

    #@f7
    if-nez v16, :cond_6

    #@f9
    .line 1731
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@fd
    move-object/from16 v16, v0

    #@ff
    move-object/from16 v0, v16

    #@101
    array-length v0, v0

    #@102
    move/from16 v16, v0

    #@104
    add-int/lit8 v5, v16, -0x1

    #@106
    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_6

    #@108
    .line 1732
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@10c
    move-object/from16 v16, v0

    #@10e
    aget-object v16, v16, v5

    #@110
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@113
    move-result-object v16

    #@114
    const-string/jumbo v17, "%%"

    #@117
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11a
    move-result v16

    #@11b
    if-nez v16, :cond_8

    #@11d
    .line 1733
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@121
    move-object/from16 v16, v0

    #@123
    aget-object v16, v16, v5

    #@125
    move-object/from16 v0, v16

    #@127
    move-object/from16 v1, p0

    #@129
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@12b
    .line 1738
    .end local v5    # "i":I
    :cond_6
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@12f
    move-object/from16 v16, v0

    #@131
    if-nez v16, :cond_7

    #@133
    .line 1739
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@137
    move-object/from16 v16, v0

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@13d
    move-object/from16 v17, v0

    #@13f
    move-object/from16 v0, v17

    #@141
    array-length v0, v0

    #@142
    move/from16 v17, v0

    #@144
    add-int/lit8 v17, v17, -0x1

    #@146
    aget-object v16, v16, v17

    #@148
    move-object/from16 v0, v16

    #@14a
    move-object/from16 v1, p0

    #@14c
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@14e
    .line 1744
    :cond_7
    const/4 v5, 0x0

    #@14f
    .restart local v5    # "i":I
    :goto_3
    move-object/from16 v0, p0

    #@151
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@153
    move-object/from16 v16, v0

    #@155
    move-object/from16 v0, v16

    #@157
    array-length v0, v0

    #@158
    move/from16 v16, v0

    #@15a
    move/from16 v0, v16

    #@15c
    if-ge v5, v0, :cond_9

    #@15e
    .line 1745
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@162
    move-object/from16 v16, v0

    #@164
    aget-object v16, v16, v5

    #@166
    aget-object v17, v14, v5

    #@168
    invoke-virtual/range {v16 .. v17}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;)V

    #@16b
    .line 1744
    add-int/lit8 v5, v5, 0x1

    #@16d
    goto :goto_3

    #@16e
    .line 1731
    :cond_8
    add-int/lit8 v5, v5, -0x1

    #@170
    goto :goto_2

    #@171
    .line 1752
    :cond_9
    new-array v12, v10, [Ljava/lang/String;

    #@173
    .line 1753
    .local v12, "publicRuleSetTemp":[Ljava/lang/String;
    const/4 v10, 0x0

    #@174
    .line 1754
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@178
    move-object/from16 v16, v0

    #@17a
    move-object/from16 v0, v16

    #@17c
    array-length v0, v0

    #@17d
    move/from16 v16, v0

    #@17f
    add-int/lit8 v5, v16, -0x1

    #@181
    move v11, v10

    #@182
    .end local v10    # "publicRuleSetCount":I
    .local v11, "publicRuleSetCount":I
    :goto_4
    if-ltz v5, :cond_a

    #@184
    .line 1755
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@188
    move-object/from16 v16, v0

    #@18a
    aget-object v16, v16, v5

    #@18c
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    const-string/jumbo v17, "%%"

    #@193
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@196
    move-result v16

    #@197
    if-nez v16, :cond_f

    #@199
    .line 1756
    add-int/lit8 v10, v11, 0x1

    #@19b
    .end local v11    # "publicRuleSetCount":I
    .restart local v10    # "publicRuleSetCount":I
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@19f
    move-object/from16 v16, v0

    #@1a1
    aget-object v16, v16, v5

    #@1a3
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@1a6
    move-result-object v16

    #@1a7
    aput-object v16, v12, v11

    #@1a9
    .line 1754
    :goto_5
    add-int/lit8 v5, v5, -0x1

    #@1ab
    move v11, v10

    #@1ac
    .end local v10    # "publicRuleSetCount":I
    .restart local v11    # "publicRuleSetCount":I
    goto :goto_4

    #@1ad
    .line 1760
    :cond_a
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@1b1
    move-object/from16 v16, v0

    #@1b3
    if-eqz v16, :cond_e

    #@1b5
    .line 1763
    const/4 v5, 0x0

    #@1b6
    :goto_6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@1ba
    move-object/from16 v16, v0

    #@1bc
    move-object/from16 v0, v16

    #@1be
    array-length v0, v0

    #@1bf
    move/from16 v16, v0

    #@1c1
    move/from16 v0, v16

    #@1c3
    if-ge v5, v0, :cond_d

    #@1c5
    .line 1764
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@1c9
    move-object/from16 v16, v0

    #@1cb
    aget-object v7, v16, v5

    #@1cd
    .line 1765
    .local v7, "name":Ljava/lang/String;
    const/4 v6, 0x0

    #@1ce
    .local v6, "j":I
    :goto_7
    array-length v0, v12

    #@1cf
    move/from16 v16, v0

    #@1d1
    move/from16 v0, v16

    #@1d3
    if-ge v6, v0, :cond_c

    #@1d5
    .line 1766
    aget-object v16, v12, v6

    #@1d7
    move-object/from16 v0, v16

    #@1d9
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1dc
    move-result v16

    #@1dd
    if-eqz v16, :cond_b

    #@1df
    .line 1763
    add-int/lit8 v5, v5, 0x1

    #@1e1
    goto :goto_6

    #@1e2
    .line 1765
    :cond_b
    add-int/lit8 v6, v6, 0x1

    #@1e4
    goto :goto_7

    #@1e5
    .line 1770
    :cond_c
    new-instance v16, Ljava/lang/IllegalArgumentException;

    #@1e7
    new-instance v17, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string/jumbo v18, "did not find public rule set: "

    #@1ef
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v17

    #@1f3
    move-object/from16 v0, v17

    #@1f5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v17

    #@1f9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v17

    #@1fd
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@200
    throw v16

    #@201
    .line 1773
    .end local v6    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@205
    move-object/from16 v16, v0

    #@207
    const/16 v17, 0x0

    #@209
    aget-object v16, v16, v17

    #@20b
    move-object/from16 v0, p0

    #@20d
    move-object/from16 v1, v16

    #@20f
    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@212
    move-result-object v16

    #@213
    move-object/from16 v0, v16

    #@215
    move-object/from16 v1, p0

    #@217
    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@219
    .line 1644
    :goto_8
    return-void

    #@21a
    .line 1775
    :cond_e
    move-object/from16 v0, p0

    #@21c
    iput-object v12, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@21e
    goto :goto_8

    #@21f
    :cond_f
    move v10, v11

    #@220
    .end local v11    # "publicRuleSetCount":I
    .restart local v10    # "publicRuleSetCount":I
    goto :goto_5
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
    .line 1810
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@5
    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 1812
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    const-string/jumbo v6, "contextTransforms/number-spellout"

    #@e
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@11
    move-result-object v3

    #@12
    .line 1813
    .local v3, "rdb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@15
    move-result-object v1

    #@16
    .line 1814
    .local v1, "intVector":[I
    array-length v6, v1

    #@17
    const/4 v7, 0x2

    #@18
    if-lt v6, v7, :cond_0

    #@1a
    .line 1815
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
    .line 1816
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
    .line 1809
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
    .line 1815
    goto :goto_0

    #@2c
    :cond_2
    move v4, v5

    #@2d
    .line 1816
    goto :goto_1

    #@2e
    .line 1818
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
    .line 1784
    if-eqz p1, :cond_2

    #@3
    .line 1785
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
    .line 1787
    new-instance v3, Ljava/util/HashMap;

    #@f
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@12
    .line 1788
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v1, 0x1

    #@13
    .local v1, "i":I
    :goto_0
    array-length v5, p1

    #@14
    if-ge v1, v5, :cond_1

    #@16
    .line 1789
    aget-object v0, p1, v1

    #@18
    .line 1790
    .local v0, "data":[Ljava/lang/String;
    aget-object v2, v0, v7

    #@1a
    .line 1791
    .local v2, "loc":Ljava/lang/String;
    array-length v5, v0

    #@1b
    add-int/lit8 v5, v5, -0x1

    #@1d
    new-array v4, v5, [Ljava/lang/String;

    #@1f
    .line 1792
    .local v4, "names":[Ljava/lang/String;
    array-length v5, v4

    #@20
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@22
    array-length v6, v6

    #@23
    if-eq v5, v6, :cond_0

    #@25
    .line 1793
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
    .line 1794
    const-string/jumbo v7, " != localized names["

    #@3d
    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 1794
    const-string/jumbo v7, "] length: "

    #@48
    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 1794
    array-length v7, v4

    #@4d
    .line 1793
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
    .line 1796
    :cond_0
    array-length v5, v4

    #@5a
    const/4 v6, 0x1

    #@5b
    invoke-static {v0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5e
    .line 1797
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 1788
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1800
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
    .line 1801
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@6c
    .line 1783
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
    .line 1933
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@3
    if-eqz v4, :cond_2

    #@5
    .line 1934
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 1935
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@b
    const-string/jumbo v5, ";"

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 1936
    .local v2, "ix":I
    const/4 v4, -0x1

    #@13
    if-ne v2, v4, :cond_0

    #@15
    .line 1937
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1a
    move-result v2

    #@1b
    .line 1939
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
    .line 1941
    .local v3, "ppClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@29
    move-result-object v0

    #@2a
    .line 1942
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Landroid/icu/text/RBNFPostProcessor;

    #@30
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@32
    .line 1943
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@34
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@36
    invoke-interface {v4, p0, v5}, Landroid/icu/text/RBNFPostProcessor;->init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1955
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ix":I
    .end local v3    # "ppClassName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@3b
    invoke-interface {v4, p1, p2}, Landroid/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    #@3e
    .line 1932
    :cond_2
    return-void

    #@3f
    .line 1945
    .restart local v2    # "ix":I
    .restart local v3    # "ppClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@40
    .line 1947
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
    .line 1948
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 1948
    const-string/jumbo v6, ", "

    #@6c
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 1948
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    .line 1947
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
    .line 1949
    :cond_3
    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    #@81
    .line 1950
    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    #@83
    .line 1951
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 975
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 979
    .local v0, "description":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 984
    .local v3, "loc":Landroid/icu/util/ULocale;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@d
    move-result v5

    #@e
    iput v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@10
    .line 992
    :goto_1
    new-instance v4, Landroid/icu/text/RuleBasedNumberFormat;

    #@12
    invoke-direct {v4, v0, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@15
    .line 993
    .local v4, "temp":Landroid/icu/text/RuleBasedNumberFormat;
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@17
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@19
    .line 994
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@1b
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@1d
    .line 995
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@1f
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@21
    .line 996
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@23
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@25
    .line 997
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@27
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@29
    .line 998
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@2d
    .line 999
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@2f
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@31
    .line 1000
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@33
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@35
    .line 1001
    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@37
    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@39
    .line 972
    return-void

    #@3a
    .line 980
    .end local v3    # "loc":Landroid/icu/util/ULocale;
    .end local v4    # "temp":Landroid/icu/text/RuleBasedNumberFormat;
    :catch_0
    move-exception v1

    #@3b
    .line 981
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@3d
    invoke-static {v5}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@40
    move-result-object v3

    #@41
    .restart local v3    # "loc":Landroid/icu/util/ULocale;
    goto :goto_0

    #@42
    .line 985
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@43
    .local v2, "ignored":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x3b

    #@2
    .line 1833
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1834
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 1837
    .local v0, "descriptionLength":I
    const/4 v3, 0x0

    #@c
    .line 1838
    .local v3, "start":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@e
    .line 1840
    :goto_1
    if-ge v3, v0, :cond_0

    #@10
    .line 1841
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v4

    #@14
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@17
    move-result v4

    #@18
    .line 1840
    if-eqz v4, :cond_0

    #@1a
    .line 1843
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 1847
    :cond_0
    if-ge v3, v0, :cond_1

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v4

    #@23
    if-ne v4, v5, :cond_1

    #@25
    .line 1848
    add-int/lit8 v3, v3, 0x1

    #@27
    .line 1849
    goto :goto_0

    #@28
    .line 1854
    :cond_1
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@2b
    move-result v1

    #@2c
    .line 1855
    .local v1, "p":I
    const/4 v4, -0x1

    #@2d
    if-ne v1, v4, :cond_3

    #@2f
    .line 1858
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1873
    .end local v1    # "p":I
    :cond_2
    return-object v2

    #@37
    .line 1861
    .restart local v1    # "p":I
    :cond_3
    if-ge v1, v0, :cond_2

    #@39
    .line 1862
    add-int/lit8 v4, v1, 0x1

    #@3b
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 1863
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
    .line 962
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7
    .line 963
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 964
    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@e
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@11
    .line 959
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 885
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
    .line 1564
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
    .line 899
    instance-of v2, p1, Landroid/icu/text/RuleBasedNumberFormat;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 900
    return v4

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 904
    nop

    #@8
    nop

    #@9
    .line 907
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
    .line 908
    :cond_1
    return v4

    #@1a
    .line 912
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
    .line 913
    return v4

    #@23
    .line 915
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
    .line 916
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
    .line 917
    return v4

    #@38
    .line 915
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 921
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
    .line 1986
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/NFRuleSet;

    #@8
    .line 1987
    .local v0, "result":Landroid/icu/text/NFRuleSet;
    if-nez v0, :cond_0

    #@a
    .line 1988
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "No rule set named "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1990
    :cond_0
    return-object v0
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
    .line 1123
    const-string/jumbo v0, "%%"

    #@3
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Can\'t use internal rule set"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1126
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
    .line 1141
    const-string/jumbo v0, "%%"

    #@3
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Can\'t use internal rule set"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1144
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
    .line 1162
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1163
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
    .line 1168
    :goto_0
    return-object p3

    #@14
    .line 1166
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
    .line 1189
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1190
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
    .line 1195
    :goto_0
    return-object p3

    #@14
    .line 1193
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
    .line 1229
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
    .line 1217
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
    .line 1206
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
    .locals 3

    #@0
    .prologue
    .line 1555
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1557
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {v1, v2}, Landroid/icu/text/RuleBasedNumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1558
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DecimalFormat;

    #@d
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v0, v2}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@14
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@16
    .line 1560
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@18
    return-object v1
.end method

.method getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    #@0
    .prologue
    .line 1548
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1549
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@b
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@d
    .line 1551
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@f
    return-object v0
.end method

.method getDefaultInfinityRule()Landroid/icu/text/NFRule;
    .locals 3

    #@0
    .prologue
    .line 1572
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1573
    new-instance v0, Landroid/icu/text/NFRule;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Inf: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@25
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@27
    .line 1575
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@29
    return-object v0
.end method

.method getDefaultNaNRule()Landroid/icu/text/NFRule;
    .locals 3

    #@0
    .prologue
    .line 1583
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1584
    new-instance v0, Landroid/icu/text/NFRule;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "NaN: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@25
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@27
    .line 1586
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@29
    return-object v0
.end method

.method getDefaultRuleSet()Landroid/icu/text/NFRuleSet;
    .locals 1

    #@0
    .prologue
    .line 1518
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@2
    return-object v0
.end method

.method public getDefaultRuleSetName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1414
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
    .line 1415
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@e
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 1417
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
    .line 1528
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1529
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;

    #@8
    move-result-object v0

    #@9
    .line 1530
    .local v0, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    if-eqz v0, :cond_0

    #@b
    .line 1531
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
    .line 1534
    .end local v0    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    :cond_0
    return-object v2
.end method

.method public getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;
    .locals 4

    #@0
    .prologue
    .line 1355
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
    .line 1367
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@e
    return-object v3

    #@f
    .line 1357
    :cond_1
    const/4 v3, 0x1

    #@10
    :try_start_0
    iput-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    #@12
    .line 1358
    const-string/jumbo v3, "android.icu.impl.text.RbnfScannerProviderImpl"

    #@15
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    .line 1359
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/icu/text/RbnfLenientScannerProvider;

    #@1f
    .line 1360
    .local v2, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    invoke-virtual {p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 1362
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getRoundingMode()I
    .locals 1

    #@0
    .prologue
    .line 1483
    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@2
    return v0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ruleSetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1112
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
    .line 1092
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@2
    .line 1093
    .local v2, "rsnames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .local v0, "ix":I
    :goto_0
    array-length v3, v2

    #@4
    if-ge v0, v3, :cond_2

    #@6
    .line 1094
    aget-object v3, v2, v0

    #@8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1095
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1096
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@14
    .line 1097
    aget-object v3, v1, v0

    #@16
    return-object v3

    #@17
    .line 1099
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
    .line 1093
    .end local v1    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1102
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
    .line 1023
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 1024
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    #@7
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    .line 1025
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
    .line 1026
    .local v1, "locales":[Ljava/lang/String;
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@19
    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1c
    .line 1027
    array-length v4, v1

    #@1d
    new-array v2, v4, [Landroid/icu/util/ULocale;

    #@1f
    .line 1028
    .local v2, "result":[Landroid/icu/util/ULocale;
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    array-length v4, v1

    #@21
    if-ge v0, v4, :cond_0

    #@23
    .line 1029
    new-instance v4, Landroid/icu/util/ULocale;

    #@25
    aget-object v5, v1, v0

    #@27
    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@2a
    aput-object v4, v2, v0

    #@2c
    .line 1028
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1031
    :cond_0
    return-object v2

    #@30
    .line 1033
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
    .line 1080
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
    .line 1062
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1063
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1064
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, [Ljava/lang/String;

    #@c
    return-object v2

    #@d
    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1067
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 1068
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
    .line 1067
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1070
    :cond_1
    return-object v1
.end method

.method public getRuleSetNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1014
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
    .line 933
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
    .line 1329
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
    .line 1253
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@4
    move-result v6

    #@5
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 1254
    .local v5, "workingText":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    #@b
    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    #@e
    .line 1255
    .local v4, "workingPos":Ljava/text/ParsePosition;
    const/4 v3, 0x0

    #@f
    .line 1259
    .local v3, "tempResult":Ljava/lang/Number;
    sget-object v2, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@11
    .line 1260
    .local v2, "result":Ljava/lang/Number;
    new-instance v0, Ljava/text/ParsePosition;

    #@13
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@16
    move-result v6

    #@17
    invoke-direct {v0, v6}, Ljava/text/ParsePosition;-><init>(I)V

    #@1a
    .line 1266
    .local v0, "highWaterMark":Ljava/text/ParsePosition;
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1c
    array-length v6, v6

    #@1d
    add-int/lit8 v1, v6, -0x1

    #@1f
    .end local v3    # "tempResult":Ljava/lang/Number;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@21
    .line 1268
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@23
    aget-object v6, v6, v1

    #@25
    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_3

    #@2b
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@2d
    aget-object v6, v6, v1

    #@2f
    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isParseable()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 1274
    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@37
    aget-object v6, v6, v1

    #@39
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@3e
    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@41
    move-result-object v3

    #@42
    .line 1275
    .local v3, "tempResult":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@45
    move-result v6

    #@46
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@49
    move-result v7

    #@4a
    if-le v6, v7, :cond_0

    #@4c
    .line 1276
    move-object v2, v3

    #@4d
    .line 1277
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@50
    move-result v6

    #@51
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@54
    .line 1286
    :cond_0
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@57
    move-result v6

    #@58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5b
    move-result v7

    #@5c
    if-ne v6, v7, :cond_2

    #@5e
    .line 1297
    .end local v3    # "tempResult":Ljava/lang/Number;
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@61
    move-result v6

    #@62
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@65
    move-result v7

    #@66
    add-int/2addr v6, v7

    #@67
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6a
    .line 1302
    return-object v2

    #@6b
    .line 1292
    .restart local v3    # "tempResult":Ljava/lang/Number;
    :cond_2
    invoke-virtual {v4, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6e
    .line 1266
    .end local v3    # "tempResult":Ljava/lang/Number;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@70
    goto :goto_0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 1459
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@3
    .line 1460
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1461
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@9
    if-eq p1, v0, :cond_0

    #@b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 1462
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@11
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    #@14
    .line 1463
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    #@17
    .line 1465
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@19
    if-nez v0, :cond_4

    #@1b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@1d
    if-eq p1, v0, :cond_3

    #@1f
    .line 1466
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@21
    if-ne p1, v0, :cond_2

    #@23
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    #@25
    .line 1465
    if-nez v0, :cond_3

    #@27
    .line 1467
    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@29
    if-ne p1, v0, :cond_4

    #@2b
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    #@2d
    .line 1465
    if-eqz v0, :cond_4

    #@2f
    .line 1468
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    #@31
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@37
    .line 1458
    :cond_4
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 5
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1428
    if-eqz p1, :cond_3

    #@3
    .line 1429
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    #@9
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b
    .line 1430
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1431
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    #@11
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@13
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@16
    .line 1433
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1434
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    #@1c
    .line 1435
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    #@1f
    .line 1437
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 1438
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    #@25
    .line 1439
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    #@28
    .line 1443
    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@2a
    const/4 v1, 0x0

    #@2b
    array-length v3, v2

    #@2c
    :goto_0
    if-ge v1, v3, :cond_3

    #@2e
    aget-object v0, v2, v1

    #@30
    .line 1444
    .local v0, "ruleSet":Landroid/icu/text/NFRuleSet;
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    #@32
    invoke-virtual {v0, v4}, Landroid/icu/text/NFRuleSet;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@35
    .line 1443
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1427
    .end local v0    # "ruleSet":Landroid/icu/text/NFRuleSet;
    :cond_3
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
    .line 1377
    if-nez p1, :cond_6

    #@4
    .line 1378
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    #@6
    array-length v2, v2

    #@7
    if-lez v2, :cond_1

    #@9
    .line 1379
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
    .line 1376
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1381
    :cond_1
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@16
    .line 1382
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@18
    array-length v1, v2

    #@19
    .line 1383
    .local v1, "n":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1b
    if-ltz v1, :cond_4

    #@1d
    .line 1384
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@1f
    aget-object v2, v2, v1

    #@21
    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 1385
    .local v0, "currentName":Ljava/lang/String;
    const-string/jumbo v2, "%spellout-numbering"

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_3

    #@2e
    .line 1386
    const-string/jumbo v2, "%digits-ordinal"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 1385
    if-nez v2, :cond_3

    #@37
    .line 1387
    const-string/jumbo v2, "%duration"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 1385
    if-eqz v2, :cond_2

    #@40
    .line 1389
    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@42
    aget-object v2, v2, v1

    #@44
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@46
    .line 1390
    return-void

    #@47
    .line 1394
    .end local v0    # "currentName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@49
    array-length v1, v2

    #@4a
    .line 1395
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@4c
    if-ltz v1, :cond_0

    #@4e
    .line 1396
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
    .line 1397
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@5a
    aget-object v2, v2, v1

    #@5c
    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    #@5e
    goto :goto_0

    #@5f
    .line 1402
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
    .line 1403
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
    .line 1405
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
    .line 1319
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    #@2
    .line 1318
    return-void
.end method

.method public setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    .locals 0
    .param p1, "scannerProvider"    # Landroid/icu/text/RbnfLenientScannerProvider;

    #@0
    .prologue
    .line 1341
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    #@2
    .line 1340
    return-void
.end method

.method public setRoundingMode(I)V
    .locals 3
    .param p1, "roundingMode"    # I

    #@0
    .prologue
    .line 1499
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x7

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 1500
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid rounding mode: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1503
    :cond_1
    iput p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    #@21
    .line 1498
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 948
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    #@7
    const/4 v2, 0x0

    #@8
    array-length v4, v3

    #@9
    :goto_0
    if-ge v2, v4, :cond_0

    #@b
    aget-object v1, v3, v2

    #@d
    .line 949
    .local v1, "ruleSet":Landroid/icu/text/NFRuleSet;
    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 948
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 951
    .end local v1    # "ruleSet":Landroid/icu/text/NFRuleSet;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method
