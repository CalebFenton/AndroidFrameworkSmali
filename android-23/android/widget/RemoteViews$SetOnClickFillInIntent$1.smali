.class Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickFillInIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetOnClickFillInIntent;
    .param p2, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 395
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    .line 399
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    instance-of v3, v0, Landroid/widget/AdapterView;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 404
    :cond_0
    instance-of v3, v0, Landroid/appwidget/AppWidgetHostView;

    #@e
    if-nez v3, :cond_1

    #@10
    if-nez v0, :cond_3

    #@12
    .line 407
    :cond_1
    const-string/jumbo v3, "RemoteViews"

    #@15
    const-string/jumbo v4, "Collection item doesn\'t have AdapterView parent"

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 408
    return-void

    #@1c
    .line 400
    :cond_2
    instance-of v3, v0, Landroid/appwidget/AppWidgetHostView;

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 401
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@23
    move-result-object v0

    #@24
    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    #@26
    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    #@27
    .line 412
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    instance-of v3, v3, Landroid/app/PendingIntent;

    #@2d
    if-nez v3, :cond_4

    #@2f
    .line 413
    const-string/jumbo v3, "RemoteViews"

    #@32
    const-string/jumbo v4, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    #@35
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 415
    return-void

    #@39
    .line 418
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroid/app/PendingIntent;

    #@3f
    .line 420
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    #@42
    move-result-object v2

    #@43
    .line 422
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@45
    iget-object v3, v3, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@47
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@4a
    .line 423
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4c
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@4e
    iget-object v4, v4, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@50
    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    #@53
    .line 396
    return-void
.end method
