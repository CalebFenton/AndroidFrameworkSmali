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
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 120
    const-string/jumbo v0, "Collator"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    #@6
    .line 133
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;

    #@8
    invoke-direct {v0, p0}, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;-><init>(Landroid/icu/text/CollatorServiceShim$CService;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/CollatorServiceShim$CService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@e
    .line 134
    invoke-virtual {p0}, Landroid/icu/text/CollatorServiceShim$CService;->markDefault()V

    #@11
    .line 119
    return-void
.end method


# virtual methods
.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualIDReturn"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    if-eqz p2, :cond_0

    #@3
    .line 154
    const-string/jumbo v1, "root"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, p2, v2

    #@9
    .line 157
    :cond_0
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@b
    invoke-static {v1}, Landroid/icu/text/CollatorServiceShim;->-wrap0(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 159
    :catch_0
    move-exception v0

    #@11
    .line 160
    .local v0, "e":Ljava/util/MissingResourceException;
    return-object v3
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
