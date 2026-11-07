.class Landroid/icu/number/ScientificNotation$ScientificHandler;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;
.implements Landroid/icu/impl/number/MultiplierProducer;
.implements Landroid/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificHandler"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist exponent:I

.field final blacklist notation:Landroid/icu/number/ScientificNotation;

.field final blacklist parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final blacklist precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

.field final blacklist symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoApply(Landroid/icu/number/ScientificNotation$ScientificHandler;ILandroid/icu/impl/FormattedStringBuilder;I)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->doApply(ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    const-class v0, Landroid/icu/number/ScientificNotation;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 9
    .param p1, "notation"    # Landroid/icu/number/ScientificNotation;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "safe"    # Z
    .param p4, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    .line 139
    iput-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 140
    iput-object p4, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 142
    if-eqz p3, :cond_26

    .line 144
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/icu/number/ScientificNotation$ScientificModifier;

    iput-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    .line 145
    const/16 v0, -0xc

    .local v0, "i":I
    :goto_13
    const/16 v1, 0xc

    if-gt v0, v1, :cond_25

    .line 146
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    add-int/lit8 v2, v0, 0xc

    new-instance v3, Landroid/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {v3, v0, p0}, Landroid/icu/number/ScientificNotation$ScientificModifier;-><init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V

    aput-object v3, v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .end local v0    # "i":I
    :cond_25
    goto :goto_29

    .line 149
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    .line 151
    :goto_29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/ScientificNotation-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/number/ScientificNotation$ScientificHandler;-><init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method private blacklist doApply(ILandroid/icu/impl/FormattedStringBuilder;I)I
    .registers 11
    .param p1, "exponent"    # I
    .param p2, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "rightIndex"    # I

    .line 269
    move v0, p3

    .line 271
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    if-gez p1, :cond_26

    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-object v1, v1, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v1, v2, :cond_26

    .line 273
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3d

    .line 274
    :cond_26
    if-ltz p1, :cond_3d

    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-object v1, v1, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v1, v2, :cond_3d

    .line 275
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_3d
    :goto_3d
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 279
    .local v1, "disp":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_42
    iget-object v3, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v3, v3, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    if-lt v2, v3, :cond_4e

    if-lez v1, :cond_4b

    goto :goto_4e

    .line 284
    .end local v2    # "j":I
    :cond_4b
    sub-int v2, v0, p3

    return v2

    .line 280
    .restart local v2    # "j":I
    :cond_4e
    :goto_4e
    rem-int/lit8 v3, v1, 0xa

    .line 281
    .local v3, "d":I
    iget-object v4, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    .line 282
    .local v4, "digitString":Ljava/lang/String;
    sub-int v5, v0, v2

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v5, v4, v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v0, v5

    .line 279
    .end local v3    # "d":I
    .end local v4    # "digitString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v1, v1, 0xa

    goto :goto_42
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 5
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 264
    iget v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    invoke-direct {p0, v0, p1, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->doApply(ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v0

    return v0
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 244
    nop

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodePointCount()I
    .registers 2

    .line 232
    const/16 v0, 0x3e7

    return v0
.end method

.method public blacklist getMultiplier(I)I
    .registers 6
    .param p1, "magnitude"    # I

    .line 206
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v0, v0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    .line 208
    .local v0, "interval":I
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-boolean v1, v1, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 210
    move v1, v0

    .local v1, "digitsShown":I
    goto :goto_16

    .line 211
    .end local v1    # "digitsShown":I
    :cond_d
    if-gt v0, v2, :cond_11

    .line 213
    const/4 v1, 0x1

    .restart local v1    # "digitsShown":I
    goto :goto_16

    .line 216
    .end local v1    # "digitsShown":I
    :cond_11
    rem-int v1, p1, v0

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 218
    .restart local v1    # "digitsShown":I
    :goto_16
    sub-int v3, v1, p1

    sub-int/2addr v3, v2

    return v3
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 251
    nop

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 155
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 156
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    nop

    .line 159
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_6d

    .line 166
    :cond_14
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 167
    iget-object v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget-boolean v1, v1, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    if-eqz v1, :cond_33

    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    instance-of v1, v1, Landroid/icu/number/Precision$SignificantRounderImpl;

    if-eqz v1, :cond_33

    .line 169
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    check-cast v1, Landroid/icu/number/Precision$SignificantRounderImpl;

    iget-object v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->notation:Landroid/icu/number/ScientificNotation;

    iget v2, v2, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    invoke-virtual {v1, p1, v2}, Landroid/icu/number/Precision$SignificantRounderImpl;->apply(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 171
    const/4 v1, 0x0

    .local v1, "exponent":I
    goto :goto_41

    .line 173
    .end local v1    # "exponent":I
    :cond_33
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v1, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 174
    const/4 v1, 0x0

    .restart local v1    # "exponent":I
    goto :goto_41

    .line 177
    .end local v1    # "exponent":I
    :cond_3a
    iget-object v1, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v1, p1, p0}, Landroid/icu/number/Precision;->chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I

    move-result v1

    neg-int v1, v1

    .line 181
    .restart local v1    # "exponent":I
    :goto_41
    iget-object v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    if-eqz v2, :cond_56

    const/16 v2, -0xc

    if-lt v1, v2, :cond_56

    const/16 v2, 0xc

    if-gt v1, v2, :cond_56

    .line 183
    iget-object v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    add-int/lit8 v3, v1, 0xc

    aget-object v2, v2, v3

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    goto :goto_66

    .line 184
    :cond_56
    iget-object v2, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Landroid/icu/number/ScientificNotation$ScientificModifier;

    if-eqz v2, :cond_62

    .line 186
    new-instance v2, Landroid/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {v2, v1, p0}, Landroid/icu/number/ScientificNotation$ScientificModifier;-><init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    goto :goto_66

    .line 189
    :cond_62
    iput v1, p0, Landroid/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    .line 190
    iput-object p0, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 196
    :goto_66
    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->adjustExponent(I)V

    .line 199
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 201
    return-object v0

    .line 160
    .end local v1    # "exponent":I
    :cond_6d
    :goto_6d
    sget-object v1, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    iput-object v1, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 161
    return-object v0
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 258
    nop

    .line 259
    const/4 v0, 0x0

    return v0
.end method
