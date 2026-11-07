.class public interface abstract Landroid/view/translation/UiTranslationStateCallback;
.super Ljava/lang/Object;
.source "UiTranslationStateCallback.java"


# virtual methods
.method public abstract whitelist onFinished()V
.end method

.method public whitelist onFinished(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 184
    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onFinished()V

    .line 185
    return-void
.end method

.method public abstract whitelist onPaused()V
.end method

.method public whitelist onPaused(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onPaused()V

    .line 126
    return-void
.end method

.method public whitelist onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "sourceLocale"    # Landroid/icu/util/ULocale;
    .param p2, "targetLocale"    # Landroid/icu/util/ULocale;

    .line 142
    return-void
.end method

.method public whitelist onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4
    .param p1, "sourceLocale"    # Landroid/icu/util/ULocale;
    .param p2, "targetLocale"    # Landroid/icu/util/ULocale;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 161
    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 162
    return-void
.end method

.method public whitelist onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "sourceLocale"    # Landroid/icu/util/ULocale;
    .param p2, "targetLocale"    # Landroid/icu/util/ULocale;

    .line 79
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public whitelist onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4
    .param p1, "sourceLocale"    # Landroid/icu/util/ULocale;
    .param p2, "targetLocale"    # Landroid/icu/util/ULocale;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 102
    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 103
    return-void
.end method

.method public greylist onStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sourceLocale"    # Ljava/lang/String;
    .param p2, "targetLocale"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    return-void
.end method
