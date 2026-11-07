.class public Landroid/icu/impl/number/MutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;
.implements Landroid/icu/impl/number/AffixUtils$SymbolProvider;
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist approximately:Z

.field greylist-max-o currency:Landroid/icu/util/Currency;

.field blacklist currentAffix:Ljava/lang/StringBuilder;

.field blacklist field:Landroid/icu/text/NumberFormat$Field;

.field final greylist-max-o isStrong:Z

.field greylist-max-o parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field greylist-max-o patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

.field greylist-max-o perMilleReplacesPercent:Z

.field greylist-max-o plural:Landroid/icu/impl/StandardPlural;

.field greylist-max-o rules:Landroid/icu/text/PluralRules;

.field greylist-max-o signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

.field blacklist signum:Landroid/icu/impl/number/Modifier$Signum;

.field greylist-max-o symbols:Landroid/icu/text/DecimalFormatSymbols;

.field greylist-max-o unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "isStrong"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    .line 73
    return-void
.end method

.method private blacklist createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;
    .registers 10
    .param p1, "a"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "b"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 210
    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->clear()Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->insertPrefix(Landroid/icu/impl/FormattedStringBuilder;I)I

    .line 211
    invoke-virtual {p2}, Landroid/icu/impl/FormattedStringBuilder;->clear()Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->insertSuffix(Landroid/icu/impl/FormattedStringBuilder;I)I

    .line 212
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {v0}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 213
    new-instance v1, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;

    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {v0}, Landroid/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget-boolean v5, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    iget-object v6, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "a":Landroid/icu/impl/FormattedStringBuilder;
    .end local p2    # "b":Landroid/icu/impl/FormattedStringBuilder;
    .local v2, "a":Landroid/icu/impl/FormattedStringBuilder;
    .local v3, "b":Landroid/icu/impl/FormattedStringBuilder;
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZLandroid/icu/text/DecimalFormatSymbols;)V

    return-object v1

    .line 215
    .end local v2    # "a":Landroid/icu/impl/FormattedStringBuilder;
    .end local v3    # "b":Landroid/icu/impl/FormattedStringBuilder;
    .restart local p1    # "a":Landroid/icu/impl/FormattedStringBuilder;
    .restart local p2    # "b":Landroid/icu/impl/FormattedStringBuilder;
    :cond_2b
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "a":Landroid/icu/impl/FormattedStringBuilder;
    .end local p2    # "b":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v2    # "a":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v3    # "b":Landroid/icu/impl/FormattedStringBuilder;
    new-instance p1, Landroid/icu/impl/number/ConstantMultiFieldModifier;

    iget-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {p2}, Landroid/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    invoke-direct {p1, v2, v3, p2, v0}, Landroid/icu/impl/number/ConstantMultiFieldModifier;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZ)V

    return-object p1
.end method

.method private blacklist insertPrefix(Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 5
    .param p1, "sb"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "position"    # I

    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 363
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->field:Landroid/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p0, v1}, Landroid/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Landroid/icu/impl/FormattedStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;Landroid/icu/text/NumberFormat$Field;)I

    move-result v0

    .line 364
    .local v0, "length":I
    return v0
.end method

.method private blacklist insertSuffix(Landroid/icu/impl/FormattedStringBuilder;I)I
    .registers 5
    .param p1, "sb"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "position"    # I

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 369
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->field:Landroid/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p0, v1}, Landroid/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Landroid/icu/impl/FormattedStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;Landroid/icu/text/NumberFormat$Field;)I

    move-result v0

    .line 370
    .local v0, "length":I
    return v0
.end method

.method private blacklist prepareAffix(Z)V
    .registers 10
    .param p1, "isPrefix"    # Z

    .line 381
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    .line 384
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->signum:Landroid/icu/impl/number/Modifier$Signum;

    .line 386
    invoke-static {v0, v2}, Landroid/icu/impl/number/PatternStringUtils;->resolveSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Landroid/icu/impl/number/Modifier$Signum;)Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v3

    iget-boolean v4, p0, Landroid/icu/impl/number/MutablePatternModifier;->approximately:Z

    iget-object v5, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    iget-boolean v6, p0, Landroid/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    iget-object v7, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    .line 384
    move v2, p1

    .end local p1    # "isPrefix":Z
    .local v2, "isPrefix":Z
    invoke-static/range {v1 .. v7}, Landroid/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Landroid/icu/impl/number/AffixPatternProvider;ZLandroid/icu/impl/number/PatternStringUtils$PatternSignType;ZLandroid/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    .line 391
    return-void
.end method


# virtual methods
.method public blacklist addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .registers 2
    .param p1, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 276
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 277
    return-object p0
