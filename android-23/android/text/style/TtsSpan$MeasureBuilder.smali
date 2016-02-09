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
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$MeasureBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 986
    const-string/jumbo v0, "android.type.measure"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 985
    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "denominator"    # J

    #@0
    .prologue
    .line 1068
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "denominator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1078
    const-string/jumbo v0, "android.arg.denominator"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "fractionalPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1037
    const-string/jumbo v0, "android.arg.fractional_part"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "integerPart"    # J

    #@0
    .prologue
    .line 1016
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "integerPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1027
    const-string/jumbo v0, "android.arg.integer_part"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method

.method public setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 996
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1006
    const-string/jumbo v0, "android.arg.number"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "numerator"    # J

    #@0
    .prologue
    .line 1048
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "numerator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1058
    const-string/jumbo v0, "android.arg.numerator"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method

.method public setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1088
    const-string/jumbo v0, "android.arg.unit"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MeasureBuilder;

    #@9
    return-object v0
.end method
