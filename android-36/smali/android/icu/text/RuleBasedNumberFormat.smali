.class public Landroid/icu/text/RuleBasedNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# static fields
.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o DURATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAX_VALUE:Landroid/icu/math/BigDecimal;

.field private static final greylist-max-o MIN_VALUE:Landroid/icu/math/BigDecimal;

.field public static final greylist-max-o NUMBERING_SYSTEM:I = 0x4

.field public static final greylist-max-o ORDINAL:I = 0x2

.field public static final greylist-max-o SPELLOUT:I = 0x1

.field private static final greylist-max-o locnames:[Ljava/lang/String;

.field private static final greylist-max-o rulenames:[Ljava/lang/String;

.field static final whitelist serialVersionUID:J = -0x6a5ce54888ed36fcL


# instance fields
.field private transient greylist-max-o capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private greylist-max-o capitalizationForListOrMenu:Z

.field private greylist-max-o capitalizationForStandAlone:Z

.field private greylist-max-o capitalizationInfoIsSet:Z

.field private transient greylist-max-o decimalFormat:Landroid/icu/text/DecimalFormat;

.field private transient greylist-max-o decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private transient greylist-max-o defaultInfinityRule:Landroid/icu/text/NFRule;

.field private transient greylist-max-o defaultNaNRule:Landroid/icu/text/NFRule;

.field private transient greylist-max-o defaultRuleSet:Landroid/icu/text/NFRuleSet;

.field private greylist-max-o lenientParse:Z

.field private transient greylist-max-o lenientParseRules:Ljava/lang/String;

.field private greylist-max-o locale:Landroid/icu/util/ULocale;

.field private transient greylist-max-o lookedForScanner:Z

.field private transient greylist-max-o postProcessRules:Ljava/lang/String;

.field private transient greylist-max-o postProcessor:Landroid/icu/text/RBNFPostProcessor;

.field private greylist-max-o publicRuleSetNames:[Ljava/lang/String;

.field private greylist-max-o roundingMode:I

.field private greylist-max-o ruleSetDisplayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o ruleSets:[Landroid/icu/text/NFRuleSet;

.field private transient greylist-max-o ruleSetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 694
    const-string v0, "rbnf"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    .line 868
    const-string v0, "DurationRules"

    const-string v1, "NumberingSystemRules"

    const-string v2, "SpelloutRules"

    const-string v3, "OrdinalRules"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    .line 871
    const-string v0, "DurationLocalizations"

    const-string v1, "NumberingSystemLocalizations"

    const-string v2, "SpelloutLocalizations"

    const-string v3, "OrdinalLocalizations"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    .line 1238
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Landroid/icu/math/BigDecimal;

    .line 1239
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Landroid/icu/math/BigDecimal;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "format"    # I

    .line 887
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 888
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;I)V
    .registers 10
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "format"    # I

    .line 829
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 593
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 599
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 606
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 619
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 629
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 636
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 642
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 648
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 688
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 689
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 690
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 691
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 830
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 832
    nop

    .line 833
    const-string v0, "android/icu/impl/data/icudata/rbnf"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 838
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    .line 839
    .local v1, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v2, "description":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 845
    .local v3, "localizations":[[Ljava/lang/String;
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RBNFRules/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    add-int/lit8 v6, p2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 846
    .local v4, "rules":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v5

    .line 847
    .local v5, "it":Landroid/icu/util/UResourceBundleIterator;
    :goto_5d
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 848
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6a
    .catch Ljava/util/MissingResourceException; {:try_start_3c .. :try_end_6a} :catch_6c

    goto :goto_5d

    .line 852
    .end local v4    # "rules":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "it":Landroid/icu/util/UResourceBundleIterator;
    :cond_6b
    goto :goto_6d

    .line 851
    :catch_6c
    move-exception v4

    .line 856
    :goto_6d
    sget-object v4, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    add-int/lit8 v5, p2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 857
    .local v4, "locNamesBundle":Landroid/icu/util/UResourceBundle;
    if-eqz v4, :cond_90

    .line 858
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v5

    new-array v3, v5, [[Ljava/lang/String;

    .line 859
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_80
    array-length v6, v3

    if-ge v5, v6, :cond_90

    .line 860
    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 859
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 865
    .end local v5    # "i":I
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .line 708
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 593
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 599
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 606
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 619
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 629
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 636
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 642
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 648
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 688
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 689
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 690
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 691
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 709
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 710
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 767
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 593
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 599
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 606
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 619
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 629
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 636
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 642
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 648
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 688
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 689
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 690
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 691
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 768
    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 769
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 752
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 753
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .registers 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 593
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 599
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 606
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 619
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 629
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 636
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 642
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 648
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 688
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 689
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 690
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 691
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 735
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 736
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;[[Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 796
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 593
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 599
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 606
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 619
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 629
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 636
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 642
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 648
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 688
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 689
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 690
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 691
    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 797
    iput-object p3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 798
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;I)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # I

    .line 813
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 814
    return-void
.end method

.method private greylist-max-o adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "result"    # Ljava/lang/String;

    .line 1998
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    .line 1999
    .local v0, "capitalization":Landroid/icu/text/DisplayContext;
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_48

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 2000
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2002
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_31

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_29

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v1, :cond_31

    :cond_29
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_48

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v1, :cond_48

    .line 2005
    :cond_31
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v1, :cond_3d

    .line 2007
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 2009
    :cond_3d
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2013
    :cond_48
    return-object p1
.end method

.method private greylist-max-o extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "specialName"    # Ljava/lang/String;

    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1636
    .local v1, "lp":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3f

    .line 1640
    if-eqz v1, :cond_14

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_3f

    .line 1644
    :cond_14
    const-string v3, ";%"

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1646
    .local v3, "lpEnd":I
    if-ne v3, v2, :cond_22

    .line 1647
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 1649
    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 1650
    .local v2, "lpStart":I
    :goto_27
    if-ge v2, v3, :cond_36

    .line 1651
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1652
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1656
    :cond_36
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1659
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1662
    .end local v2    # "lpStart":I
    .end local v3    # "lpEnd":I
    :cond_3f
    return-object v0
.end method

.method private greylist-max-o format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # D
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 1924
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_32

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1926
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getMaximumFractionDigits()I

    move-result v1

    iget v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    move-wide v2, p1

    goto :goto_33

    .line 1928
    :cond_32
    move-wide v2, p1

    .end local p1    # "number":D
    .local v2, "number":D
    :goto_33
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    .end local p3    # "ruleSet":Landroid/icu/text/NFRuleSet;
    .local v1, "ruleSet":Landroid/icu/text/NFRuleSet;
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    .line 1929
    invoke-direct {p0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    .line 1930
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # J
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 1953
    .local v4, "result":Ljava/lang/StringBuilder;
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    .line 1955
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p1

    move-object v1, p3

    goto :goto_21

    .line 1958
    :cond_1a
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-object v1, p3

    .end local p1    # "number":J
    .end local p3    # "ruleSet":Landroid/icu/text/NFRuleSet;
    .local v1, "ruleSet":Landroid/icu/text/NFRuleSet;
    .local v2, "number":J
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    .line 1960
    :goto_21
    invoke-direct {p0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    .line 1961
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .registers 7
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 1051
    if-eqz p1, :cond_37

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v0, :cond_37

    .line 1052
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "localeNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 1054
    .local v3, "lname":Ljava/lang/String;
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_34

    .line 1055
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1056
    .local v4, "names":[Ljava/lang/String;
    if-eqz v4, :cond_2f

    .line 1057
    return-object v4

    .line 1059
    :cond_2f
    invoke-static {v3}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1060
    .end local v4    # "names":[Ljava/lang/String;
    goto :goto_1e

    .line 1053
    .end local v3    # "lname":Ljava/lang/String;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1063
    .end local v0    # "localeNames":[Ljava/lang/String;
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o init(Ljava/lang/String;[[Ljava/lang/String;)V
    .registers 16
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "localizations"    # [[Ljava/lang/String;

    .line 1674
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    .line 1681
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1688
    .local v0, "descBuf":Ljava/lang/StringBuilder;
    const-string v1, "%%lenient-parse:"

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    .line 1689
    const-string v1, "%%post-process:"

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    .line 1694
    const/4 v1, 0x1

    .line 1695
    .local v1, "numRuleSets":I
    const/4 v2, 0x0

    .line 1696
    .local v2, "p":I
    :goto_19
    const-string v3, ";%"

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28

    .line 1697
    add-int/lit8 v1, v1, 0x1

    .line 1698
    add-int/lit8 v2, v2, 0x2

    goto :goto_19

    .line 1702
    :cond_28
    new-array v4, v1, [Landroid/icu/text/NFRuleSet;

    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 1703
    new-instance v4, Ljava/util/HashMap;

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 1704
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1708
    const/4 v4, 0x0

    .line 1717
    .local v4, "publicRuleSetCount":I
    new-array v5, v1, [Ljava/lang/String;

    .line 1719
    .local v5, "ruleSetDescriptions":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1720
    .local v6, "curRuleSet":I
    const/4 v7, 0x0

    .line 1722
    .local v7, "start":I
    :goto_3f
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v8, v8

    const-string v9, "%%"

    if-ge v6, v8, :cond_99

    .line 1723
    invoke-virtual {v0, v3, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1724
    if-gez v2, :cond_53

    .line 1725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move v2, v8

    .line 1727
    :cond_53
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1728
    new-instance v8, Landroid/icu/text/NFRuleSet;

    invoke-direct {v8, p0, v5, v6}, Landroid/icu/text/NFRuleSet;-><init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V

    .line 1729
    .local v8, "ruleSet":Landroid/icu/text/NFRuleSet;
    iget-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aput-object v8, v10, v6

    .line 1730
    invoke-virtual {v8}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1731
    .local v10, "currentName":Ljava/lang/String;
    iget-object v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v11, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_94

    .line 1733
    add-int/lit8 v4, v4, 0x1

    .line 1734
    iget-object v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez v9, :cond_81

    .line 1735
    const-string v9, "%spellout-numbering"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_92

    :cond_81
    nop

    .line 1736
    const-string v9, "%digits-ordinal"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_92

    .line 1737
    const-string v9, "%duration"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1739
    :cond_92
    iput-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1742
    :cond_94
    add-int/lit8 v6, v6, 0x1

    .line 1743
    add-int/lit8 v7, v2, 0x1

    .line 1744
    .end local v8    # "ruleSet":Landroid/icu/text/NFRuleSet;
    .end local v10    # "currentName":Ljava/lang/String;
    goto :goto_3f

    .line 1759
    :cond_99
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_bc

    .line 1760
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_a2
    if-ltz v3, :cond_bc

    .line 1761
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 1762
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v8, v8, v3

    iput-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1763
    goto :goto_bc

    .line 1760
    :cond_b9
    add-int/lit8 v3, v3, -0x1

    goto :goto_a2

    .line 1767
    .end local v3    # "i":I
    :cond_bc
    :goto_bc
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_cb

    .line 1768
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v3, v8

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1773
    :cond_cb
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_cc
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v8, v8

    if-ge v3, v8, :cond_dd

    .line 1774
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v8, v8, v3

    aget-object v10, v5, v3

    invoke-virtual {v8, v10}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;)V

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 1781
    .end local v3    # "i":I
    :cond_dd
    new-array v3, v4, [Ljava/lang/String;

    .line 1782
    .local v3, "publicRuleSetTemp":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1783
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_e5
    if-ltz v8, :cond_105

    .line 1784
    iget-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_102

    .line 1785
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "publicRuleSetCount":I
    .local v10, "publicRuleSetCount":I
    iget-object v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    move v4, v10

    .line 1783
    .end local v10    # "publicRuleSetCount":I
    .restart local v4    # "publicRuleSetCount":I
    :cond_102
    add-int/lit8 v8, v8, -0x1

    goto :goto_e5

    .line 1789
    .end local v8    # "i":I
    :cond_105
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    if-eqz v8, :cond_14b

    .line 1792
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_10a
    iget-object v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_13f

    .line 1793
    iget-object v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    aget-object v9, v9, v8

    .line 1794
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_114
    array-length v11, v3

    if-ge v10, v11, :cond_126

    .line 1795
    aget-object v11, v3, v10

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_123

    .line 1796
    nop

    .line 1792
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "j":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    .line 1794
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "j":I
    :cond_123
    add-int/lit8 v10, v10, 0x1

    goto :goto_114

    .line 1799
    .end local v10    # "j":I
    :cond_126
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "did not find public rule set: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1802
    .end local v8    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_13f
    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_14d

    .line 1804
    :cond_14b
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1806
    :goto_14d
    return-void
.end method

.method private greylist-max-o initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .registers 8
    .param p1, "theLocale"    # Landroid/icu/util/ULocale;

    .line 1839
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 1841
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    :try_start_8
    const-string v1, "contextTransforms/number-spellout"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 1842
    .local v1, "rdb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v2

    .line 1843
    .local v2, "intVector":[I
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_28

    .line 1844
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_1e

    move v4, v5

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    iput-boolean v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 1845
    aget v4, v2, v5

    if-eqz v4, :cond_26

    move v3, v5

    :cond_26
    iput-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z
    :try_end_28
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_28} :catch_29

    .line 1849
    .end local v1    # "rdb":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "intVector":[I
    :cond_28
    goto :goto_2a

    .line 1847
    :catch_29
    move-exception v1

    .line 1850
    :goto_2a
    return-void
.end method

.method private greylist-max-o initLocalizations([[Ljava/lang/String;)V
    .registers 11
    .param p1, "localizations"    # [[Ljava/lang/String;

    .line 1813
    if-eqz p1, :cond_68

    .line 1814
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1816
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1817
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_13
    array-length v3, p1

    if-ge v2, v3, :cond_60

    .line 1818
    aget-object v3, p1, v2

    .line 1819
    .local v3, "data":[Ljava/lang/String;
    aget-object v4, v3, v0

    .line 1820
    .local v4, "loc":Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/String;

    .line 1821
    .local v5, "names":[Ljava/lang/String;
    array-length v7, v5

    iget-object v8, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_2f

    .line 1825
    array-length v7, v5

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1826
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    .end local v3    # "data":[Ljava/lang/String;
    .end local v4    # "loc":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1822
    .restart local v3    # "data":[Ljava/lang/String;
    .restart local v4    # "loc":Ljava/lang/String;
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "public name length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != localized names["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1829
    .end local v2    # "i":I
    .end local v3    # "data":[Ljava/lang/String;
    .end local v4    # "loc":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    :cond_60
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 1830
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    .line 1833
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_68
    return-void
.end method

.method private greylist-max-o postProcess(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    .line 1968
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 1969
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    if-nez v0, :cond_7b

    .line 1970
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1971
    .local v0, "ix":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 1972
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1974
    :cond_19
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1976
    .local v1, "ppClassName":Ljava/lang/String;
    :try_start_24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1977
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBNFPostProcessor;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    .line 1978
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-interface {v3, p0, v4}, Landroid/icu/text/RBNFPostProcessor;->init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37} :catch_38

    .line 1987
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_7b

    .line 1980
    :catch_38
    move-exception v2

    .line 1982
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    if-eqz v3, :cond_75

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not locate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1983
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1982
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1984
    :cond_75
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    .line 1985
    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    .line 1986
    return-void

    .line 1990
    .end local v0    # "ix":I
    .end local v1    # "ppClassName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    invoke-interface {v0, p1, p2}, Landroid/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V

    .line 1992
    :cond_80
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "description":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    .line 996
    .local v1, "loc":Landroid/icu/util/ULocale;
    goto :goto_13

    .line 994
    .end local v1    # "loc":Landroid/icu/util/ULocale;
    :catch_b
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    move-object v1, v2

    .line 998
    .local v1, "loc":Landroid/icu/util/ULocale;
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1a

    .line 1000
    goto :goto_1b

    .line 999
    :catch_1a
    move-exception v2

    .line 1006
    :goto_1b
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {v2, v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 1007
    .local v2, "temp":Landroid/icu/text/RuleBasedNumberFormat;
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    .line 1008
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 1009
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1010
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1011
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1012
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1013
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    .line 1014
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1015
    iget-object v3, v2, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 1016
    return-void
.end method

.method private greylist-max-o stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p1, "description"    # Ljava/lang/String;

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1863
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1866
    .local v1, "descriptionLength":I
    const/4 v2, 0x0

    .line 1867
    .local v2, "start":I
    :goto_a
    if-ge v2, v1, :cond_45

    .line 1869
    :goto_c
    if-ge v2, v1, :cond_1b

    .line 1870
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1872
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1876
    :cond_1b
    const/16 v3, 0x3b

    if-ge v2, v1, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_28

    .line 1877
    add-int/lit8 v2, v2, 0x1

    .line 1878
    goto :goto_a

    .line 1883
    :cond_28
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1884
    .local v3, "p":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    .line 1887
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    goto :goto_45

    .line 1890
    :cond_37
    if-ge v3, v1, :cond_45

    .line 1891
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    add-int/lit8 v2, v3, 0x1

    .line 1901
    .end local v3    # "p":I
    goto :goto_a

    .line 1902
    :cond_45
    :goto_45
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 978
    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 979
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 900
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;
    .registers 6
    .param p1, "pluralType"    # Landroid/icu/text/PluralRules$PluralType;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 1593
    new-instance v0, Landroid/icu/text/PluralFormat;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 915
    instance-of v0, p1, Landroid/icu/text/RuleBasedNumberFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 916
    return v1

    .line 920
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/RuleBasedNumberFormat;

    .line 923
    .local v0, "that2":Landroid/icu/text/RuleBasedNumberFormat;
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v3, v0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iget-boolean v3, v0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eq v2, v3, :cond_1a

    goto :goto_3d

    .line 928
    :cond_1a
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, v2

    iget-object v3, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v3

    if-eq v2, v3, :cond_23

    .line 929
    return v1

    .line 931
    :cond_23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    .line 932
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v3, v3, v2

    iget-object v4, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 933
    return v1

    .line 931
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 937
    .end local v2    # "i":I
    :cond_3b
    const/4 v1, 0x1

    return v1

    .line 924
    :cond_3d
    :goto_3d
    return v1
.end method

.method greylist-max-o findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NFRuleSet;

    .line 2024
    .local v0, "result":Landroid/icu/text/NFRuleSet;
    if-eqz v0, :cond_b

    .line 2027
    return-object v0

    .line 2025
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No rule set named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o format(DLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # D
    .param p3, "ruleSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1137
    const-string v0, "%%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1140
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use internal rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o format(JLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # J
    .param p3, "ruleSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1155
    const-string v0, "%%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1158
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use internal rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "ignore"    # Ljava/text/FieldPosition;

    .line 1177
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1178
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 1181
    :cond_14
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    :goto_1d
    return-object p3
.end method

.method public whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "ignore"    # Ljava/text/FieldPosition;

    .line 1205
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1206
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 1209
    :cond_14
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    :goto_1d
    return-object p3
.end method

.method public whitelist test-api format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1250
    sget-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_29

    sget-object v0, Landroid/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_11

    goto :goto_29

    .line 1255
    :cond_11
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v0

    if-nez v0, :cond_20

    .line 1256
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_20
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 1253
    :cond_29
    :goto_29
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1235
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1223
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDecimalFormat()Landroid/icu/text/DecimalFormat;
    .registers 4

    .line 1584
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-nez v0, :cond_16

    .line 1586
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1589
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_16
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    return-object v0
.end method

.method greylist-max-o getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .registers 3

    .line 1577
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_d

    .line 1578
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1580
    :cond_d
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    return-object v0
.end method

.method greylist-max-o getDefaultInfinityRule()Landroid/icu/text/NFRule;
    .registers 4

    .line 1601
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_26

    .line 1602
    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1604
    :cond_26
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    return-object v0
.end method

.method greylist-max-o getDefaultNaNRule()Landroid/icu/text/NFRule;
    .registers 4

    .line 1612
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_26

    .line 1613
    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 1615
    :cond_26
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    return-object v0
.end method

.method greylist-max-o getDefaultRuleSet()Landroid/icu/text/NFRuleSet;
    .registers 2

    .line 1547
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    return-object v0
.end method

.method public greylist-max-o getDefaultRuleSetName()Ljava/lang/String;
    .registers 2

    .line 1444
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1445
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1447
    :cond_13
    const-string v0, ""

    return-object v0
.end method

.method greylist-max-o getLenientScanner()Landroid/icu/text/RbnfLenientScanner;
    .registers 4

    .line 1557
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_13

    .line 1558
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;

    move-result-object v0

    .line 1559
    .local v0, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    if-eqz v0, :cond_13

    .line 1560
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/icu/text/RbnfLenientScannerProvider;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    move-result-object v1

    return-object v1

    .line 1563
    .end local v0    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;
    .registers 3

    .line 1385
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    if-nez v0, :cond_20

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    if-nez v0, :cond_20

    .line 1387
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    .line 1388
    const-string v0, "android.icu.impl.text.RbnfScannerProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1389
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RbnfLenientScannerProvider;

    .line 1390
    .local v1, "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    invoke-virtual {p0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 1394
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "provider":Landroid/icu/text/RbnfLenientScannerProvider;
    goto :goto_20

    .line 1392
    :catch_1f
    move-exception v0

    .line 1397
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    return-object v0
.end method

.method public whitelist test-api getRoundingMode()I
    .registers 2

    .line 1513
    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return v0
.end method

.method public greylist-max-o getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "ruleSetName"    # Ljava/lang/String;

    .line 1126
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 8
    .param p1, "ruleSetName"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/icu/util/ULocale;

    .line 1106
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1107
    .local v0, "rsnames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 1108
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1109
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_17

    .line 1111
    aget-object v3, v2, v1

    return-object v3

    .line 1113
    :cond_17
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1107
    .end local v2    # "names":[Ljava/lang/String;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1116
    .end local v1    # "ix":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized rule set name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getRuleSetDisplayNameLocales()[Landroid/icu/util/ULocale;
    .registers 7

    .line 1037
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v0, :cond_2f

    .line 1038
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1039
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1040
    .local v1, "locales":[Ljava/lang/String;
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1041
    array-length v2, v1

    new-array v2, v2, [Landroid/icu/util/ULocale;

    .line 1042
    .local v2, "result":[Landroid/icu/util/ULocale;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v1

    if-ge v3, v4, :cond_2e

    .line 1043
    new-instance v4, Landroid/icu/util/ULocale;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1042
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1045
    .end local v3    # "i":I
    :cond_2e
    return-object v2

    .line 1047
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "locales":[Ljava/lang/String;
    .end local v2    # "result":[Landroid/icu/util/ULocale;
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getRuleSetDisplayNames()[Ljava/lang/String;
    .registers 2

    .line 1094
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .registers 6
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 1076
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1078
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1080
    :cond_d
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    move-result-object v0

    .line 1081
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 1082
    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1081
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1084
    .end local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method public greylist-max-o getRuleSetNames()[Ljava/lang/String;
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 946
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o lenientParseEnabled()Z
    .registers 2

    .line 1359
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 1283
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1284
    .local v2, "workingText":Ljava/lang/String;
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1285
    .local v3, "workingPos":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    .line 1289
    .local v1, "tempResult":Ljava/lang/Number;
    sget-object v4, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1290
    .local v4, "result":Ljava/lang/Number;
    new-instance v5, Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v8, v5

    .line 1296
    .local v8, "highWaterMark":Ljava/text/ParsePosition;
    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    move-object v9, v1

    move-object v10, v4

    move v11, v5

    .end local v1    # "tempResult":Ljava/lang/Number;
    .end local v4    # "result":Ljava/lang/Number;
    .local v9, "tempResult":Ljava/lang/Number;
    .local v10, "result":Ljava/lang/Number;
    .local v11, "i":I
    :goto_23
    if-ltz v11, :cond_6c

    .line 1298
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->isParseable()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1299
    goto :goto_69

    .line 1304
    :cond_3a
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v1 .. v7}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DII)Ljava/lang/Number;

    move-result-object v9

    .line 1305
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-le v1, v4, :cond_5b

    .line 1306
    move-object v10, v9

    .line 1307
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1316
    :cond_5b
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_66

    .line 1317
    goto :goto_6c

    .line 1322
    :cond_66
    invoke-virtual {v3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1296
    :cond_69
    :goto_69
    add-int/lit8 v11, v11, -0x1

    goto :goto_23

    .line 1327
    .end local v11    # "i":I
    :cond_6c
    :goto_6c
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1332
    return-object v10
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 3
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 1490
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 1491
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_17

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_f

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_17

    .line 1493
    :cond_f
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 1496
    :cond_17
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_37

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_2f

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_27

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v0, :cond_2f

    :cond_27
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_37

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v0, :cond_37

    .line 1499
    :cond_2f
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 1501
    :cond_37
    return-void
.end method

.method public greylist-max-o setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 7
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 1458
    if-eqz p1, :cond_38

    .line 1459
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1460
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_15

    .line 1461
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1463
    :cond_15
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1464
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    .line 1465
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    .line 1467
    :cond_1f
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-eqz v0, :cond_28

    .line 1468
    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    .line 1469
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    .line 1473
    :cond_28
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_38

    aget-object v3, v0, v2

    .line 1474
    .local v3, "ruleSet":Landroid/icu/text/NFRuleSet;
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3, v4}, Landroid/icu/text/NFRuleSet;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1473
    .end local v3    # "ruleSet":Landroid/icu/text/NFRuleSet;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1477
    :cond_38
    return-void
.end method

.method public greylist-max-o setDefaultRuleSet(Ljava/lang/String;)V
    .registers 5
    .param p1, "ruleSetName"    # Ljava/lang/String;

    .line 1407
    if-nez p1, :cond_5f

    .line 1408
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 1409
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_6d

    .line 1411
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1412
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v0, v0

    .line 1413
    .local v0, "n":I
    :goto_19
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_46

    .line 1414
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "currentName":Ljava/lang/String;
    const-string v2, "%spellout-numbering"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1416
    const-string v2, "%digits-ordinal"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1417
    const-string v2, "%duration"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_3f

    .line 1422
    .end local v1    # "currentName":Ljava/lang/String;
    :cond_3e
    goto :goto_19

    .line 1419
    .restart local v1    # "currentName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v0

    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1420
    return-void

    .line 1424
    .end local v1    # "currentName":Ljava/lang/String;
    :cond_46
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v0, v1

    .line 1425
    :cond_49
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5e

    .line 1426
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1427
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1428
    nop

    .line 1431
    .end local v0    # "n":I
    :cond_5e
    goto :goto_6d

    .line 1432
    :cond_5f
    const-string v0, "%%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1435
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    .line 1437
    :goto_6d
    return-void

    .line 1433
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot use private rule set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setLenientParseMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1349
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 1350
    return-void
.end method

.method public greylist-max-o setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    .registers 2
    .param p1, "scannerProvider"    # Landroid/icu/text/RbnfLenientScannerProvider;

    .line 1371
    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    .line 1372
    return-void
.end method

.method public whitelist test-api setRoundingMode(I)V
    .registers 5
    .param p1, "roundingMode"    # I

    .line 1528
    if-ltz p1, :cond_8

    const/4 v0, 0x7

    if-gt p1, v0, :cond_8

    .line 1532
    iput p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 1533
    return-void

    .line 1529
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rounding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 963
    .local v4, "ruleSet":Landroid/icu/text/NFRuleSet;
    invoke-virtual {v4}, Landroid/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .end local v4    # "ruleSet":Landroid/icu/text/NFRuleSet;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 965
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
