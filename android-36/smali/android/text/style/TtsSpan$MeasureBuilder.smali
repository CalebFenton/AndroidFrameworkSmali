.class public Landroid/text/style/TtsSpan$MeasureBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$MeasureBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1015
    const-string v0, "android.type.measure"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    return-void
.end method


# virtual methods
.method public whitelist setDenominator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "denominator"    # J

    .line 1097
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "denominator"    # Ljava/lang/String;

    .line 1107
    const-string v0, "android.arg.denominator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public whitelist setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "fractionalPart"    # Ljava/lang/String;

    .line 1066
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public whitelist setIntegerPart(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .line 1045
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .line 1056
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public whitelist setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "number"    # J

    .line 1025
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1035
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public whitelist setNumerator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 4
    .param p1, "numerator"    # J

    .line 1077
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "numerator"    # Ljava/lang/String;

    .line 1087
    const-string v0, "android.arg.numerator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method

.method public whitelist setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .registers 3
    .param p1, "unit"    # Ljava/lang/String;

    .line 1117
    const-string v0, "android.arg.unit"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object v0
.end method