.end method

.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 16
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/MutablePatternModifier;->insertPrefix(Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    .line 302
    .local v2, "prefixLen":I
    add-int v0, p3, v2

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/MutablePatternModifier;->insertSuffix(Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v4

    .line 304
    .local v4, "suffixLen":I
    const/4 v0, 0x0

    .line 305
    .local v0, "overwriteLen":I
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    invoke-interface {v1}, Landroid/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result v1

    if-nez v1, :cond_23

    .line 306
    add-int v6, p2, v2

    add-int v7, p3, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-object v5, p1

    .end local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .local v5, "output":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual/range {v5 .. v11}, Landroid/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result v0

    move p1, v0

    goto :goto_25

    .line 305
    .end local v5    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    :cond_23
    move-object v5, p1

    .end local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v5    # "output":Landroid/icu/impl/FormattedStringBuilder;
    move p1, v0

    .line 308
    .end local v0    # "overwriteLen":I
    .local p1, "overwriteLen":I
    :goto_25
    add-int v0, p3, v2

    add-int v3, v0, p1

    move-object v0, v5

    .end local v5    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .local v0, "output":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v5, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move v1, p2

    .end local p2    # "leftIndex":I
    .local v1, "leftIndex":I
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacing(Landroid/icu/impl/FormattedStringBuilder;IIIILandroid/icu/text/DecimalFormatSymbols;)I

    .line 314
    add-int p2, v2, p1

    add-int/2addr p2, v4

    return p2
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 343
    nop

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createImmutable()Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .registers 10

    .line 164
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 165
    .local v0, "a":Landroid/icu/impl/FormattedStringBuilder;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 166
    .local v1, "b":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {p0}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 168
    new-instance v2, Landroid/icu/impl/number/AdoptingModifierStore;

    invoke-direct {v2}, Landroid/icu/impl/number/AdoptingModifierStore;-><init>()V

    .line 169
    .local v2, "pm":Landroid/icu/impl/number/AdoptingModifierStore;
    sget-object v3, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/StandardPlural;

    .line 170
    .local v4, "plural":Landroid/icu/impl/StandardPlural;
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 171
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/icu/impl/number/AdoptingModifierStore;->setModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    .line 172
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 173
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/icu/impl/number/AdoptingModifierStore;->setModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    .line 174
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 175
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/icu/impl/number/AdoptingModifierStore;->setModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    .line 176
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 177
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/icu/impl/number/AdoptingModifierStore;->setModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V

    .line 178
    .end local v4    # "plural":Landroid/icu/impl/StandardPlural;
    goto :goto_1b

    .line 179
    :cond_60
    invoke-virtual {v2}, Landroid/icu/impl/number/AdoptingModifierStore;->freeze()V

    .line 180
    new-instance v3, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    iget-object v4, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-direct {v3, v2, v4}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Landroid/icu/impl/number/AdoptingModifierStore;Landroid/icu/text/PluralRules;)V

    return-object v3

    .line 183
    .end local v2    # "pm":Landroid/icu/impl/number/AdoptingModifierStore;
    :cond_6b
    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 184
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v2

    .line 185
    .local v2, "positive":Landroid/icu/impl/number/Modifier;
    sget-object v4, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v4, v3}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 186
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v4

    .line 187
    .local v4, "posZero":Landroid/icu/impl/number/Modifier;
    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v3}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 188
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v5

    .line 189
    .local v5, "negZero":Landroid/icu/impl/number/Modifier;
    sget-object v6, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v6, v3}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 190
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->createConstantModifier(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    .line 191
    .local v6, "negative":Landroid/icu/impl/number/Modifier;
    new-instance v7, Landroid/icu/impl/number/AdoptingModifierStore;

    invoke-direct {v7, v2, v4, v5, v6}, Landroid/icu/impl/number/AdoptingModifierStore;-><init>(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)V

    .line 192
    .local v7, "pm":Landroid/icu/impl/number/AdoptingModifierStore;
    new-instance v8, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    invoke-direct {v8, v7, v3}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Landroid/icu/impl/number/AdoptingModifierStore;Landroid/icu/text/PluralRules;)V

    return-object v8
.end method

