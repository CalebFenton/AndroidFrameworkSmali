.class final Landroid/icu/impl/CurrencyData$1;
.super Ljava/lang/Object;
.source "CurrencyData.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "withFallback"    # Z

    #@0
    .prologue
    .line 79
    invoke-static {p2}, Landroid/icu/impl/CurrencyData$DefaultInfo;->getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method
