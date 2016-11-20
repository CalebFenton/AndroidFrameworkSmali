.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field public static final LAYOUT_MARGIN_BOTTOM_DIMEN:I = 0x3

.field public static final LAYOUT_MARGIN_END_DIMEN:I = 0x1

.field public static final LAYOUT_WIDTH:I = 0x2

.field public static final TAG:I = 0x13


# instance fields
.field property:I

.field value:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 1867
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@4
    .line 1868
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    #@6
    .line 1869
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@8
    .line 1870
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@a
    .line 1867
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1873
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@4
    .line 1874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    #@a
    .line 1875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@10
    .line 1876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@16
    .line 1873
    return-void
.end method

.method private static resolveDimenPixelOffset(Landroid/view/View;I)I
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1921
    if-nez p1, :cond_0

    #@3
    .line 1922
    return v0

    #@4
    .line 1924
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@f
    move-result v0

    #@10
    return v0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1888
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    .line 1889
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    #@8
    .line 1890
    return-void

    #@9
    .line 1892
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v0

    #@d
    .line 1893
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    #@f
    .line 1894
    return-void

    #@10
    .line 1896
    :cond_1
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@12
    packed-switch v3, :pswitch_data_0

    #@15
    .line 1916
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Unknown property "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    iget v5, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 1898
    :pswitch_0
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 1899
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@37
    invoke-static {v2, v3}, Landroid/widget/RemoteViews$LayoutParamAction;->resolveDimenPixelOffset(Landroid/view/View;I)I

    #@3a
    move-result v1

    #@3b
    .local v1, "resolved":I
    move-object v3, v0

    #@3c
    .line 1900
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3e
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@41
    .line 1901
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 1887
    .end local v1    # "resolved":I
    :cond_2
    :goto_0
    return-void

    #@45
    .line 1905
    :pswitch_1
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 1906
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@4b
    invoke-static {v2, v3}, Landroid/widget/RemoteViews$LayoutParamAction;->resolveDimenPixelOffset(Landroid/view/View;I)I

    #@4e
    move-result v1

    #@4f
    .restart local v1    # "resolved":I
    move-object v3, v0

    #@50
    .line 1907
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@52
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@54
    .line 1908
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@57
    goto :goto_0

    #@58
    .line 1912
    .end local v1    # "resolved":I
    :pswitch_2
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@5a
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5c
    .line 1913
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5f
    goto :goto_0

    #@60
    .line 1896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "LayoutParamAction"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "."

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1880
    const/16 v0, 0x13

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1881
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1882
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1883
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1879
    return-void
.end method
