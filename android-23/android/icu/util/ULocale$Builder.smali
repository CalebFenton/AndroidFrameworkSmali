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
.field private final _locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3583
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@a
    .line 3582
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3820
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3824
    return-object p0

    #@6
    .line 3821
    :catch_0
    move-exception v0

    #@7
    .line 3822
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public build()Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 3886
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@8
    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->-wrap2(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public clear()Landroid/icu/util/ULocale$Builder;
    .locals 1

    #@0
    .prologue
    .line 3859
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@5
    .line 3860
    return-object p0
.end method

.method public clearExtensions()Landroid/icu/util/ULocale$Builder;
    .locals 1

    #@0
    .prologue
    .line 3873
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@5
    .line 3874
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3844
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3848
    return-object p0

    #@6
    .line 3845
    :catch_0
    move-exception v0

    #@7
    .line 3846
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3767
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3771
    return-object p0

    #@6
    .line 3768
    :catch_0
    move-exception v0

    #@7
    .line 3769
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3659
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3663
    return-object p0

    #@6
    .line 3660
    :catch_0
    move-exception v0

    #@7
    .line 3661
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 5
    .param p1, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3632
    new-instance v0, Landroid/icu/impl/locale/ParseStatus;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    #@5
    .line 3633
    .local v0, "sts":Landroid/icu/impl/locale/ParseStatus;
    invoke-static {p1, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    #@8
    move-result-object v1

    #@9
    .line 3634
    .local v1, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 3635
    new-instance v2, Landroid/icu/util/IllformedLocaleException;

    #@11
    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorIndex()I

    #@18
    move-result v4

    #@19
    invoke-direct {v2, v3, v4}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 3637
    :cond_0
    iget-object v2, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@1f
    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@22
    .line 3639
    return-object p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3605
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-static {p1}, Landroid/icu/util/ULocale;->-wrap0(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;

    #@5
    move-result-object v2

    #@6
    invoke-static {p1}, Landroid/icu/util/ULocale;->-wrap1(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3609
    return-object p0

    #@e
    .line 3606
    :catch_0
    move-exception v0

    #@f
    .line 3607
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@11
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@18
    move-result v3

    #@19
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v1
.end method

.method public setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3707
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3711
    return-object p0

    #@6
    .line 3708
    :catch_0
    move-exception v0

    #@7
    .line 3709
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3681
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3685
    return-object p0

    #@6
    .line 3682
    :catch_0
    move-exception v0

    #@7
    .line 3683
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3798
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3802
    return-object p0

    #@6
    .line 3799
    :catch_0
    move-exception v0

    #@7
    .line 3800
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method

.method public setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 4
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3734
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3738
    return-object p0

    #@6
    .line 3735
    :catch_0
    move-exception v0

    #@7
    .line 3736
    .local v0, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v1, Landroid/icu/util/IllformedLocaleException;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v2, v3}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    #@14
    throw v1
.end method
