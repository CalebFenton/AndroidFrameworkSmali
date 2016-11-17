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
    .line 465
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
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    .line 475
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    instance-of v3, v0, Landroid/widget/AdapterView;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 481
    :cond_0
    instance-of v3, v0, Landroid/widget/AdapterView;

    #@e
    if-nez v3, :cond_3

    #@10
    .line 484
    const-string/jumbo v3, "RemoteViews"

    #@13
    const-string/jumbo v4, "Collection item doesn\'t have AdapterView parent"

    #@16
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 485
    return-void

    #@1a
    .line 476
    :cond_1
    instance-of v3, v0, Landroid/appwidget/AppWidgetHostView;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 477
    instance-of v3, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@20
    .line 475
    if-eqz v3, :cond_0

    #@22
    .line 478
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@25
    move-result-object v0

    #@26
    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    #@28
    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    #@29
    .line 489
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    instance-of v3, v3, Landroid/app/PendingIntent;

    #@2f
    if-nez v3, :cond_4

    #@31
    .line 490
    const-string/jumbo v3, "RemoteViews"

    #@34
    const-string/jumbo v4, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    #@37
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 492
    return-void

    #@3b
    .line 495
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Landroid/app/PendingIntent;

    #@41
    .line 497
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    #@44
    move-result-object v2

    #@45
    .line 499
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@47
    iget-object v3, v3, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@49
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@4c
    .line 500
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4e
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    #@50
    iget-object v4, v4, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@52
    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    #@55
    .line 466
    return-void
.end method
