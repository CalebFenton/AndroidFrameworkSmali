.class Landroid/icu/text/RuleBasedTransliterator$Data;
.super Ljava/lang/Object;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field public ruleSet:Landroid/icu/text/TransliterationRuleSet;

.field variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field variables:[Ljava/lang/Object;

.field variablesBase:C


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 373
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    #@a
    .line 374
    new-instance v0, Landroid/icu/text/TransliterationRuleSet;

    #@c
    invoke-direct {v0}, Landroid/icu/text/TransliterationRuleSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@11
    .line 372
    return-void
.end method


# virtual methods
.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2
    .param p1, "standIn"    # I

    #@0
    .prologue
    .line 416
    iget-char v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@2
    sub-int v0, p1, v1

    #@4
    .line 417
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 418
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@d
    aget-object v1, v1, v0

    #@f
    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    #@11
    .line 417
    :goto_0
    return-object v1

    #@12
    .line 418
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;
    .locals 2
    .param p1, "standIn"    # I

    #@0
    .prologue
    .line 426
    iget-char v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@2
    sub-int v0, p1, v1

    #@4
    .line 427
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 428
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@d
    aget-object v1, v1, v0

    #@f
    check-cast v1, Landroid/icu/text/UnicodeReplacer;

    #@11
    .line 427
    :goto_0
    return-object v1

    #@12
    .line 428
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method
