.class public interface abstract Landroid/view/View$OnLongClickListener;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLongClickListener"
.end annotation


# virtual methods
.method public abstract whitelist onLongClick(Landroid/view/View;)Z
.end method

.method public whitelist onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 31727
    const/4 v0, 0x1

    return v0
.end method
