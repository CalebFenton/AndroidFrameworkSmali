.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# static fields
.field static final blacklist NO_ID:I = -0x1


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-r mNestedViews:Landroid/widget/RemoteViews;

.field private blacklist mStableId:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$rBlBi8K6ngja77O0hGAUvrG9EY4(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->lambda$initActionAsync$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
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

    .line 4029
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p2    # "viewId":I
    .end local p3    # "nestedViews":Landroid/widget/RemoteViews;
    .local v2, "viewId":I
    .local v3, "nestedViews":Landroid/widget/RemoteViews;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4030
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .registers 11
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4033
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p2    # "viewId":I
    .end local p3    # "nestedViews":Landroid/widget/RemoteViews;
    .end local p4    # "index":I
    .local v2, "viewId":I
    .local v3, "nestedViews":Landroid/widget/RemoteViews;
    .local v4, "index":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4034
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .registers 7
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I
    .param p5, "stableId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4036
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4037
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4038
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 4039
    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 4040
    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 4041
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4042
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .registers 12
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4044
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4046
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 4047
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 4048
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .end local p2    # "parcel":Landroid/os/Parcel;
    .end local p3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p4    # "depth":I
    .local v2, "parcel":Landroid/os/Parcel;
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    .local v5, "depth":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 4049
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 4050
    return-void
.end method

.method private blacklist findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .registers 7
    .param p1, "target"    # Landroid/view/ViewGroup;
    .param p2, "newContent"    # Landroid/widget/RemoteViews;

    .line 4065
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .local v0, "nextChild":I
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 4067
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4068
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v2, v3, :cond_17

    .line 4069
    return v0

    .line 4066
    .end local v1    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4072
    .end local v0    # "nextChild":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/RemoteViews$ViewTree;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p4, "finalizeAction"    # Ljava/lang/Runnable;

    .line 4195
    invoke-static {p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 4196
    .local v3, "targetVg":Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 4197
    .local v0, "nextChild":I
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v2, "context":Landroid/content/Context;
    .local v5, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p1

    .line 4199
    move-object p3, v2

    move-object v8, v5

    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v8, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local p1, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local p3, "context":Landroid/content/Context;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    .line 4201
    .local v4, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v4, :cond_55

    .line 4204
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 4205
    invoke-static {p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 4210
    :cond_2f
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v1, :cond_37

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    move v7, v1

    goto :goto_38

    :cond_37
    move v7, v0

    .line 4211
    .local v7, "insertIndex":I
    :goto_38
    invoke-virtual {p2, v4, v7}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 4212
    if-ltz v0, :cond_4a

    .line 4213
    add-int/lit8 v1, v0, 0x1

    invoke-static {p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v3, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4216
    :cond_4a
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v2, p0

    move-object v5, p4

    move-object v6, v3

    move-object v3, p1

    .end local p1    # "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local p4    # "finalizeAction":Ljava/lang/Runnable;
    .local v3, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local v5, "finalizeAction":Ljava/lang/Runnable;
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    move-object v3, v6

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v3, "targetVg":Landroid/view/ViewGroup;
    .restart local p1    # "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    return-object v1

    .line 4202
    .end local v5    # "finalizeAction":Ljava/lang/Runnable;
    .end local v7    # "insertIndex":I
    .restart local p4    # "finalizeAction":Ljava/lang/Runnable;
    :cond_55
    move-object v5, p4

    .end local p4    # "finalizeAction":Ljava/lang/Runnable;
    .restart local v5    # "finalizeAction":Ljava/lang/Runnable;
    new-instance p4, Landroid/widget/RemoteViews$ActionException;

    invoke-static {p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {p4, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw p4
.end method

.method private synthetic blacklist lambda$initActionAsync$0(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 4149
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .registers 4
    .param p0, "targetVg"    # Landroid/view/ViewGroup;
    .param p1, "nextChild"    # I
    .param p2, "recycledViewIndex"    # I

    .line 4184
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$2()V
    .registers 0

    .line 4190
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 13
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4077
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4078
    .local v1, "context":Landroid/content/Context;
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 4080
    .local v2, "target":Landroid/view/ViewGroup;
    if-nez v2, :cond_10

    .line 4081
    return-void

    .line 4087
    :cond_10
    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v6

    .line 4088
    .local v6, "nextChild":I
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4090
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v3

    and-int/lit8 v7, v3, 0x6

    .line 4091
    .local v7, "flagsToPropagate":I
    if-eqz v7, :cond_27

    invoke-virtual {v0, v7}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 4093
    :cond_27
    const/4 v8, -0x1

    if-ltz v6, :cond_59

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v3, v8, :cond_59

    .line 4097
    invoke-direct {p0, v2, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v3

    .line 4098
    .local v3, "recycledViewIndex":I
    if-ltz v3, :cond_59

    .line 4099
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4100
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 4101
    if-ge v6, v3, :cond_45

    .line 4102
    sub-int v5, v3, v6

    invoke-virtual {v2, v6, v5}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4104
    :cond_45
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-static {v2, v5, v8}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4105
    invoke-static {v0, v1, v4, p2, p3}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 4106
    return-void

    .line 4110
    :cond_52
    sub-int v5, v3, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4116
    .end local v3    # "recycledViewIndex":I
    .end local v4    # "child":Landroid/view/View;
    :cond_59
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    .end local p2    # "rootParent":Landroid/view/ViewGroup;
    .end local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v3, "rootParent":Landroid/view/ViewGroup;
    .local v5, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    invoke-static/range {v0 .. v5}, Landroid/widget/RemoteViews;->-$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p2

    .line 4117
    .local p2, "nestedView":Landroid/view/View;
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq p3, v8, :cond_69

    .line 4118
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {p2, p3}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 4120
    :cond_69
    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz p3, :cond_70

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    goto :goto_71

    :cond_70
    move p3, v6

    :goto_71
    invoke-virtual {v2, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4121
    if-ltz v6, :cond_7f

    .line 4123
    add-int/lit8 p3, v6, 0x1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v2, p3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4125
    :cond_7f
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4253
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 4238
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 19
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4132
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 4133
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    move-object/from16 v9, p1

    invoke-virtual {v9, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v10

    .line 4134
    .local v10, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v10, :cond_cd

    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    move-object/from16 v7, p3

    goto/16 :goto_cf

    .line 4137
    :cond_19
    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 4140
    .local v4, "targetVg":Landroid/view/ViewGroup;
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4145
    .local v3, "context":Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 4146
    .local v0, "nextChild":I
    if-ltz v0, :cond_bf

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_bf

    .line 4147
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4148
    .local v2, "rvToApply":Landroid/widget/RemoteViews;
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {v10, v0, v5}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v11

    .line 4150
    .local v11, "recycledViewIndex":I
    if-ltz v11, :cond_b8

    .line 4154
    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/RemoteViews$ViewTree;

    .line 4156
    .local v12, "recycled":Landroid/widget/RemoteViews$ViewTree;
    invoke-static {v12}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 4157
    if-le v11, v0, :cond_60

    .line 4158
    sub-int v5, v11, v0

    invoke-virtual {v10, v0, v5}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 4160
    :cond_60
    add-int/lit8 v5, v0, 0x1

    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4161
    const/4 v7, 0x0

    invoke-static {v12}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v8}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v5

    .line 4165
    move-object v13, v2

    move-object v8, v3

    move-object v7, v6

    .end local v2    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v3    # "context":Landroid/content/Context;
    .local v5, "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local v8, "context":Landroid/content/Context;
    .local v13, "rvToApply":Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v5, v2}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 4166
    .local v3, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_94

    .line 4169
    move-object v2, v5

    move v5, v0

    .end local v0    # "nextChild":I
    .local v2, "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local v5, "nextChild":I
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object v1, p0

    move-object v6, v4

    move v4, v11

    .end local v11    # "recycledViewIndex":I
    .local v4, "recycledViewIndex":I
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    move-object v14, v6

    move-object v6, v0

    move v0, v4

    move-object v4, v14

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v0, "recycledViewIndex":I
    .local v4, "targetVg":Landroid/view/ViewGroup;
    return-object v6

    .line 4167
    .end local v2    # "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local v0, "nextChild":I
    .local v5, "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .restart local v11    # "recycledViewIndex":I
    :cond_94
    move-object v2, v5

    move v5, v0

    move v0, v11

    .end local v11    # "recycledViewIndex":I
    .local v0, "recycledViewIndex":I
    .restart local v2    # "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .local v5, "nextChild":I
    new-instance v6, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v2}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 4182
    .end local v5    # "nextChild":I
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "rvToApply":Landroid/widget/RemoteViews;
    .local v0, "nextChild":I
    .local v2, "rvToApply":Landroid/widget/RemoteViews;
    .local v3, "context":Landroid/content/Context;
    .restart local v11    # "recycledViewIndex":I
    :cond_a1
    move-object/from16 v7, p3

    move v5, v0

    move-object v13, v2

    move-object v8, v3

    move v0, v11

    .end local v2    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "recycledViewIndex":I
    .local v0, "recycledViewIndex":I
    .restart local v5    # "nextChild":I
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v13    # "rvToApply":Landroid/widget/RemoteViews;
    sub-int v11, v0, v5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 4183
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4, v5, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    invoke-direct {p0, v8, v10, v7, v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v2

    return-object v2

    .line 4150
    .end local v5    # "nextChild":I
    .end local v8    # "context":Landroid/content/Context;
    .end local v12    # "recycled":Landroid/widget/RemoteViews$ViewTree;
    .end local v13    # "rvToApply":Landroid/widget/RemoteViews;
    .local v0, "nextChild":I
    .restart local v2    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v11    # "recycledViewIndex":I
    :cond_b8
    move-object/from16 v7, p3

    move v5, v0

    move-object v13, v2

    move-object v8, v3

    move v0, v11

    .end local v2    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "recycledViewIndex":I
    .local v0, "recycledViewIndex":I
    .restart local v5    # "nextChild":I
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v13    # "rvToApply":Landroid/widget/RemoteViews;
    goto :goto_c3

    .line 4146
    .end local v5    # "nextChild":I
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "rvToApply":Landroid/widget/RemoteViews;
    .local v0, "nextChild":I
    .restart local v3    # "context":Landroid/content/Context;
    :cond_bf
    move-object/from16 v7, p3

    move v5, v0

    move-object v8, v3

    .line 4190
    .end local v0    # "nextChild":I
    .end local v3    # "context":Landroid/content/Context;
    .restart local v5    # "nextChild":I
    .restart local v8    # "context":Landroid/content/Context;
    :goto_c3
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v8, v10, v7, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    .line 4134
    .end local v4    # "targetVg":Landroid/view/ViewGroup;
    .end local v5    # "nextChild":I
    .end local v8    # "context":Landroid/content/Context;
    :cond_cd
    move-object/from16 v7, p3

    .line 4135
    :goto_cf
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 4228
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 4233
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3
    .param p1, "root"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 4061
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4062
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 4248
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/Icon;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 4249
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4243
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 4244
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4053
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4054
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4055
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4057
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 4258
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteViewsProto()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4259
    :cond_7
    const-wide v0, 0x10b00000013L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4260
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    .line 4261
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4260
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4262
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4263
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4264
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 4265
    .local v2, "rvToken":J
    iget-object v4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p2, p1}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 4266
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4267
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4268
    return-void
.end method
