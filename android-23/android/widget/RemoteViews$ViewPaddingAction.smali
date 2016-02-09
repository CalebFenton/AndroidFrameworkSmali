.class Landroid/widget/RemoteViews$ViewPaddingAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPaddingAction"
.end annotation


# static fields
.field public static final TAG:I = 0xe


# instance fields
.field bottom:I

.field left:I

.field right:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field top:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIII)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    #@0
    .prologue
    .line 1576
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1577
    iput p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    #@8
    .line 1578
    iput p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    #@a
    .line 1579
    iput p4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    #@c
    .line 1580
    iput p5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    #@e
    .line 1581
    iput p6, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    #@10
    .line 1576
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1584
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    #@c
    .line 1586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    #@12
    .line 1587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    #@18
    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    #@1e
    .line 1589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    #@24
    .line 1584
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1603
    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    #@2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 1604
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 1605
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    #@b
    iget v2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    #@d
    iget v3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    #@f
    iget v4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    #@11
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    #@14
    .line 1602
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1609
    const-string/jumbo v0, "ViewPaddingAction"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1593
    const/16 v0, 0xe

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1594
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1595
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1596
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1597
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1598
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1592
    return-void
.end method
