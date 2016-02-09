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
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/GenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@8
    .line 221
    iput-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@a
    .line 220
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/GenderInfo$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/GenderInfo$Cache;-><init>()V

    #@3
    return-void
.end method

.method private static load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 7
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 243
    const-string/jumbo v3, "android/icu/impl/data/icudt55b"

    #@3
    .line 244
    const-string/jumbo v4, "genderList"

    #@6
    .line 245
    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    const/4 v6, 0x1

    #@9
    .line 242
    invoke-static {v3, v4, v5, v6}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v2

    #@d
    .line 246
    .local v2, "rb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v3, "genderList"

    #@10
    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v0

    #@14
    .line 248
    .local v0, "genderList":Landroid/icu/util/UResourceBundle;
    :try_start_0
    new-instance v3, Landroid/icu/util/GenderInfo;

    #@16
    .line 249
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v0, v4}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@21
    move-result-object v4

    #@22
    .line 248
    invoke-direct {v3, v4}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    return-object v3

    #@26
    .line 250
    :catch_0
    move-exception v1

    #@27
    .line 251
    .local v1, "mre":Ljava/util/MissingResourceException;
    const/4 v3, 0x0

    #@28
    return-object v3
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 225
    iget-object v2, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@2
    invoke-interface {v2, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/icu/util/GenderInfo;

    #@8
    .line 226
    .local v1, "result":Landroid/icu/util/GenderInfo;
    if-nez v1, :cond_1

    #@a
    .line 227
    invoke-static {p1}, Landroid/icu/util/GenderInfo$Cache;->load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    #@d
    move-result-object v1

    #@e
    .line 228
    if-nez v1, :cond_0

    #@10
    .line 229
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@13
    move-result-object v0

    #@14
    .line 234
    .local v0, "fallback":Landroid/icu/util/ULocale;
    if-nez v0, :cond_2

    #@16
    invoke-static {}, Landroid/icu/util/GenderInfo;->-get0()Landroid/icu/util/GenderInfo;

    #@19
    move-result-object v1

    #@1a
    .line 236
    .end local v0    # "fallback":Landroid/icu/util/ULocale;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@1c
    invoke-interface {v2, p1, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1f
    .line 238
    :cond_1
    return-object v1

    #@20
    .line 234
    .restart local v0    # "fallback":Landroid/icu/util/ULocale;
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    #@23
    move-result-object v1

    #@24
    goto :goto_0
.end method
