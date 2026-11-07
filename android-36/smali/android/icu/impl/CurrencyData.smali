.class public Landroid/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;,
        Landroid/icu/impl/CurrencyData$DefaultInfo;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    }
.end annotation


# static fields
.field public static final blacklist provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_start_1
    const-string v1, "android.icu.impl.ICUCurrencyDisplayInfoProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    .local v1, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    .line 145
    .end local v0    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    .end local v1    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    goto :goto_14

    .line 133
    .end local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    .restart local v0    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :catchall_e
    move-exception v1

    .line 134
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/icu/impl/CurrencyData$1;

    invoke-direct {v2}, Landroid/icu/impl/CurrencyData$1;-><init>()V

    .line 146
    .end local v0    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :goto_14
    sput-object v2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    .line 147
    .end local v2    # "temp":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
