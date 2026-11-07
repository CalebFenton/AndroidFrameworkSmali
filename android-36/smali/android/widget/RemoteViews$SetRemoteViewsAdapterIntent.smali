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


# instance fields
.field blacklist mIntent:Landroid/content/Intent;

.field blacklist mIsAsync:Z

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1804
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1802
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1805
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    .line 1806
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    .line 1807
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1809
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1802
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    .line 1811
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    .line 1812
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1821
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1822
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1825
    :cond_9
    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v2, ")"

    const-string v3, "RemoteViews"

    if-nez v1, :cond_2f

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void

    .line 1832
    :cond_2f
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_54

    instance-of v1, v0, Landroid/widget/AdapterViewAnimator;

    if-nez v1, :cond_54

    .line 1833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot setRemoteAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return-void

    .line 1840
    :cond_54
    move-object v1, p2

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 1841
    .local v1, "host":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "remoteAdapterAppWidgetId"

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    .line 1843
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v3

    .line 1842
    const-string/jumbo v4, "remoteAdapterOnLightBackground"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1845
    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_8d

    .line 1846
    move-object v2, v0

    check-cast v2, Landroid/widget/AbsListView;

    .line 1847
    .local v2, "v":Landroid/widget/AbsListView;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    iget-boolean v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 1848
    iget-object v3, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1849
    new-instance v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;

    invoke-direct {v3, p0, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;-><init>(Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .end local v2    # "v":Landroid/widget/AbsListView;
    goto :goto_a1

    .line 1862
    :cond_8d
    instance-of v2, v0, Landroid/widget/AdapterViewAnimator;

    if-eqz v2, :cond_a1

    .line 1863
    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterViewAnimator;

    .line 1864
    .local v2, "v":Landroid/widget/AdapterViewAnimator;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    iget-boolean v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    invoke-virtual {v2, v3, v4}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 1865
    iget-object v3, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    goto :goto_a2

    .line 1862
    .end local v2    # "v":Landroid/widget/AdapterViewAnimator;
    :cond_a1
    :goto_a1
    nop

    .line 1867
    :goto_a2
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 1879
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 8
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1872
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 1873
    .local v0, "copy":Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1874
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1815
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1817
    return-void
.end method
