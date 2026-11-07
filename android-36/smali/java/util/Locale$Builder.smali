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
.field private final greylist-max-o localeBuilder:Lsun/util/locale/InternalLocaleBuilder;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 3193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3194
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    .line 3195
    return-void
.end method


# virtual methods
.method public whitelist test-api addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3424
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3427
    nop

    .line 3428
    return-object p0

    .line 3425
    :catch_7
    move-exception v0

    .line 3426
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api build()Ljava/util/Locale;
    .registers 7

    .line 3488
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 3489
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3490
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 3491
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 3492
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 3491
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->-$$Nest$smgetCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3494
    :cond_2c
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api clear()Ljava/util/Locale$Builder;
    .registers 2

    .line 3461
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 3462
    return-object p0
.end method

.method public whitelist test-api clearExtensions()Ljava/util/Locale$Builder;
    .registers 2

    .line 3473
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 3474
    return-object p0
.end method

.method public whitelist test-api removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    :try_start_3
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_8
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3451
    nop

    .line 3452
    return-object p0

    .line 3449
    :catch_a
    move-exception v0

    .line 3450
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 3374
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3377
    nop

    .line 3378
    return-object p0

    .line 3375
    :catch_7
    move-exception v0

    .line 3376
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 3268
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3271
    nop

    .line 3272
    return-object p0

    .line 3269
    :catch_7
    move-exception v0

    .line 3270
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 3244
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    .line 3245
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 3246
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3249
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 3250
    return-object p0

    .line 3247
    :cond_15
    new-instance v2, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 3219
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-static {p1}, Ljava/util/Locale;->-$$Nest$fgetbaseLocale(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Locale;->-$$Nest$fgetlocaleExtensions(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_d
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_d} :catch_f

    .line 3222
    nop

    .line 3223
    return-object p0

    .line 3220
    :catch_f
    move-exception v0

    .line 3221
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "region"    # Ljava/lang/String;

    .line 3314
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3317
    nop

    .line 3318
    return-object p0

    .line 3315
    :catch_7
    move-exception v0

    .line 3316
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "script"    # Ljava/lang/String;

    .line 3289
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3292
    nop

    .line 3293
    return-object p0

    .line 3290
    :catch_7
    move-exception v0

    .line 3291
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 3403
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3406
    nop

    .line 3407
    return-object p0

    .line 3404
    :catch_7
    move-exception v0

    .line 3405
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "variant"    # Ljava/lang/String;

    .line 3342
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3345
    nop

    .line 3346
    return-object p0

    .line 3343
    :catch_7
    move-exception v0

    .line 3344
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
