.class public abstract Landroid/icu/number/NumberRangeFormatter;
.super Ljava/lang/Object;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberRangeFormatter$SpanField;,
        Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;,
        Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;,
        Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
    }
.end annotation


# static fields
.field private static final blacklist BASE:Landroid/icu/number/UnlocalizedNumberRangeFormatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-direct {v0}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;-><init>()V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static whitelist test-api with()Landroid/icu/number/UnlocalizedNumberRangeFormatter;
    .registers 1

    .line 189
    sget-object v0, Landroid/icu/number/NumberRangeFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    return-object v0
.end method

.method public static whitelist test-api withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberRangeFormatter;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 213
    sget-object v0, Landroid/icu/number/NumberRangeFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberRangeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api withLocale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberRangeFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 201
    sget-object v0, Landroid/icu/number/NumberRangeFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberRangeFormatter;

    move-result-object v0

    return-object v0
.end method
