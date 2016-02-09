.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetPendingIntentTemplate;
    .param p2, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 466
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 470
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v7, p2, Landroid/view/ViewGroup;

    #@2
    if-eqz v7, :cond_5

    #@4
    move-object v6, p2

    #@5
    .line 471
    check-cast v6, Landroid/view/ViewGroup;

    #@7
    .line 475
    .local v6, "vg":Landroid/view/ViewGroup;
    instance-of v7, p1, Landroid/widget/AdapterViewAnimator;

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 476
    const/4 v7, 0x0

    #@c
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v6

    #@10
    .end local v6    # "vg":Landroid/view/ViewGroup;
    check-cast v6, Landroid/view/ViewGroup;

    #@12
    .line 478
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-nez v6, :cond_1

    #@14
    return-void

    #@15
    .line 480
    :cond_1
    const/4 v1, 0x0

    #@16
    .line 481
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@19
    move-result v0

    #@1a
    .line 482
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@1d
    .line 483
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v7

    #@21
    const v8, 0x1020045

    #@24
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    .line 484
    .local v5, "tag":Ljava/lang/Object;
    instance-of v7, v5, Landroid/content/Intent;

    #@2a
    if-eqz v7, :cond_3

    #@2c
    move-object v1, v5

    #@2d
    .line 485
    check-cast v1, Landroid/content/Intent;

    #@2f
    .line 489
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_2
    if-nez v1, :cond_4

    #@31
    return-void

    #@32
    .line 482
    .restart local v1    # "fillInIntent":Landroid/content/Intent;
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 491
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    #@38
    move-result-object v4

    #@39
    .line 493
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/content/Intent;

    #@3b
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@3e
    .line 494
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@41
    .line 495
    iget-object v7, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@43
    iget-object v8, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    #@45
    iget-object v8, v8, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    #@47
    invoke-virtual {v7, p2, v8, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    #@4a
    .line 468
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_5
    return-void
.end method
