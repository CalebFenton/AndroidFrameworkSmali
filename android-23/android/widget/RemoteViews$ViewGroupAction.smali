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
    .line 1336
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1337
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@8
    .line 1338
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@a
    .line 1339
    if-eqz p3, :cond_0

    #@c
    .line 1340
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->-wrap3(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@f
    .line 1336
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
    const/4 v2, 0x0

    #@1
    .line 1344
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    invoke-direct {p0, v2}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v1

    #@a
    iput v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@c
    .line 1346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 1347
    .local v0, "nestedViewsNull":Z
    :goto_0
    if-nez v0, :cond_1

    #@15
    .line 1348
    new-instance v1, Landroid/widget/RemoteViews;

    #@17
    invoke-direct {v1, p2, p3, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews;)V

    #@1a
    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@1c
    .line 1344
    :goto_1
    return-void

    #@1d
    .line 1346
    .end local v0    # "nestedViewsNull":Z
    :cond_0
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "nestedViewsNull":Z
    goto :goto_0

    #@1f
    .line 1350
    :cond_1
    iput-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@21
    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1368
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1369
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    .line 1370
    .local v1, "target":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    #@e
    return-void

    #@f
    .line 1371
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1373
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@15
    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1c
    .line 1367
    :goto_0
    return-void

    #@1d
    .line 1376
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    #@20
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1395
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

.method public mergeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 1399
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1390
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@6
    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-wrap4(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    #@9
    .line 1388
    :cond_0
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 1
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@0
    .prologue
    .line 1382
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1383
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@6
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    #@d
    .line 1381
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1355
    const/4 v0, 0x4

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 1356
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1357
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1358
    const/4 v0, 0x1

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1359
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 1354
    :goto_0
    return-void

    #@17
    .line 1362
    :cond_0
    const/4 v0, 0x0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    goto :goto_0
.end method
