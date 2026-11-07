.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$params:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1849
    iput-object p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 1860
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1852
    if-eqz p2, :cond_9

    .line 1853
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v0, v0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {v0, p1}, Landroid/widget/RemoteViews$InteractionHandler;->onScroll(Landroid/widget/AbsListView;)V

    .line 1855
    :cond_9
    return-void
.end method
