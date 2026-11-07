.class public interface abstract Landroid/view/ImeFocusController$InputMethodManagerDelegate;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ImeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodManagerDelegate"
.end annotation


# virtual methods
.method public abstract blacklist onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract blacklist onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract blacklist onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract blacklist onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V
.end method

.method public abstract blacklist onViewFocusChanged(Landroid/view/View;Z)V
.end method

.method public abstract blacklist onWindowDismissed(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract blacklist onWindowLostFocus(Landroid/view/ViewRootImpl;)V
.end method
