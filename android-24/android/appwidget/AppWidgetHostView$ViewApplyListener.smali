.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final mIsReapply:Z

.field private final mLayoutId:I

.field private final mViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "layoutId"    # I
    .param p4, "isReapply"    # Z

    #@0
    .prologue
    .line 547
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 548
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    #@7
    .line 549
    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    #@9
    .line 550
    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    #@b
    .line 547
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 10
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 563
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 565
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@7
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    #@9
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@b
    iget-object v1, v1, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@d
    .line 566
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@f
    .line 567
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@11
    invoke-static {v3}, Landroid/appwidget/AppWidgetHostView;->-get0(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    #@14
    move-result-object v3

    #@15
    .line 568
    new-instance v4, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    #@17
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@19
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    #@1b
    iget v8, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    #@1d
    invoke-direct {v4, v5, v7, v8, v9}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    #@20
    .line 569
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@22
    invoke-static {v5}, Landroid/appwidget/AppWidgetHostView;->-get1(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$OnClickHandler;

    #@25
    move-result-object v5

    #@26
    .line 565
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v6, v0}, Landroid/appwidget/AppWidgetHostView;->-set0(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    #@2d
    .line 562
    :goto_0
    return-void

    #@2e
    .line 571
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@30
    const/4 v1, 0x0

    #@31
    invoke-static {v0, v1, v9, p1}, Landroid/appwidget/AppWidgetHostView;->-wrap0(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    #@34
    goto :goto_0
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@2
    iget v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    #@4
    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@6
    .line 556
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@8
    const/4 v1, 0x1

    #@9
    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@b
    .line 558
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    #@d
    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->-wrap0(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    #@13
    .line 554
    return-void
.end method
