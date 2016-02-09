.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 600
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 601
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@8
    .line 602
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@a
    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 605
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@c
    .line 607
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/content/Intent;

    #@14
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@16
    .line 605
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 618
    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    .line 619
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 622
    :cond_0
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 623
    const-string/jumbo v4, "RemoteViews"

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    .line 624
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@1e
    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 624
    const-string/jumbo v6, ")"

    #@25
    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 625
    return-void

    #@31
    .line 628
    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    #@33
    if-nez v4, :cond_2

    #@35
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    #@37
    if-eqz v4, :cond_4

    #@39
    :cond_2
    move-object v0, p2

    #@3a
    .line 636
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    #@3c
    .line 637
    .local v0, "host":Landroid/appwidget/AppWidgetHostView;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@3e
    const-string/jumbo v5, "remoteAdapterAppWidgetId"

    #@41
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    #@44
    move-result v6

    #@45
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@48
    .line 638
    instance-of v4, v1, Landroid/widget/AbsListView;

    #@4a
    if-eqz v4, :cond_5

    #@4c
    move-object v2, v1

    #@4d
    .line 639
    check-cast v2, Landroid/widget/AbsListView;

    #@4f
    .line 640
    .local v2, "v":Landroid/widget/AbsListView;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@51
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    #@54
    .line 641
    invoke-virtual {v2, p3}, Landroid/widget/AbsListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@57
    .line 617
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_3
    :goto_0
    return-void

    #@58
    .line 629
    .end local v0    # "host":Landroid/appwidget/AppWidgetHostView;
    :cond_4
    const-string/jumbo v4, "RemoteViews"

    #@5b
    new-instance v5, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v6, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 630
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@69
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 630
    const-string/jumbo v6, ")"

    #@70
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 631
    return-void

    #@7c
    .line 642
    .restart local v0    # "host":Landroid/appwidget/AppWidgetHostView;
    :cond_5
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    #@7e
    if-eqz v4, :cond_3

    #@80
    move-object v3, v1

    #@81
    .line 643
    check-cast v3, Landroid/widget/AdapterViewAnimator;

    #@83
    .line 644
    .local v3, "v":Landroid/widget/AdapterViewAnimator;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@85
    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    #@88
    .line 645
    invoke-virtual {v3, p3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@8b
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 650
    const-string/jumbo v0, "SetRemoteViewsAdapterIntent"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 611
    const/16 v0, 0xa

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 612
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 613
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@f
    .line 610
    return-void
.end method
