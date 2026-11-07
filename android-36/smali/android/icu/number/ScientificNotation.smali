.class public Landroid/icu/number/ScientificNotation;
.super Landroid/icu/number/Notation;
.source "ScientificNotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/ScientificNotation$ScientificHandler;,
        Landroid/icu/number/ScientificNotation$ScientificModifier;
    }
.end annotation


# instance fields
.field blacklist engineeringInterval:I

.field blacklist exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

.field blacklist minExponentDigits:I

.field blacklist requireMinInt:Z


# direct methods
.method constructor blacklist <init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V
    .registers 5
    .param p1, "engineeringInterval"    # I
    .param p2, "requireMinInt"    # Z
    .param p3, "minExponentDigits"    # I
    .param p4, "exponentSignDisplay"    # Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 41
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    .line 42
    iput p1, p0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    .line 43
    iput-boolean p2, p0, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    .line 44
    iput p3, p0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    .line 45
    iput-object p4, p0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 46
    return-void
.end method


# virtual methods
.method blacklist createCopy()Landroid/icu/number/ScientificNotation;
    .registers 6

    .line 95
    new-instance v0, Landroid/icu/number/ScientificNotation;

    iget v1, p0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    iget-boolean v2, p0, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    iget v3, p0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    iget-object v4, p0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    return-object v0
.end method

.method public whitelist test-api withExponentSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/ScientificNotation;
    .registers 3
    .param p1, "exponentSignDisplay"    # Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 88
    invoke-virtual {p0}, Landroid/icu/number/ScientificNotation;->createCopy()Landroid/icu/number/ScientificNotation;

    move-result-object v0

    .line 89
    .local v0, "other":Landroid/icu/number/ScientificNotation;
    iput-object p1, v0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 90
    return-object v0
.end method

.method blacklist withLocaleData(Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .registers 10
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "build"    # Z
    .param p3, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 107
    new-instance v0, Landroid/icu/number/ScientificNotation$ScientificHandler;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .end local p1    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local p2    # "build":Z
    .end local p3    # "parent":Landroid/icu/impl/number/MicroPropsGenerator;
    .local v2, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .local v3, "build":Z
    .local v4, "parent":Landroid/icu/impl/number/MicroPropsGenerator;
    invoke-direct/range {v0 .. v5}, Landroid/icu/number/ScientificNotation$ScientificHandler;-><init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/ScientificNotation-IA;)V

    return-object v0
.end method

.method public whitelist test-api withMinExponentDigits(I)Landroid/icu/number/ScientificNotation;
    .registers 4
    .param p1, "minExponentDigits"    # I

    .line 63
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_e

    .line 64
    invoke-virtual {p0}, Landroid/icu/number/ScientificNotation;->createCopy()Landroid/icu/number/ScientificNotation;

    move-result-object v0

    .line 65
    .local v0, "other":Landroid/icu/number/ScientificNotation;
    iput p1, v0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    .line 66
    return-object v0

    .line 68
    .end local v0    # "other":Landroid/icu/number/ScientificNotation;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integer digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
