.class Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableColorFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x11


# instance fields
.field final color:I

.field final index:I

.field final isRelative:Z

.field final mode:Landroid/graphics/PorterDuff$Mode;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "index"    # I
    .param p5, "color"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1622
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1624
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    #@8
    .line 1625
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    #@a
    .line 1626
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@c
    .line 1627
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    #@e
    .line 1628
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 1623
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1631
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    #@d
    .line 1633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    #@16
    .line 1634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@1c
    .line 1635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    #@22
    .line 1636
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    #@28
    .line 1631
    return-void
.end method

.method private readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1641
    .local v0, "mode":I
    if-ltz v0, :cond_0

    #@6
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    #@9
    move-result-object v1

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1642
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    #@10
    move-result-object v1

    #@11
    aget-object v1, v1, v0

    #@13
    return-object v1

    #@14
    .line 1644
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@16
    return-object v1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1659
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Landroid/widget/TextView;

    #@8
    .line 1660
    .local v2, "target":Landroid/widget/TextView;
    if-nez v2, :cond_0

    #@a
    return-void

    #@b
    .line 1661
    :cond_0
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 1662
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    .line 1664
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@15
    if-ltz v3, :cond_1

    #@17
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@19
    const/4 v4, 0x4

    #@1a
    if-lt v3, v4, :cond_3

    #@1c
    .line 1665
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v4, "index must be in range [0, 3]."

    #@21
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3

    #@25
    .line 1663
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v1

    #@29
    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@2a
    .line 1667
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@2c
    aget-object v0, v1, v3

    #@2e
    .line 1668
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@30
    .line 1669
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@33
    .line 1670
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    #@35
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    #@37
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@3a
    .line 1658
    :cond_4
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1675
    const-string/jumbo v0, "TextViewDrawableColorFilterAction"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1649
    const/16 v0, 0x11

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1650
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1651
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1652
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1653
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1654
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    #@21
    move-result v0

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1648
    return-void

    #@26
    .line 1651
    :cond_0
    const/4 v0, 0x0

    #@27
    goto :goto_0
.end method
