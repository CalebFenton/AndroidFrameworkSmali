.class public Landroid/text/style/TtsSpan$FractionBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FractionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$FractionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 898
    const-string/jumbo v0, "android.type.fraction"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 897
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "integerPart"    # J
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J

    #@0
    .prologue
    .line 909
    invoke-direct {p0}, Landroid/text/style/TtsSpan$FractionBuilder;-><init>()V

    #@3
    .line 910
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;

    #@6
    .line 911
    invoke-virtual {p0, p3, p4}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    #@9
    .line 912
    invoke-virtual {p0, p5, p6}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    #@c
    .line 908
    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "denominator"    # J

    #@0
    .prologue
    .line 962
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "denominator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 972
    const-string/jumbo v0, "android.arg.denominator"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    #@9
    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "integerPart"    # J

    #@0
    .prologue
    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "integerPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 932
    const-string/jumbo v0, "android.arg.integer_part"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    #@9
    return-object v0
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "numerator"    # J

    #@0
    .prologue
    .line 942
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "numerator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 952
    const-string/jumbo v0, "android.arg.numerator"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    #@9
    return-object v0
.end method
