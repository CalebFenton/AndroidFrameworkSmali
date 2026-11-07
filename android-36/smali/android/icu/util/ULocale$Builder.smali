.class public final Landroid/icu/util/ULocale$Builder;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o _locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 3385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3387
    return-void
.end method


# virtual methods
.method public whitelist test-api addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3605
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3608
    nop

    .line 3609
    return-object p0

    .line 3606
    :catch_7
    move-exception v0

    .line 3607
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api build()Landroid/icu/util/ULocale;
    .registers 3

    .line 3663
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->-$$Nest$smgetInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()Landroid/icu/util/ULocale$Builder;
    .registers 2

    .line 3640
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3641
    return-object p0
.end method

.method public whitelist test-api clearExtensions()Landroid/icu/util/ULocale$Builder;
    .registers 2

    .line 3652
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3653
    return-object p0
.end method

.method public whitelist test-api removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3627
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3630
    nop

    .line 3631
    return-object p0

    .line 3628
    :catch_7
    move-exception v0

    .line 3629
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 7
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 3556
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3559
    nop

    .line 3560
    return-object p0

    .line 3557
    :catch_7
    move-exception v0

    .line 3558
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 3456
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3459
    nop

    .line 3460
    return-object p0

    .line 3457
    :catch_7
    move-exception v0

    .line 3458
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 7
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 3431
    new-instance v0, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {v0}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    .line 3432
    .local v0, "sts":Landroid/icu/impl/locale/ParseStatus;
    invoke-static {p1, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v1

    .line 3433
    .local v1, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3436
    iget-object v2, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3438
    return-object p0

    .line 3434
    :cond_15
    new-instance v2, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 3406
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-static {p1}, Landroid/icu/util/ULocale;->-$$Nest$mbase(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/util/ULocale;->-$$Nest$mextensions(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_d
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_d} :catch_f

    .line 3409
    nop

    .line 3410
    return-object p0

    .line 3407
    :catch_f
    move-exception v0

    .line 3408
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "region"    # Ljava/lang/String;

    .line 3500
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3503
    nop

    .line 3504
    return-object p0

    .line 3501
    :catch_7
    move-exception v0

    .line 3502
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "script"    # Ljava/lang/String;

    .line 3476
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3479
    nop

    .line 3480
    return-object p0

    .line 3477
    :catch_7
    move-exception v0

    .line 3478
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 3585
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3588
    nop

    .line 3589
    return-object p0

    .line 3586
    :catch_7
    move-exception v0

    .line 3587
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .registers 6
    .param p1, "variant"    # Ljava/lang/String;

    .line 3525
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3528
    nop

    .line 3529
    return-object p0

    .line 3526
    :catch_7
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
