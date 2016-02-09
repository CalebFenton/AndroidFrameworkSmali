.class final Landroid/icu/text/NumberFormatServiceShim$NFFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFFactory"
.end annotation


# instance fields
.field private delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;


# direct methods
.method constructor <init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V
    .locals 1
    .param p1, "delegate"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@0
    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->visible()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    #@a
    .line 47
    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@c
    .line 44
    return-void

    #@d
    .line 45
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "srvc"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 51
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    instance-of v2, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@9
    if-eqz v2, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 55
    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@e
    .line 56
    .local v0, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    iget-object v2, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@10
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Landroid/icu/util/ULocale;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    #@17
    move-result v4

    #@18
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@1b
    move-result-object v1

    #@1c
    .line 57
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@1e
    .line 58
    invoke-virtual {p2, p1, v5, p0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    .line 60
    :cond_0
    return-object v1

    #@23
    .line 52
    .end local v0    # "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    return-object v5
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->getSupportedLocaleNames()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
