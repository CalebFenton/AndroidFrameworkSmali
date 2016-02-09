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


# instance fields
.field final synthetic this$1:Landroid/icu/util/CurrencyServiceShim$CFService;


# direct methods
.method constructor <init>(Landroid/icu/util/CurrencyServiceShim$CFService;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/util/CurrencyServiceShim$CFService;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;->this$1:Landroid/icu/util/CurrencyServiceShim$CFService;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 63
    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
