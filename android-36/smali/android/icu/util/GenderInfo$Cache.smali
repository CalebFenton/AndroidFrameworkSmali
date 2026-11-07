.class Landroid/icu/util/GenderInfo$Cache;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final greylist-max-o cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/GenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/GenderInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/GenderInfo$Cache;-><init>()V

    return-void
.end method

.method private static greylist-max-o load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .registers 5
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;

    .line 249
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "genderList"

    invoke-static {v2, v3, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 253
    .local v0, "rb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 255
    .local v1, "genderList":Landroid/icu/util/UResourceBundle;
    :try_start_f
    new-instance v2, Landroid/icu/util/GenderInfo;

    .line 256
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    :try_end_20
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_20} :catch_21

    .line 255
    return-object v2

    .line 257
    :catch_21
    move-exception v2

    .line 258
    .local v2, "mre":Ljava/util/MissingResourceException;
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public greylist-max-o get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 232
    iget-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo;

    .line 233
    .local v0, "result":Landroid/icu/util/GenderInfo;
    if-nez v0, :cond_25

    .line 234
    invoke-static {p1}, Landroid/icu/util/GenderInfo$Cache;->load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    .line 235
    if-nez v0, :cond_20

    .line 236
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v1

    .line 241
    .local v1, "fallback":Landroid/icu/util/ULocale;
    if-nez v1, :cond_1b

    invoke-static {}, Landroid/icu/util/GenderInfo;->-$$Nest$sfgetneutral()Landroid/icu/util/GenderInfo;

    move-result-object v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0, v1}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v2

    :goto_1f
    move-object v0, v2

    .line 243
    .end local v1    # "fallback":Landroid/icu/util/ULocale;
    :cond_20
    iget-object v1, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    :cond_25
    return-object v0
.end method
