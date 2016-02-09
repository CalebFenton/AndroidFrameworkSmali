.class Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetOnClickPendingIntent;
    .param p2, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 712
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 716
    invoke-static {p1}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    .line 718
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    #@6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@9
    .line 719
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@c
    .line 720
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    #@e
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    #@10
    iget-object v3, v3, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@12
    invoke-virtual {v2, p1, v3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    #@15
    .line 713
    return-void
.end method
