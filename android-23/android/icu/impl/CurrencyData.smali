.class public Landroid/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;,
        Landroid/icu/impl/CurrencyData$DefaultInfo;,
        Landroid/icu/impl/CurrencyData$1;
    }
.end annotation


# static fields
.field public static final provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 72
    const/4 v2, 0x0

    #@1
    .line 74
    .local v2, "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_start_0
    const-string/jumbo v3, "android.icu.impl.ICUCurrencyDisplayInfoProvider"

    #@4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 75
    .local v0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .end local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    check-cast v2, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 87
    .end local v0    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :goto_0
    sput-object v2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@10
    .line 15
    return-void

    #@11
    .line 76
    .end local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :catch_0
    move-exception v1

    #@12
    .line 77
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/icu/impl/CurrencyData$1;

    #@14
    invoke-direct {v2}, Landroid/icu/impl/CurrencyData$1;-><init>()V

    #@17
    .restart local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
