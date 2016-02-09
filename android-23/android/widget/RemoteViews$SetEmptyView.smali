.class Landroid/widget/RemoteViews$SetEmptyView;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetEmptyView"
.end annotation


# static fields
.field public static final TAG:I = 0x6


# instance fields
.field emptyViewId:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "emptyViewId"    # I

    #@0
    .prologue
    .line 331
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 332
    iput p2, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    #@8
    .line 333
    iput p3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    #@a
    .line 331
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    #@c
    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    #@12
    .line 336
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 349
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    .line 350
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/AdapterView;

    #@8
    if-nez v3, :cond_0

    #@a
    return-void

    #@b
    :cond_0
    move-object v0, v2

    #@c
    .line 352
    check-cast v0, Landroid/widget/AdapterView;

    #@e
    .line 354
    .local v0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    #@10
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    .line 355
    .local v1, "emptyView":Landroid/view/View;
    if-nez v1, :cond_1

    #@16
    return-void

    #@17
    .line 357
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    #@1a
    .line 348
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    const-string/jumbo v0, "SetEmptyView"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 342
    const/4 v0, 0x6

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 343
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 344
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 341
    return-void
.end method
