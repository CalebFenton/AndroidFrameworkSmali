.class public interface abstract Landroid/window/SplashScreenView$IconAnimateListener;
.super Ljava/lang/Object;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconAnimateListener"
.end annotation


# virtual methods
.method public abstract blacklist prepareAnimate(Ljava/util/function/LongConsumer;)V
.end method

.method public blacklist setAnimationJankMonitoring(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 702
    return-void
.end method

.method public abstract blacklist stopAnimation()V
.end method
