.class public interface abstract Landroid/widget/RemoteViews$InteractionHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionHandler"
.end annotation


# virtual methods
.method public abstract blacklist onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
.end method

.method public blacklist onScroll(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "view"    # Landroid/widget/AbsListView;

    .line 695
    return-void
.end method
