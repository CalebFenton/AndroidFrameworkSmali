.class public Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/MutablePatternModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutablePatternModifier"
.end annotation


# instance fields
.field greylist-max-o parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final blacklist pm:Landroid/icu/impl/number/AdoptingModifierStore;

.field final greylist-max-o rules:Landroid/icu/text/PluralRules;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/number/AdoptingModifierStore;Landroid/icu/text/PluralRules;)V
    .registers 4
    .param p1, "pm"    # Landroid/icu/impl/number/AdoptingModifierStore;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/AdoptingModifierStore;

    .line 231
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 233
    return-void
.end method


# virtual methods
.method public blacklist addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .registers 2
    .param p1, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 236
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 237
    return-object p0
.end method

.method public blacklist applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 6
    .param p1, "micros"    # Landroid/icu/impl/number/MicroProps;
    .param p2, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 254
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_11

    .line 255
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/AdoptingModifierStore;

    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->signum()Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/AdoptingModifierStore;->getModifierWithoutPlural(Landroid/icu/impl/number/Modifier$Signum;)Landroid/icu/impl/number/Modifier;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    goto :goto_25

    .line 257
    :cond_11
    iget-object v0, p1, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v0, v1, p2}, Landroid/icu/impl/number/RoundingUtils;->getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 258
    .local v0, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/AdoptingModifierStore;

    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->signum()Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/number/AdoptingModifierStore;->getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;

    move-result-object v1

    iput-object v1, p1, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    .line 260
    .end local v0    # "pluralForm":Landroid/icu/impl/StandardPlural;
    :goto_25
    return-void
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 242
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 243
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    if-eqz v1, :cond_f

    .line 244
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v1, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 246
    :cond_f
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    if-eqz v1, :cond_14

    .line 247
    return-object v0

    .line 249
    :cond_14
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 250
    return-object v0
.end method
