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
    .line 921
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 923
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@8
    .line 924
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@a
    .line 925
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@c
    .line 926
    iput p5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@e
    .line 927
    iput-object p6, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 928
    iput p7, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@12
    .line 922
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 931
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    #@5
    invoke-direct {p0, v4}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@e
    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    move v1, v2

    #@15
    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@17
    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@1d
    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@23
    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    move v0, v2

    #@2a
    .line 937
    .local v0, "hasMode":Z
    :goto_1
    if-eqz v0, :cond_2

    #@2c
    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@36
    .line 942
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@3c
    .line 931
    return-void

    #@3d
    .end local v0    # "hasMode":Z
    :cond_0
    move v1, v3

    #@3e
    .line 933
    goto :goto_0

    #@3f
    :cond_1
    move v0, v3

    #@40
    .line 936
    goto :goto_1

    #@41
    .line 940
    .restart local v0    # "hasMode":Z
    :cond_2
    iput-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@43
    goto :goto_2
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
    .line 962
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v1

    #@7
    .line 963
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    #@9
    return-void

    #@a
    .line 966
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 967
    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@d
    if-eqz v3, :cond_5

    #@f
    .line 968
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v2

    #@13
    .line 974
    .end local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    #@15
    .line 976
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@17
    if-eq v3, v6, :cond_2

    #@19
    .line 977
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v3

    #@1d
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@1f
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@22
    .line 979
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 980
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
    .line 982
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@33
    if-eq v3, v6, :cond_4

    #@35
    .line 983
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v3

    #@39
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@3b
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@3e
    .line 961
    :cond_4
    return-void

    #@3f
    .line 969
    .restart local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    #@41
    if-eqz v3, :cond_1

    #@43
    move-object v0, v1

    #@44
    .line 970
    check-cast v0, Landroid/widget/ImageView;

    #@46
    .line 971
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
    .line 989
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
    .line 946
    const/4 v0, 0x3

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 947
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 948
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    move v0, v1

    #@10
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 949
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 950
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 951
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 952
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 953
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    #@26
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 957
    :goto_1
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 945
    return-void

    #@33
    :cond_0
    move v0, v2

    #@34
    .line 948
    goto :goto_0

    #@35
    .line 955
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_1
.end method
