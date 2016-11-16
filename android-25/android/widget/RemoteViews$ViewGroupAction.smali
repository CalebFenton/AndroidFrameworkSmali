.class Landroid/widget/RemoteViews$ViewGroupAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupAction"
.end annotation


# static fields
.field public static final TAG:I = 0x4


# instance fields
.field nestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1497
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1498
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@8
    .line 1499
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@a
    .line 1500
    if-eqz p3, :cond_0

    #@c
    .line 1501
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->-wrap6(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@f
    .line 1497
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1505
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    #@4
    invoke-direct {p0, v2}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@d
    .line 1507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1508
    .local v0, "nestedViewsNull":Z
    :cond_0
    if-nez v0, :cond_1

    #@16
    .line 1509
    new-instance v1, Landroid/widget/RemoteViews;

    #@18
    invoke-direct {v1, p2, p3, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews;)V

    #@1b
    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@1d
    .line 1505
    :goto_0
    return-void

    #@1e
    .line 1511
    :cond_1
    iput-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@20
    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1529
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1530
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    .line 1531
    .local v1, "target":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    #@e
    return-void

    #@f
    .line 1532
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1534
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@15
    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1c
    .line 1528
    :goto_0
    return-void

    #@1d
    .line 1537
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    #@20
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ViewGroupAction"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@e
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v0, "Remove"

    #@13
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :cond_0
    const-string/jumbo v0, "Add"

    #@1f
    goto :goto_0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 7
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1545
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    #@4
    .line 1546
    iget v4, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@6
    invoke-virtual {p1, v4}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    #@9
    move-result-object v1

    #@a
    .line 1547
    .local v1, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v1, :cond_0

    #@c
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    #@f
    move-result-object v4

    #@10
    instance-of v4, v4, Landroid/view/ViewGroup;

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 1550
    iget-object v4, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@16
    if-nez v4, :cond_1

    #@18
    .line 1552
    invoke-static {v1, v6}, Landroid/widget/RemoteViews$ViewTree;->-set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@1b
    .line 1553
    return-object p0

    #@1c
    .line 1548
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 1556
    :cond_1
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@28
    move-result-object v0

    #@29
    .line 1557
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@2b
    .line 1558
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/view/ViewGroup;

    #@31
    .line 1557
    invoke-static {v5, v0, v4, v6, p3}, Landroid/widget/RemoteViews;->-wrap2(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    #@34
    move-result-object v2

    #@35
    .line 1559
    .local v2, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v4, 0x0

    #@36
    new-array v4, v4, [Ljava/lang/Void;

    #@38
    invoke-virtual {v2, v4}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    #@3b
    move-result-object v3

    #@3c
    .line 1563
    .local v3, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;)V

    #@3f
    .line 1565
    new-instance v4, Landroid/widget/RemoteViews$ViewGroupAction$1;

    #@41
    invoke-direct {v4, p0, v2, v3}, Landroid/widget/RemoteViews$ViewGroupAction$1;-><init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;)V

    #@44
    return-object v4
.end method

.method public mergeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 1597
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 1587
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1588
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@6
    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-wrap8(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    #@9
    .line 1586
    :cond_0
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 1
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@0
    .prologue
    .line 1580
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1581
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@6
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    #@d
    .line 1579
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1516
    const/4 v0, 0x4

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 1517
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1518
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1519
    const/4 v0, 0x1

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1520
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 1515
    :goto_0
    return-void

    #@17
    .line 1523
    :cond_0
    const/4 v0, 0x0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    goto :goto_0
.end method
