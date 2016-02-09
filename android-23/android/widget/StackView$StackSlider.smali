.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/StackView;

    #@0
    .prologue
    .line 906
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 904
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    #@8
    .line 906
    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "copy"    # Landroid/widget/StackView$StackSlider;

    #@0
    .prologue
    .line 909
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 904
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    #@8
    .line 910
    iget-object v0, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@a
    iput-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@c
    .line 911
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@e
    iput v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@10
    .line 912
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    #@12
    iput v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    #@14
    .line 913
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    #@16
    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    #@18
    .line 909
    return-void
.end method

.method private cubic(F)F
    .locals 5
    .param p1, "r"    # F

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    .line 917
    mul-float v0, v4, p1

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    sub-float/2addr v0, v1

    #@7
    float-to-double v0, v0

    #@8
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    #@a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@d
    move-result-wide v0

    #@e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@10
    add-double/2addr v0, v2

    #@11
    double-to-float v0, v0

    #@12
    div-float/2addr v0, v4

    #@13
    return v0
.end method

.method private getDuration(ZF)F
    .locals 10
    .param p1, "invert"    # Z
    .param p2, "velocity"    # F

    #@0
    .prologue
    const/high16 v9, 0x43c80000    # 400.0f

    #@2
    const/4 v8, 0x0

    #@3
    .line 1049
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@5
    if-eqz v4, :cond_5

    #@7
    .line 1050
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/widget/StackView$LayoutParams;

    #@f
    .line 1052
    .local v3, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget v4, v3, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@11
    int-to-double v4, v4

    #@12
    iget v6, v3, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@14
    int-to-double v6, v6

    #@15
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@18
    move-result-wide v4

    #@19
    double-to-float v0, v4

    #@1a
    .line 1053
    .local v0, "d":F
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@1c
    invoke-static {v4}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@1f
    move-result v4

    #@20
    int-to-double v4, v4

    #@21
    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@23
    invoke-static {v6}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@26
    move-result v6

    #@27
    int-to-float v6, v6

    #@28
    const v7, 0x3ecccccd    # 0.4f

    #@2b
    mul-float/2addr v6, v7

    #@2c
    float-to-double v6, v6

    #@2d
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@30
    move-result-wide v4

    #@31
    double-to-float v2, v4

    #@32
    .line 1055
    .local v2, "maxd":F
    cmpl-float v4, p2, v8

    #@34
    if-nez v4, :cond_1

    #@36
    .line 1056
    if-eqz p1, :cond_0

    #@38
    div-float v4, v0, v2

    #@3a
    const/high16 v5, 0x3f800000    # 1.0f

    #@3c
    sub-float v4, v5, v4

    #@3e
    :goto_0
    mul-float/2addr v4, v9

    #@3f
    return v4

    #@40
    :cond_0
    div-float v4, v0, v2

    #@42
    goto :goto_0

    #@43
    .line 1058
    :cond_1
    if-eqz p1, :cond_3

    #@45
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@48
    move-result v4

    #@49
    div-float v1, v0, v4

    #@4b
    .line 1060
    .local v1, "duration":F
    :goto_1
    const/high16 v4, 0x42480000    # 50.0f

    #@4d
    cmpg-float v4, v1, v4

    #@4f
    if-ltz v4, :cond_2

    #@51
    .line 1061
    cmpl-float v4, v1, v9

    #@53
    if-lez v4, :cond_4

    #@55
    .line 1062
    :cond_2
    invoke-direct {p0, p1, v8}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    #@58
    move-result v4

    #@59
    return v4

    #@5a
    .line 1059
    .end local v1    # "duration":F
    :cond_3
    sub-float v4, v2, v0

    #@5c
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@5f
    move-result v5

    #@60
    div-float v1, v4, v5

    #@62
    .restart local v1    # "duration":F
    goto :goto_1

    #@63
    .line 1064
    :cond_4
    return v1

    #@64
    .line 1068
    .end local v0    # "d":F
    .end local v1    # "duration":F
    .end local v2    # "maxd":F
    .end local v3    # "viewLp":Landroid/widget/StackView$LayoutParams;
    :cond_5
    return v8
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    #@0
    .prologue
    const v2, 0x3f59999a    # 0.85f

    #@3
    const v1, 0x3ecccccd    # 0.4f

    #@6
    .line 922
    cmpg-float v0, p1, v1

    #@8
    if-gez v0, :cond_0

    #@a
    .line 923
    div-float v0, p1, v1

    #@c
    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    #@f
    move-result v0

    #@10
    mul-float/2addr v0, v2

    #@11
    return v0

    #@12
    .line 925
    :cond_0
    sub-float v0, p1, v1

    #@14
    const v1, 0x3f19999a    # 0.6f

    #@17
    div-float/2addr v0, v1

    #@18
    const/high16 v1, 0x3f800000    # 1.0f

    #@1a
    sub-float v0, v1, v0

    #@1c
    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    #@1f
    move-result v0

    #@20
    mul-float/2addr v0, v2

    #@21
    return v0
