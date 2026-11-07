.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1284
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1300
    const-string v0, "RemoteViewsAdapter"

    const-string v1, "Error inflating first RemoteViews"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    return-void
.end method

.method public blacklist onViewApplied(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 1288
    nop

    .line 1289
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1290
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1288
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1291
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 1294
    goto :goto_1a

    .line 1292
    :catch_16
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->onError(Ljava/lang/Exception;)V

    .line 1295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method
