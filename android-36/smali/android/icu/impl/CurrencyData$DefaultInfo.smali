.class public Landroid/icu/impl/CurrencyData$DefaultInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInfo"
.end annotation


# static fields
.field private static final greylist-max-o FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private static final greylist-max-o NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;


# instance fields
.field private final greylist-max-o fallback:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 226
    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    .line 227
    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 2
    .param p1, "fallback"    # Z

    .line 155
    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    .line 156
    iput-boolean p1, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    .line 157
    return-void
.end method

.method public static final blacklist getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .registers 2
    .param p0, "fallback"    # Z

    .line 160
    if-eqz p0, :cond_5

    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    :goto_7
    return-object v0
.end method


# virtual methods
.method public blacklist getFormalSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 165
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 180
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "pluralType"    # Ljava/lang/String;

    .line 170
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .registers 2

    .line 223
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public blacklist getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 175
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 205
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public blacklist getUnitPatterns()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_9

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 213
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVariantSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 190
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public blacklist nameMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist symbolMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
