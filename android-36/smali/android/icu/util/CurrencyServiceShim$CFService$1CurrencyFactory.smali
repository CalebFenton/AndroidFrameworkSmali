.class Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/util/CurrencyServiceShim$CFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrencyFactory"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/util/CurrencyServiceShim$CFService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/util/CurrencyServiceShim$CFService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    .line 66
    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method
