.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field drawablesLoaded:Z

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field id1:Landroid/graphics/drawable/Drawable;

.field id2:Landroid/graphics/drawable/Drawable;

.field id3:Landroid/graphics/drawable/Drawable;

.field id4:Landroid/graphics/drawable/Drawable;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1610
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1755
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@9
    .line 1756
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@b
    .line 1760
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    #@d
    .line 1611
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@f
    .line 1612
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@11
    .line 1613
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@13
    .line 1614
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@15
    .line 1615
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@17
    .line 1616
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@19
    .line 1617
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@1b
    .line 1610
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1620
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1755
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@9
    .line 1756
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@b
    .line 1760
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    #@d
    .line 1622
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@f
    .line 1623
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@11
    .line 1624
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@14
    .line 1625
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@16
    .line 1626
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@18
    .line 1627
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@1a
    .line 1628
    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@1c
    .line 1621
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1631
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 1755
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@a
    .line 1756
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@c
    .line 1760
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    #@e
    .line 1632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@14
    .line 1633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_4

    #@1a
    move v0, v1

    #@1b
    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@1d
    .line 1634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_5

    #@23
    :goto_1
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@25
    .line 1635
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@27
    if-eqz v0, :cond_6

    #@29
    .line 1636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 1637
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@37
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@39
    .line 1639
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 1640
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@47
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@49
    .line 1642
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_2

    #@4f
    .line 1643
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@57
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@59
    .line 1645
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_3

    #@5f
    .line 1646
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@61
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@67
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@69
    .line 1631
    :cond_3
    :goto_2
    return-void

    #@6a
    :cond_4
    move v0, v2

    #@6b
    .line 1633
    goto :goto_0

    #@6c
    :cond_5
    move v1, v2

    #@6d
    .line 1634
    goto :goto_1

    #@6e
    .line 1649
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v0

    #@72
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@74
    .line 1650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v0

    #@78
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@7a
    .line 1651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v0

    #@7e
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@80
    .line 1652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v0

    #@84
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@86
    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1696
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@2
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v5

    #@6
    check-cast v5, Landroid/widget/TextView;

    #@8
    .line 1697
    .local v5, "target":Landroid/widget/TextView;
    if-nez v5, :cond_0

    #@a
    return-void

    #@b
    .line 1698
    :cond_0
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    #@d
    if-eqz v6, :cond_2

    #@f
    .line 1699
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@11
    if-eqz v6, :cond_1

    #@13
    .line 1700
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    #@15
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    #@17
    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    #@19
    iget-object v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@1e
    .line 1695
    :goto_0
    return-void

    #@1f
    .line 1702
    :cond_1
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    #@21
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    #@23
    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1704
    :cond_2
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@2d
    if-eqz v6, :cond_8

    #@2f
    .line 1705
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    .line 1706
    .local v0, "ctx":Landroid/content/Context;
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@35
    if-nez v6, :cond_3

    #@37
    const/4 v1, 0x0

    #@38
    .line 1707
    :goto_1
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@3a
    if-nez v6, :cond_4

    #@3c
    const/4 v2, 0x0

    #@3d
    .line 1708
    :goto_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@3f
    if-nez v6, :cond_5

    #@41
    const/4 v3, 0x0

    #@42
    .line 1709
    :goto_3
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@44
    if-nez v6, :cond_6

    #@46
    const/4 v4, 0x0

    #@47
    .line 1710
    :goto_4
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@49
    if-eqz v6, :cond_7

    #@4b
    .line 1711
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1706
    :cond_3
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@51
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@54
    move-result-object v1

    #@55
    .local v1, "id1":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    #@56
    .line 1707
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@58
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@5b
    move-result-object v2

    #@5c
    .local v2, "id2":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@5d
    .line 1708
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@5f
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@62
    move-result-object v3

    #@63
    .local v3, "id3":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@64
    .line 1709
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@66
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@69
    move-result-object v4

    #@6a
    .local v4, "id4":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    #@6b
    .line 1713
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@6e
    goto :goto_0

    #@6f
    .line 1716
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_8
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@71
    if-eqz v6, :cond_9

    #@73
    .line 1717
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@75
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@77
    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@79
    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@7b
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    #@7e
    goto :goto_0

    #@7f
    .line 1719
    :cond_9
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@81
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@83
    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@85
    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@87
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    #@8a
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1752
    const-string/jumbo v0, "TextViewDrawableAction"

    #@3
    return-object v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 12
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1726
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@3
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v10

    #@7
    check-cast v10, Landroid/widget/TextView;

    #@9
    .line 1727
    .local v10, "target":Landroid/widget/TextView;
    if-nez v10, :cond_0

    #@b
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1729
    :cond_0
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1730
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@16
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@18
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@1a
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@1c
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@1e
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@20
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@22
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@24
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    #@27
    move-object v8, v0

    #@28
    .line 1734
    .local v8, "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    :goto_0
    const/4 v0, 0x1

    #@29
    iput-boolean v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    #@2b
    .line 1735
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v9

    #@2f
    .line 1737
    .local v9, "ctx":Landroid/content/Context;
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@31
    if-eqz v0, :cond_6

    #@33
    .line 1738
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@35
    if-nez v0, :cond_2

    #@37
    move-object v0, v11

    #@38
    :goto_1
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    #@3a
    .line 1739
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@3c
    if-nez v0, :cond_3

    #@3e
    move-object v0, v11

    #@3f
    :goto_2
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    #@41
    .line 1740
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@43
    if-nez v0, :cond_4

    #@45
    move-object v0, v11

    #@46
    :goto_3
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    #@48
    .line 1741
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@4a
    if-nez v0, :cond_5

    #@4c
    :goto_4
    iput-object v11, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    #@4e
    .line 1748
    :goto_5
    return-object v8

    #@4f
    .line 1731
    .end local v8    # "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    .end local v9    # "ctx":Landroid/content/Context;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    #@51
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@53
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@55
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@57
    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@59
    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@5b
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@5d
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@5f
    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    #@62
    move-object v8, v0

    #@63
    goto :goto_0

    #@64
    .line 1738
    .restart local v8    # "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    .restart local v9    # "ctx":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@66
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@69
    move-result-object v0

    #@6a
    goto :goto_1

    #@6b
    .line 1739
    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@6d
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@70
    move-result-object v0

    #@71
    goto :goto_2

    #@72
    .line 1740
    :cond_4
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@74
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@77
    move-result-object v0

    #@78
    goto :goto_3

    #@79
    .line 1741
    :cond_5
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@7b
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@7e
    move-result-object v11

    #@7f
    goto :goto_4

    #@80
    .line 1743
    :cond_6
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@82
    if-nez v0, :cond_7

    #@84
    move-object v0, v11

    #@85
    :goto_6
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    #@87
    .line 1744
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@89
    if-nez v0, :cond_8

    #@8b
    move-object v0, v11

    #@8c
    :goto_7
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    #@8e
    .line 1745
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@90
    if-nez v0, :cond_9

    #@92
    move-object v0, v11

    #@93
    :goto_8
    iput-object v0, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    #@95
    .line 1746
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@97
    if-nez v0, :cond_a

    #@99
    :goto_9
    iput-object v11, v8, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    #@9b
    goto :goto_5

    #@9c
    .line 1743
    :cond_7
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@9e
    invoke-virtual {v9, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a1
    move-result-object v0

    #@a2
    goto :goto_6

    #@a3
    .line 1744
    :cond_8
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@a5
    invoke-virtual {v9, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a8
    move-result-object v0

    #@a9
    goto :goto_7

    #@aa
    .line 1745
    :cond_9
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@ac
    invoke-virtual {v9, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@af
    move-result-object v0

    #@b0
    goto :goto_8

    #@b1
    .line 1746
    :cond_a
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@b3
    invoke-virtual {v9, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b6
    move-result-object v11

    #@b7
    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1657
    const/16 v0, 0xb

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1658
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1659
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1660
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    move v0, v1

    #@19
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1661
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@1e
    if-eqz v0, :cond_6

    #@20
    .line 1662
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1663
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1664
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@29
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 1668
    :goto_2
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 1669
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1670
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@35
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@38
    .line 1674
    :goto_3
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1675
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 1676
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@41
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@44
    .line 1680
    :goto_4
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 1681
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 1682
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@4d
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@50
    .line 1656
    :goto_5
    return-void

    #@51
    :cond_0
    move v0, v2

    #@52
    .line 1659
    goto :goto_0

    #@53
    :cond_1
    move v0, v2

    #@54
    .line 1660
    goto :goto_1

    #@55
    .line 1666
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_2

    #@59
    .line 1672
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_3

    #@5d
    .line 1678
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    goto :goto_4

    #@61
    .line 1684
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    goto :goto_5

    #@65
    .line 1687
    :cond_6
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 1688
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 1689
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 1690
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    goto :goto_5
.end method