.method public blacklist getCodePointCount()I
    .registers 4

    .line 328
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 329
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLandroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    .line 330
    .local v0, "result":I
    invoke-direct {p0, v1}, Landroid/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 331
    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    invoke-static {v2, v1, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLandroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    return v0
.end method

.method public blacklist getCurrencySymbolForUnitWidth()Ljava/lang/String;
    .registers 5

    .line 434
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v0, v1, :cond_d

    .line 435
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v0, v1, :cond_16

    .line 437
    const-string v0, ""

    return-object v0

    .line 440
    :cond_16
    sget-object v0, Landroid/icu/impl/number/MutablePatternModifier$1;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v1}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 454
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 451
    :pswitch_29
    const/4 v0, 0x5

    .line 452
    .local v0, "selector":I
    goto :goto_31

    .line 448
    .end local v0    # "selector":I
    :pswitch_2b
    const/4 v0, 0x4

    .line 449
    .restart local v0    # "selector":I
    goto :goto_31

    .line 445
    .end local v0    # "selector":I
    :pswitch_2d
    const/4 v0, 0x3

    .line 446
    .restart local v0    # "selector":I
    goto :goto_31

    .line 442
    .end local v0    # "selector":I
    :pswitch_2f
    const/4 v0, 0x0

    .line 443
    .restart local v0    # "selector":I
    nop

    .line 456
    :goto_31
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
    .end packed-switch
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 350
    nop

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 3

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 321
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    invoke-static {v1, v0, p0}, Landroid/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLandroid/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    .line 322
    .local v0, "result":I
    return v0
.end method

.method public blacklist getSymbol(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "type"    # I

    .line 398
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_60

    .line 425
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 400
    :pswitch_a
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_11
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :pswitch_18
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getApproximatelySignString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_1f
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_26
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :pswitch_2d
    invoke-virtual {p0}, Landroid/icu/impl/number/MutablePatternModifier;->getCurrencySymbolForUnitWidth()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_32
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :pswitch_39
    nop

    .line 418
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 419
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v3}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    .line 418
    return-object v0

    .line 421
    :pswitch_4e
    const-string v0, "\ufffd"

    return-object v0

    .line 423
    :pswitch_51
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch -0xa
        :pswitch_51
        :pswitch_4e
        :pswitch_39
        :pswitch_32
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
        :pswitch_18
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->isStrong:Z

    return v0
.end method

.method public blacklist needsPlurals()Z
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    const/4 v1, -0x8

    invoke-interface {v0, v1}, Landroid/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v0

    return v0
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 5
    .param p1, "fq"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 282
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 283
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    if-eqz v1, :cond_f

    .line 284
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v1, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 286
    :cond_f
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    if-eqz v1, :cond_14

    .line 287
    return-object v0

    .line 289
    :cond_14
    invoke-virtual {p0}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 290
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v2, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v1, v2, p1}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 291
    .local v1, "pluralForm":Landroid/icu/impl/StandardPlural;
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->signum()Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 292
    .end local v1    # "pluralForm":Landroid/icu/impl/StandardPlural;
    goto :goto_32

    .line 293
    :cond_2a
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->signum()Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/number/MutablePatternModifier;->setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V

    .line 295
    :goto_32
    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    .line 296
    return-object v0
.end method

.method public blacklist setNumberProperties(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)V
    .registers 3
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 139
    nop

    .line 140
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signum:Landroid/icu/impl/number/Modifier$Signum;

    .line 141
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->plural:Landroid/icu/impl/StandardPlural;

    .line 142
    return-void
.end method

.method public blacklist setPatternAttributes(Landroid/icu/number/NumberFormatter$SignDisplay;ZZ)V
    .registers 4
    .param p1, "signDisplay"    # Landroid/icu/number/NumberFormatter$SignDisplay;
    .param p2, "perMille"    # Z
    .param p3, "approximately"    # Z

    .line 99
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->signDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 100
    iput-boolean p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    .line 101
    iput-boolean p3, p0, Landroid/icu/impl/number/MutablePatternModifier;->approximately:Z

    .line 102
    return-void
.end method

.method public blacklist setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/text/NumberFormat$Field;)V
    .registers 3
    .param p1, "patternInfo"    # Landroid/icu/impl/number/AffixPatternProvider;
    .param p2, "field"    # Landroid/icu/text/NumberFormat$Field;

    .line 84
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->patternInfo:Landroid/icu/impl/number/AffixPatternProvider;

    .line 85
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->field:Landroid/icu/text/NumberFormat$Field;

    .line 86
    return-void
.end method

.method public blacklist setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V
    .registers 5
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "currency"    # Landroid/icu/util/Currency;
    .param p3, "unitWidth"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;

    .line 122
    nop

    .line 123
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 124
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier;->currency:Landroid/icu/util/Currency;

    .line 125
    iput-object p3, p0, Landroid/icu/impl/number/MutablePatternModifier;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 126
    iput-object p4, p0, Landroid/icu/impl/number/MutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    .line 127
    return-void
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 357
    nop

    .line 358
    const/4 v0, 0x0

    return v0
.end method
