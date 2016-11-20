.class public final Ljava/util/Locale$Builder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final localeBuilder:Lsun/util/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2335
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    #@5
    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@a
    .line 2334
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2565
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2569
    return-object p0

    #@6
    .line 2566
    :catch_0
    move-exception v0

    #@7
    .line 2567
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public build()Ljava/util/Locale;
    .locals 6

    #@0
    .prologue
    .line 2632
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    #@5
    move-result-object v0

    #@6
    .line 2633
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@8
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    #@b
    move-result-object v1

    #@c
    .line 2634
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_0

    #@e
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-lez v2, :cond_0

    #@18
    .line 2635
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 2636
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 2635
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    #@2b
    move-result-object v1

    #@2c
    .line 2638
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method

.method public clear()Ljava/util/Locale$Builder;
    .locals 1

    #@0
    .prologue
    .line 2605
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    #@5
    .line 2606
    return-object p0
.end method

.method public clearExtensions()Ljava/util/Locale$Builder;
    .locals 1

    #@0
    .prologue
    .line 2617
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    #@5
    .line 2618
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2587
    if-nez p1, :cond_0

    #@2
    .line 2588
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "attribute == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2592
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@d
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 2596
    return-object p0

    #@11
    .line 2593
    :catch_0
    move-exception v0

    #@12
    .line 2594
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@14
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@1b
    move-result v3

    #@1c
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@1f
    throw v1
.end method

.method public setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2514
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2518
    return-object p0

    #@6
    .line 2515
    :catch_0
    move-exception v0

    #@7
    .line 2516
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2409
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2413
    return-object p0

    #@6
    .line 2410
    :catch_0
    move-exception v0

    #@7
    .line 2411
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 5
    .param p1, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2385
    new-instance v0, Lsun/util/locale/ParseStatus;

    #@2
    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    #@5
    .line 2386
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    #@8
    move-result-object v1

    #@9
    .line 2387
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 2388
    new-instance v2, Ljava/util/IllformedLocaleException;

    #@11
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    #@18
    move-result v4

    #@19
    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 2390
    :cond_0
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@1f
    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    #@22
    .line 2391
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2360
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-static {p1}, Ljava/util/Locale;->-get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;

    #@5
    move-result-object v2

    #@6
    invoke-static {p1}, Ljava/util/Locale;->-get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v1, v2, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2364
    return-object p0

    #@e
    .line 2361
    :catch_0
    move-exception v0

    #@f
    .line 2362
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@11
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@18
    move-result v3

    #@19
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v1
.end method

.method public setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2455
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2459
    return-object p0

    #@6
    .line 2456
    :catch_0
    move-exception v0

    #@7
    .line 2457
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2430
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2434
    return-object p0

    #@6
    .line 2431
    :catch_0
    move-exception v0

    #@7
    .line 2432
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2544
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2548
    return-object p0

    #@6
    .line 2545
    :catch_0
    move-exception v0

    #@7
    .line 2546
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2482
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2486
    return-object p0

    #@6
    .line 2483
    :catch_0
    move-exception v0

    #@7
    .line 2484
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method
