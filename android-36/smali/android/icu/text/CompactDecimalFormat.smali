.class public Landroid/icu/text/CompactDecimalFormat;
.super Landroid/icu/text/DecimalFormat;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x4173a3c399851eb2L


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 109
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    .line 111
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 112
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 113
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setCompactStyle(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 114
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 115
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 116
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 117
    invoke-virtual {p0}, Landroid/icu/text/CompactDecimalFormat;->refreshFormatter()V

    .line 118
    return-void
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 86
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 100
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
