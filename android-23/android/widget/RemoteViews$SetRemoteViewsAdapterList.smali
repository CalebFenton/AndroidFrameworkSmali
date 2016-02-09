.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# static fields
.field public static final TAG:I = 0xf


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p4, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 518
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 519
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@8
    .line 520
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@a
    .line 521
    iput p4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@c
    .line 518
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 524
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    iput v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@c
    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    iput v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@12
    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    .line 528
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    #@18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@1d
    .line 530
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@20
    .line 531
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/widget/RemoteViews;

    #@28
    .line 532
    .local v2, "rv":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 530
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 524
    .end local v2    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 555
    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    .line 556
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 559
    :cond_0
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 560
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
    .line 561
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@1e
    .line 560
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    .line 561
    const-string/jumbo v6, ")"

    #@25
    .line 560
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
    .line 562
    return-void

    #@31
    .line 565
    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    #@33
    if-nez v4, :cond_2

    #@35
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    #@37
    if-eqz v4, :cond_4

    #@39
    .line 571
    :cond_2
    instance-of v4, v1, Landroid/widget/AbsListView;

    #@3b
    if-eqz v4, :cond_6

    #@3d
    move-object v2, v1

    #@3e
    .line 572
    check-cast v2, Landroid/widget/AbsListView;

    #@40
    .line 573
    .local v2, "v":Landroid/widget/AbsListView;
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@43
    move-result-object v0

    #@44
    .line 574
    .local v0, "a":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    #@46
    if-eqz v4, :cond_5

    #@48
    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@4a
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    #@4d
    move-result v5

    #@4e
    if-gt v4, v5, :cond_5

    #@50
    .line 575
    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    #@52
    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    #@57
    .line 554
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_3
    :goto_0
    return-void

    #@58
    .line 566
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
    .line 567
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@69
    .line 566
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 567
    const-string/jumbo v6, ")"

    #@70
    .line 566
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
    .line 568
    return-void

    #@7c
    .line 577
    .restart local v0    # "a":Landroid/widget/Adapter;
    .restart local v2    # "v":Landroid/widget/AbsListView;
    :cond_5
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    #@7e
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@81
    move-result-object v5

    #@82
    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@84
    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@86
    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    #@89
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@8c
    goto :goto_0

    #@8d
    .line 579
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_6
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    #@8f
    if-eqz v4, :cond_3

    #@91
    move-object v3, v1

    #@92
    .line 580
    check-cast v3, Landroid/widget/AdapterViewAnimator;

    #@94
    .line 581
    .local v3, "v":Landroid/widget/AdapterViewAnimator;
    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    #@97
    move-result-object v0

    #@98
    .line 582
    .restart local v0    # "a":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    #@9a
    if-eqz v4, :cond_7

    #@9c
    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@9e
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    #@a1
    move-result v5

    #@a2
    if-gt v4, v5, :cond_7

    #@a4
    .line 583
    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    #@a6
    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    #@ab
    goto :goto_0

    #@ac
    .line 585
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_7
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    #@ae
    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    #@b1
    move-result-object v5

    #@b2
    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@b4
    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@b6
    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    #@b9
    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    #@bc
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 591
    const-string/jumbo v0, "SetRemoteViewsAdapterList"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 537
    const/16 v3, 0xf

    #@3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 538
    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    #@8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 539
    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 541
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@12
    if-eqz v3, :cond_0

    #@14
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_2

    #@1c
    .line 542
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 536
    :cond_1
    return-void

    #@20
    .line 544
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 545
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 546
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@2c
    .line 547
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/widget/RemoteViews;

    #@34
    .line 548
    .local v2, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 546
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0
.end method
