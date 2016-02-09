.class Landroid/icu/util/CurrencyServiceShim$CFService;
.super Landroid/icu/impl/ICULocaleService;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CurrencyServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "Currency"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    #@6
    .line 67
    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;

    #@8
    invoke-direct {v0, p0}, Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;-><init>(Landroid/icu/util/CurrencyServiceShim$CFService;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/util/CurrencyServiceShim$CFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@e
    .line 68
    invoke-virtual {p0}, Landroid/icu/util/CurrencyServiceShim$CFService;->markDefault()V

    #@11
    .line 58
    return-void
.end method
