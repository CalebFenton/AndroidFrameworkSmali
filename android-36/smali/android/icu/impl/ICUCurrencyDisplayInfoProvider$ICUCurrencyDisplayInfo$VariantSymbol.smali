.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VariantSymbol"
.end annotation


# instance fields
.field final blacklist isoCode:Ljava/lang/String;

.field blacklist symbol:Ljava/lang/String;

.field final blacklist variant:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->isoCode:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->variant:Ljava/lang/String;

    .line 132
    return-void
.end method
