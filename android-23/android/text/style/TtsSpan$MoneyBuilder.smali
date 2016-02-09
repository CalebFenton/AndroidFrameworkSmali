.class public Landroid/text/style/TtsSpan$MoneyBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoneyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$MoneyBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1227
    const-string/jumbo v0, "android.type.money"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 1226
    return-void
.end method


# virtual methods
.method public setCurrency(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1265
    const-string/jumbo v0, "android.arg.money"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    #@9
    return-object v0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1
    .param p1, "fractionalPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1256
    const-string/jumbo v0, "android.arg.fractional_part"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    #@9
    return-object v0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1
    .param p1, "integerPart"    # J

    #@0
    .prologue
    .line 1237
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$MoneyBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1
    .param p1, "integerPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1247
    const-string/jumbo v0, "android.arg.integer_part"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    #@9
    return-object v0
.end method

.method public setQuantity(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .locals 1
    .param p1, "quantity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1274
    const-string/jumbo v0, "android.arg.quantity"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$MoneyBuilder;

    #@9
    return-object v0
.end method
