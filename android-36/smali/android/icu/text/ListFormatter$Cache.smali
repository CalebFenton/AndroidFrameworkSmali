.class Landroid/icu/text/ListFormatter$Cache;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
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
            "Ljava/lang/String;",
            "Landroid/icu/text/ListFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/ListFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/ListFormatter$Cache;-><init>()V

    return-void
.end method

.method private static greylist-max-o load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .registers 11
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Ljava/lang/String;

    .line 637
    nop

    .line 638
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 639
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/icu/text/ListFormatter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listPattern/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/icu/text/ListFormatter;->-$$Nest$smcompilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 642
    invoke-virtual {v0, v5}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/icu/text/ListFormatter;->-$$Nest$smcompilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/middle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-virtual {v0, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/icu/text/ListFormatter;->-$$Nest$smcompilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/end"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 644
    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/icu/text/ListFormatter;->-$$Nest$smcompilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v7, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, p0

    .end local p0    # "ulocale":Landroid/icu/util/ULocale;
    .local v7, "ulocale":Landroid/icu/util/ULocale;
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter-IA;)V

    .line 640
    return-object v2
.end method


# virtual methods
.method public greylist-max-o get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/ListFormatter;

    .line 629
    .local v1, "result":Landroid/icu/text/ListFormatter;
    if-nez v1, :cond_21

    .line 630
    invoke-static {p1, p2}, Landroid/icu/text/ListFormatter$Cache;->load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    move-result-object v1

    .line 631
    iget-object v2, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 633
    :cond_21
    return-object v1
.end method
