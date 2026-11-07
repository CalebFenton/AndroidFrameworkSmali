.class public Landroid/text/style/TtsSpan$DecimalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DecimalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 824
    const-string v0, "android.type.decimal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public constructor whitelist <init>(DII)V
    .registers 5
    .param p1, "number"    # D
    .param p3, "minimumFractionDigits"    # I
    .param p4, "maximumFractionDigits"    # I

    .line 835
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 836
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/style/TtsSpan$DecimalBuilder;->setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 839
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;
    .param p2, "fractionalPart"    # Ljava/lang/String;

    .line 846
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    .line 847
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 848
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 849
    return-void
.end method


# virtual methods
.method public whitelist setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 9
    .param p1, "number"    # D
    .param p3, "minimumFractionDigits"    # I
    .param p4, "maximumFractionDigits"    # I

    .line 869
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 870
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 871
    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 872
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 873
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 877
    .local v3, "i":I
    if-ltz v3, :cond_2d

    .line 878
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 879
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    goto :goto_30

    .line 881
    :cond_2d
    invoke-virtual {p0, v2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    .line 883
    :goto_30
    return-object p0
.end method

.method public whitelist setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 3
    .param p1, "fractionalPart"    # Ljava/lang/String;

    .line 912
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object v0
.end method

.method public whitelist setIntegerPart(J)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 4
    .param p1, "integerPart"    # J

    .line 893
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .registers 3
    .param p1, "integerPart"    # Ljava/lang/String;

    .line 903
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object v0
.end method
