.class public Lcom/android/icu/text/CompatibleDecimalFormatFactory;
.super Ljava/lang/Object;
.source "CompatibleDecimalFormatFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/text/DecimalFormat;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 48
    new-instance v0, Landroid/icu/text/DecimalFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    .line 49
    .local v0, "df":Landroid/icu/text/DecimalFormat;
    sget-object v1, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setParseStrictMode(Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;)V

    .line 50
    return-object v0
.end method
