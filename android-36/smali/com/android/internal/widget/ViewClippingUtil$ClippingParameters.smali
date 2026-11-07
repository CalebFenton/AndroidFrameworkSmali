.class public interface abstract Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;
.super Ljava/lang/Object;
.source "ViewClippingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewClippingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClippingParameters"
.end annotation


# virtual methods
.method public blacklist isClippingEnablingAllowed(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 99
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isAnimatingTranslation(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist onClippingStateChanged(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isClipping"    # Z

    .line 106
    return-void
.end method

.method public abstract blacklist shouldFinish(Landroid/view/View;)Z
.end method
