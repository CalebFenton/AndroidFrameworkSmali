.class public Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "withFallback"    # Z

    #@0
    .prologue
    .line 30
    const-string/jumbo v2, "android/icu/impl/data/icudt55b/curr"

    #@3
    .line 29
    invoke-static {v2, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 31
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    if-nez p2, :cond_1

    #@b
    .line 32
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    #@e
    move-result v1

    #@f
    .line 33
    .local v1, "status":I
    const/4 v2, 0x3

    #@10
    if-eq v1, v2, :cond_0

    #@12
    const/4 v2, 0x2

    #@13
    if-ne v1, v2, :cond_1

    #@15
    .line 34
    :cond_0
    const/4 v2, 0x0

    #@16
    return-object v2

    #@17
    .line 37
    .end local v1    # "status":I
    :cond_1
    new-instance v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    #@19
    invoke-direct {v2, v0, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;-><init>(Landroid/icu/impl/ICUResourceBundle;Z)V

    #@1c
    return-object v2
.end method

.method public hasData()Z
    .locals 1

    #@0
    .prologue
    .line 41
    const/4 v0, 0x1

    #@1
    return v0
.end method
