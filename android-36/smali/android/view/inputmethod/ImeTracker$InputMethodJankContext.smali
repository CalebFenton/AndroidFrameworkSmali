.class public interface abstract Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodJankContext"
.end annotation


# virtual methods
.method public abstract blacklist getDisplayContext()Landroid/content/Context;
.end method

.method public abstract blacklist getHostPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getTargetSurfaceControl()Landroid/view/SurfaceControl;
.end method
