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
.field public greylist-max-o ruleSet:Landroid/icu/text/TransliterationRuleSet;

.field greylist-max-o variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field greylist-max-o variables:[Ljava/lang/Object;

.field greylist-max-o variablesBase:C


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 125
    new-instance v0, Landroid/icu/text/TransliterationRuleSet;

    invoke-direct {v0}, Landroid/icu/text/TransliterationRuleSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    .line 126
    return-void
.end method


# virtual methods
.method public greylist-max-o lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .registers 4
    .param p1, "standIn"    # I

    .line 167
    iget-char v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v0

    .line 168
    .local v0, "i":I
    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 169
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 168
    :goto_13
    return-object v1
.end method

.method public greylist-max-o lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;
    .registers 4
    .param p1, "standIn"    # I

    .line 177
    iget-char v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v0

    .line 178
    .local v0, "i":I
    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 179
    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/text/UnicodeReplacer;

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 178
    :goto_13
    return-object v1
.end method
