.class Landroid/icu/impl/CurrencyData$1;
.super Ljava/lang/Object;
.source "CurrencyData.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "withFallback"    # Z

    .line 137
    invoke-static {p2}, Landroid/icu/impl/CurrencyData$DefaultInfo;->getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasData()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method