.end method

.method private rotationInterpolator(F)F
    .locals 2
    .param p1, "r"    # F

    #@0
    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    #@3
    .line 940
    cmpg-float v0, p1, v1

    #@5
    if-gez v0, :cond_0

    #@7
    .line 941
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 943
    :cond_0
    sub-float v0, p1, v1

    #@b
    const v1, 0x3f4ccccd    # 0.8f

    #@e
    div-float/2addr v0, v1

    #@f
    return v0
.end method

.method private viewAlphaInterpolator(F)F
    .locals 2
    .param p1, "r"    # F

    #@0
    .prologue
    const v1, 0x3e99999a    # 0.3f

    #@3
    .line 931
    cmpl-float v0, p1, v1

    #@5
    if-lez v0, :cond_0

    #@7
    .line 932
    sub-float v0, p1, v1

    #@9
    const v1, 0x3f333333    # 0.7f

    #@c
    div-float/2addr v0, v1

    #@d
    return v0

    #@e
    .line 934
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .locals 2

    #@0
    .prologue
    .line 1033
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    #@0
    .prologue
    .line 1041
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method getDurationForOffscreenPosition()F
    .locals 2

    #@0
    .prologue
    .line 1037
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .locals 1
    .param p1, "velocity"    # F

    #@0
    .prologue
    .line 1045
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getXProgress()F
    .locals 1

    #@0
    .prologue
    .line 1080
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    #@2
    return v0
.end method

.method public getYProgress()F
    .locals 1

    #@0
    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@2
    return v0
.end method

.method setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1029
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    #@2
    .line 1028
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 948
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@2
    .line 947
    return-void
.end method

.method public setXProgress(F)V
    .locals 3
    .param p1, "r"    # F

    #@0
    .prologue
    .line 1014
    const/high16 v2, 0x40000000    # 2.0f

    #@2
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    #@5
    move-result p1

    #@6
    .line 1015
    const/high16 v2, -0x40000000    # -2.0f

    #@8
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    #@b
    move-result p1

    #@c
    .line 1017
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    #@e
    .line 1019
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@10
    if-nez v2, :cond_0

    #@12
    return-void

    #@13
    .line 1020
    :cond_0
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    #@1b
    .line 1021
    .local v1, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@1d
    invoke-static {v2}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/widget/StackView$LayoutParams;

    #@27
    .line 1023
    .local v0, "highlightLp":Landroid/widget/StackView$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    #@2a
    mul-float/2addr p1, v2

    #@2b
    .line 1024
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@2d
    invoke-static {v2}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@30
    move-result v2

    #@31
    int-to-float v2, v2

    #@32
    mul-float/2addr v2, p1

    #@33
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    #@3a
    .line 1025
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@3c
    invoke-static {v2}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@3f
    move-result v2

    #@40
    int-to-float v2, v2

    #@41
    mul-float/2addr v2, p1

    #@42
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@45
    move-result v2

    #@46
    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    #@49
    .line 1012
    return-void
.end method

