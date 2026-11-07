.class public Landroid/icu/number/UnlocalizedNumberRangeFormatter;
.super Landroid/icu/number/NumberRangeFormatterSettings;
.source "UnlocalizedNumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/number/NumberRangeFormatterSettings<",
        "Landroid/icu/number/UnlocalizedNumberRangeFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Landroid/icu/number/NumberRangeFormatterSettings;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    .line 23
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    .local p1, "parent":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/NumberRangeFormatterSettings;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;->create(ILjava/lang/Object;)Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    move-result-object p1

    return-object p1
.end method

.method blacklist create(ILjava/lang/Object;)Landroid/icu/number/UnlocalizedNumberRangeFormatter;
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberRangeFormatter;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 57
    new-instance v0, Landroid/icu/number/LocalizedNumberRangeFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/icu/number/LocalizedNumberRangeFormatter;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberRangeFormatter;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 45
    new-instance v0, Landroid/icu/number/LocalizedNumberRangeFormatter;

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/icu/number/LocalizedNumberRangeFormatter;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
