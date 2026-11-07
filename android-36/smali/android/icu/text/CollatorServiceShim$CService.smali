.class Landroid/icu/text/CollatorServiceShim$CService;
.super Landroid/icu/impl/ICULocaleService;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollatorServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CService"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 134
    const-string v0, "Collator"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;-><init>(Landroid/icu/text/CollatorServiceShim$CService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/CollatorServiceShim$CService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    .line 148
    invoke-virtual {p0}, Landroid/icu/text/CollatorServiceShim$CService;->markDefault()V

    .line 149
    return-void
.end method


# virtual methods
.method protected blacklist handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualIDReturn"    # [Ljava/lang/String;

    .line 168
    if-eqz p2, :cond_7

    .line 169
    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, p2, v0

    .line 172
    :cond_7
    :try_start_7
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/CollatorServiceShim;->-$$Nest$smmakeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 174
    :catch_e
    move-exception v0

    .line 175
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist validateFallbackLocale()Ljava/lang/String;
    .registers 2

    .line 161
    const-string v0, ""

    return-object v0
.end method
