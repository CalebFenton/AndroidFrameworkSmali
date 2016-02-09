.class Landroid/view/ViewPropertyAnimator$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewPropertyAnimator;

    #@0
    .prologue
    .line 1070
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$AnimatorEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewPropertyAnimator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1096
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@a
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    #@11
    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@13
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1099
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@1b
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1094
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1112
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2
    iget-object v1, v1, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    #@8
    .line 1113
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@a
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1114
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@12
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@19
    .line 1116
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@1b
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@1e
    move-result-object v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1117
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@23
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/Runnable;

    #@2d
    .line 1118
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    #@2f
    .line 1119
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@32
    .line 1121
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@34
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 1123
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@3d
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get0(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@40
    move-result-object v1

    #@41
    if-eqz v1, :cond_4

    #@43
    .line 1124
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@45
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get0(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/lang/Runnable;

    #@4f
    .line 1125
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    #@51
    .line 1126
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@54
    .line 1128
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@56
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get0(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1130
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_4
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@5f
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get1(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 1111
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1106
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@a
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    #@11
    .line 1104
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1074
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get4(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 1075
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@a
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get4(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Runnable;

    #@14
    .line 1076
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    #@16
    .line 1077
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@19
    .line 1079
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@1b
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get4(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1081
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@24
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get3(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 1082
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2c
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get3(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/Runnable;

    #@36
    .line 1083
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    #@38
    .line 1084
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@3b
    .line 1086
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@3d
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get3(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 1088
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@46
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@49
    move-result-object v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 1089
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@4e
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    #@51
    move-result-object v1

    #@52
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    #@55
    .line 1073
    :cond_4
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1143
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@3
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->-get1(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    #@6
    move-result-object v10

    #@7
    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    check-cast v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    #@d
    .line 1144
    .local v5, "propertyBundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    if-nez v5, :cond_0

    #@f
    .line 1146
    return-void

    #@10
    .line 1149
    :cond_0
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@12
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@14
    invoke-virtual {v10}, Landroid/view/View;->isHardwareAccelerated()Z

    #@17
    move-result v3

    #@18
    .line 1156
    .local v3, "hardwareAccelerated":Z
    const/4 v0, 0x0

    #@19
    .line 1157
    .local v0, "alphaHandled":Z
    if-nez v3, :cond_1

    #@1b
    .line 1158
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@1d
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@1f
    invoke-virtual {v10}, Landroid/view/View;->invalidateParentCaches()V

    #@22
    .line 1160
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@25
    move-result v2

    #@26
    .line 1161
    .local v2, "fraction":F
    iget v6, v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@28
    .line 1162
    .local v6, "propertyMask":I
    and-int/lit16 v10, v6, 0x7ff

    #@2a
    if-eqz v10, :cond_2

    #@2c
    .line 1163
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@2e
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@30
    invoke-virtual {v10, v3, v12}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@33
    .line 1165
    :cond_2
    iget-object v8, v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@35
    .line 1166
    .local v8, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    if-eqz v8, :cond_4

    #@37
    .line 1167
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v1

    #@3b
    .line 1168
    .local v1, "count":I
    const/4 v4, 0x0

    #@3c
    .end local v0    # "alphaHandled":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    #@3e
    .line 1169
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v9

    #@42
    check-cast v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@44
    .line 1170
    .local v9, "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v10, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    #@46
    iget v11, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    #@48
    mul-float/2addr v11, v2

    #@49
    add-float v7, v10, v11

    #@4b
    .line 1171
    .local v7, "value":F
    iget v10, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@4d
    const/16 v11, 0x800

    #@4f
    if-ne v10, v11, :cond_3

    #@51
    .line 1172
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@53
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@55
    invoke-virtual {v10, v7}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    #@58
    move-result v0

    #@59
    .line 1168
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 1174
    :cond_3
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@5e
    iget v11, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@60
    invoke-static {v10, v11, v7}, Landroid/view/ViewPropertyAnimator;->-wrap0(Landroid/view/ViewPropertyAnimator;IF)V

    #@63
    goto :goto_1

    #@64
    .line 1178
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v7    # "value":F
    .end local v9    # "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_4
    and-int/lit16 v10, v6, 0x7ff

    #@66
    if-eqz v10, :cond_5

    #@68
    .line 1179
    if-nez v3, :cond_5

    #@6a
    .line 1180
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@6c
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@6e
    iget v11, v10, Landroid/view/View;->mPrivateFlags:I

    #@70
    or-int/lit8 v11, v11, 0x20

    #@72
    iput v11, v10, Landroid/view/View;->mPrivateFlags:I

    #@74
    .line 1185
    :cond_5
    if-eqz v0, :cond_7

    #@76
    .line 1186
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@78
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@7a
    const/4 v11, 0x1

    #@7b
    invoke-virtual {v10, v11}, Landroid/view/View;->invalidate(Z)V

    #@7e
    .line 1190
    :goto_2
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@80
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->-get6(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@83
    move-result-object v10

    #@84
    if-eqz v10, :cond_6

    #@86
    .line 1191
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@88
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->-get6(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@8b
    move-result-object v10

    #@8c
    invoke-interface {v10, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    #@8f
    .line 1142
    :cond_6
    return-void

    #@90
    .line 1188
    :cond_7
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #@92
    iget-object v10, v10, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@94
    invoke-virtual {v10, v12, v12}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    #@97
    goto :goto_2
.end method
