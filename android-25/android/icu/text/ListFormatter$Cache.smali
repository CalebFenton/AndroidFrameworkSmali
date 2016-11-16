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
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 300
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@8
    .line 299
    iput-object v0, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@a
    .line 298
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
    .locals 9
    .param p0, "ulocale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 314
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    #@3
    .line 313
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 315
    .local v7, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v8, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 316
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Landroid/icu/text/ListFormatter;

    #@10
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "listPattern/"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "/2"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v7, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v1, v8}, Landroid/icu/text/ListFormatter;->-wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "listPattern/"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, "/start"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v7, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v2, v8}, Landroid/icu/text/ListFormatter;->-wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v4, "listPattern/"

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    const-string/jumbo v4, "/middle"

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v7, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-static {v3, v8}, Landroid/icu/text/ListFormatter;->-wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v5, "listPattern/"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    const-string/jumbo v5, "/end"

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v7, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    invoke-static {v4, v8}, Landroid/icu/text/ListFormatter;->-wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    .line 316
    const/4 v6, 0x0

    #@ad
    move-object v5, p0

    #@ae
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter;)V

    #@b1
    return-object v0
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .locals 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
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
    .line 304
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@16
    invoke-interface {v2, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/icu/text/ListFormatter;

    #@1c
    .line 305
    .local v1, "result":Landroid/icu/text/ListFormatter;
    if-nez v1, :cond_0

    #@1e
    .line 306
    invoke-static {p1, p2}, Landroid/icu/text/ListFormatter$Cache;->load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    #@21
    move-result-object v1

    #@22
    .line 307
    iget-object v2, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@24
    invoke-interface {v2, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@27
    .line 309
    :cond_0
    return-object v1
.end method
