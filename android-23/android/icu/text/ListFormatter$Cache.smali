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
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/ListFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 316
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@8
    .line 315
    iput-object v0, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@a
    .line 314
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ListFormatter$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/ListFormatter$Cache;-><init>()V

    #@3
    return-void
.end method

.method private static load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .locals 8
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    .line 329
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 332
    .local v7, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v0, Landroid/icu/text/ListFormatter;

    #@b
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "listPattern/"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "/2"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v7, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v1}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@31
    move-result-object v1

    #@32
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "listPattern/"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    const-string/jumbo v3, "/start"

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v7, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v2}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@58
    move-result-object v2

    #@59
    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v4, "listPattern/"

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    const-string/jumbo v4, "/middle"

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v7, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-static {v3}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@7f
    move-result-object v3

    #@80
    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "listPattern/"

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    const-string/jumbo v5, "/end"

    #@93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v7, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    invoke-static {v4}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@a6
    move-result-object v4

    #@a7
    .line 332
    const/4 v6, 0x0

    #@a8
    move-object v5, p0

    #@a9
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ListFormatter;-><init>(Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter;)V

    #@ac
    return-object v0
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .locals 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 319
    const-string/jumbo v2, "%s:%s"

    #@3
    const/4 v3, 0x2

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    const/4 v5, 0x0

    #@b
    aput-object v4, v3, v5

    #@d
    const/4 v4, 0x1

    #@e
    aput-object p2, v3, v4

    #@10
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 320
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@16
    invoke-interface {v2, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/icu/text/ListFormatter;

    #@1c
    .line 321
    .local v1, "result":Landroid/icu/text/ListFormatter;
    if-nez v1, :cond_0

    #@1e
    .line 322
    invoke-static {p1, p2}, Landroid/icu/text/ListFormatter$Cache;->load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    #@21
    move-result-object v1

    #@22
    .line 323
    iget-object v2, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@24
    invoke-interface {v2, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@27
    .line 325
    :cond_0
    return-object v1
.end method
