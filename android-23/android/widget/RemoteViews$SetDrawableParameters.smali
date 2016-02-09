.class Landroid/widget/RemoteViews$SetDrawableParameters;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "targetBackground"    # Z
    .param p4, "alpha"    # I
    .param p5, "colorFilter"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p7, "level"    # I

    #@0
    .prologue
    .line 814
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 816
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@8
    .line 817
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@a
    .line 818
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@c
    .line 819
    iput p5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@e
    .line 820
    iput-object p6, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 821
    iput p7, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@12
    .line 815
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 824
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    #@4
    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v2

    #@b
    iput v2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@d
    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :cond_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@16
    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@1c
    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@22
    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    const/4 v0, 0x1

    #@29
    .line 830
    .local v0, "hasMode":Z
    :goto_0
    if-eqz v0, :cond_2

    #@2b
    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@35
    .line 835
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@3b
    .line 824
    return-void

    #@3c
    .line 829
    .end local v0    # "hasMode":Z
    :cond_1
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "hasMode":Z
    goto :goto_0

    #@3e
    .line 833
    :cond_2
    iput-object v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@40
    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 855
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v1

    #@7
    .line 856
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    #@9
    return-void

    #@a
    .line 859
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 860
    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@d
    if-eqz v3, :cond_5

    #@f
    .line 861
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v2

    #@13
    .line 867
    .end local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    #@15
    .line 869
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@17
    if-eq v3, v6, :cond_2

    #@19
    .line 870
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v3

    #@1d
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@1f
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@22
    .line 872
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 873
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v3

    #@2a
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@2c
    iget-object v5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@2e
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@31
    .line 875
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@33
    if-eq v3, v6, :cond_4

    #@35
    .line 876
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v3

    #@39
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@3b
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@3e
    .line 854
    :cond_4
    return-void

    #@3f
    .line 862
    .restart local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    #@41
    if-eqz v3, :cond_1

    #@43
    move-object v0, v1

    #@44
    .line 863
    check-cast v0, Landroid/widget/ImageView;

    #@46
    .line 864
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v2

    #@4a
    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 882
    const-string/jumbo v0, "SetDrawableParameters"

    #@3
    return-object v0
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
    .line 839
    const/4 v0, 0x3

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 840
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 841
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    move v0, v1

    #@10
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 842
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 843
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 844
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 845
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 846
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@26
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 850
    :goto_1
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 838
    return-void

    #@33
    :cond_0
    move v0, v2

    #@34
    .line 841
    goto :goto_0

    #@35
    .line 848
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_1
.end method
