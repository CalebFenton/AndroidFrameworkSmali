.class public interface abstract Landroid/view/translation/ViewTranslationCallback;
.super Ljava/lang/Object;
.source "ViewTranslationCallback.java"


# virtual methods
.method public blacklist enableContentPadding()V
    .registers 1

    .line 95
    return-void
.end method

.method public abstract whitelist onClearTranslation(Landroid/view/View;)Z
.end method

.method public abstract whitelist onHideTranslation(Landroid/view/View;)Z
.end method

.method public abstract whitelist onShowTranslation(Landroid/view/View;)Z
.end method

.method public blacklist setAnimationDurationMillis(I)V
    .registers 2
    .param p1, "durationMillis"    # I

    .line 103
    return-void
.end method