.method public setYProgress(F)V
    .locals 11
    .param p1, "r"    # F

    #@0
    .prologue
    const v10, 0x3e4ccccd    # 0.2f

    #@3
    const/4 v9, 0x0

    #@4
    const/high16 v8, 0x3f800000    # 1.0f

    #@6
    const/4 v7, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    .line 953
    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    #@b
    move-result p1

    #@c
    .line 954
    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    #@f
    move-result p1

    #@10
    .line 956
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@12
    .line 957
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@14
    if-nez v4, :cond_0

    #@16
    return-void

    #@17
    .line 959
    :cond_0
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/widget/StackView$LayoutParams;

    #@1f
    .line 960
    .local v3, "viewLp":Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@21
    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    #@2b
    .line 962
    .local v1, "highlightLp":Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@2d
    invoke-static {v4}, Landroid/widget/StackView;->-get2(Landroid/widget/StackView;)I

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_2

    #@33
    const/4 v2, 0x1

    #@34
    .line 966
    .local v2, "stackDirection":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@36
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_3

    #@3c
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    #@3e
    invoke-static {v8, v4}, Ljava/lang/Float;->compare(FF)I

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 967
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@46
    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_1

    #@4c
    .line 968
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@4e
    const/4 v5, 0x2

    #@4f
    invoke-virtual {v4, v5, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@52
    .line 976
    :cond_1
    :goto_1
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    #@54
    packed-switch v4, :pswitch_data_0

    #@57
    .line 951
    :goto_2
    return-void

    #@58
    .line 962
    .end local v2    # "stackDirection":I
    :cond_2
    const/4 v2, -0x1

    #@59
    .restart local v2    # "stackDirection":I
    goto :goto_0

    #@5a
    .line 971
    :cond_3
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@5c
    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 972
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@64
    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@67
    goto :goto_1

    #@68
    .line 978
    :pswitch_0
    neg-float v4, p1

    #@69
    int-to-float v5, v2

    #@6a
    mul-float/2addr v4, v5

    #@6b
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@6d
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@70
    move-result v5

    #@71
    int-to-float v5, v5

    #@72
    mul-float/2addr v4, v5

    #@73
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@76
    move-result v4

    #@77
    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@7a
    .line 979
    neg-float v4, p1

    #@7b
    int-to-float v5, v2

    #@7c
    mul-float/2addr v4, v5

    #@7d
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@7f
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@82
    move-result v5

    #@83
    int-to-float v5, v5

    #@84
    mul-float/2addr v4, v5

    #@85
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@88
    move-result v4

    #@89
    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@8c
    .line 980
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@8e
    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@91
    move-result-object v4

    #@92
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    #@95
    move-result v5

    #@96
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    #@99
    .line 982
    sub-float v4, v8, p1

    #@9b
    invoke-direct {p0, v4}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    #@9e
    move-result v0

    #@9f
    .line 986
    .local v0, "alpha":F
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@a1
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    #@a4
    move-result v4

    #@a5
    cmpl-float v4, v4, v7

    #@a7
    if-nez v4, :cond_5

    #@a9
    cmpl-float v4, v0, v7

    #@ab
    if-eqz v4, :cond_5

    #@ad
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@af
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_5

    #@b5
    .line 987
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@b7
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    #@ba
    .line 993
    :cond_4
    :goto_3
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@bc
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    #@bf
    .line 994
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@c1
    int-to-float v5, v2

    #@c2
    const/high16 v6, 0x42b40000    # 90.0f

    #@c4
    mul-float/2addr v5, v6

    #@c5
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    #@c8
    move-result v6

    #@c9
    mul-float/2addr v5, v6

    #@ca
    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationX(F)V

    #@cd
    .line 995
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@cf
    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@d2
    move-result-object v4

    #@d3
    int-to-float v5, v2

    #@d4
    const/high16 v6, 0x42b40000    # 90.0f

    #@d6
    mul-float/2addr v5, v6

    #@d7
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    #@da
    move-result v6

    #@db
    mul-float/2addr v5, v6

    #@dc
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    #@df
    goto/16 :goto_2

    #@e1
    .line 988
    :cond_5
    cmpl-float v4, v0, v7

    #@e3
    if-nez v4, :cond_4

    #@e5
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@e7
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    #@ea
    move-result v4

    #@eb
    cmpl-float v4, v4, v7

    #@ed
    if-eqz v4, :cond_4

    #@ef
    .line 989
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@f1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@f4
    move-result v4

    #@f5
    if-nez v4, :cond_4

    #@f7
    .line 990
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    #@f9
    const/4 v5, 0x4

    #@fa
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    #@fd
    goto :goto_3

    #@fe
    .line 998
    .end local v0    # "alpha":F
    :pswitch_1
    mul-float/2addr p1, v10

    #@ff
    .line 999
    neg-int v4, v2

    #@100
    int-to-float v4, v4

    #@101
    mul-float/2addr v4, p1

    #@102
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@104
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@107
    move-result v5

    #@108
    int-to-float v5, v5

    #@109
    mul-float/2addr v4, v5

    #@10a
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@10d
    move-result v4

    #@10e
    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@111
    .line 1000
    neg-int v4, v2

    #@112
    int-to-float v4, v4

    #@113
    mul-float/2addr v4, p1

    #@114
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@116
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@119
    move-result v5

    #@11a
    int-to-float v5, v5

    #@11b
    mul-float/2addr v4, v5

    #@11c
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@11f
    move-result v4

    #@120
    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@123
    .line 1001
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@125
    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@128
    move-result-object v4

    #@129
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    #@12c
    move-result v5

    #@12d
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    #@130
    goto/16 :goto_2

    #@132
    .line 1004
    :pswitch_2
    sub-float v4, v8, p1

    #@134
    mul-float p1, v4, v10

    #@136
    .line 1005
    int-to-float v4, v2

    #@137
    mul-float/2addr v4, p1

    #@138
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@13a
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@13d
    move-result v5

    #@13e
    int-to-float v5, v5

    #@13f
    mul-float/2addr v4, v5

    #@140
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@143
    move-result v4

    #@144
    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@147
    .line 1006
    int-to-float v4, v2

    #@148
    mul-float/2addr v4, p1

    #@149
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@14b
    invoke-static {v5}, Landroid/widget/StackView;->-get1(Landroid/widget/StackView;)I

    #@14e
    move-result v5

    #@14f
    int-to-float v5, v5

    #@150
    mul-float/2addr v4, v5

    #@151
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@154
    move-result v4

    #@155
    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@158
    .line 1007
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #@15a
    invoke-static {v4}, Landroid/widget/StackView;->-get0(Landroid/widget/StackView;)Landroid/widget/ImageView;

    #@15d
    move-result-object v4

    #@15e
    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    #@161
    move-result v5

    #@162
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    #@165
    goto/16 :goto_2

    #@167
    .line 976
    nop

    #@168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
