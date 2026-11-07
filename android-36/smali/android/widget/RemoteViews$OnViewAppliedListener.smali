.class public interface abstract Landroid/widget/RemoteViews$OnViewAppliedListener;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnViewAppliedListener"
.end annotation


# virtual methods
.method public abstract greylist-max-o onError(Ljava/lang/Exception;)V
.end method

.method public abstract greylist-max-o onViewApplied(Landroid/view/View;)V
.end method

.method public blacklist onViewInflated(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 8235
    return-void
.end method
