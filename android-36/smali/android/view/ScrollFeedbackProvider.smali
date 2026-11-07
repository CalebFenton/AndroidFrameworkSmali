.class public interface abstract Landroid/view/ScrollFeedbackProvider;
.super Ljava/lang/Object;
.source "ScrollFeedbackProvider.java"


# direct methods
.method public static whitelist createProvider(Landroid/view/View;)Landroid/view/ScrollFeedbackProvider;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 88
    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public abstract whitelist onScrollLimit(IIIZ)V
.end method

.method public abstract whitelist onScrollProgress(IIII)V
.end method

.method public abstract whitelist onSnapToItem(III)V
.end method
