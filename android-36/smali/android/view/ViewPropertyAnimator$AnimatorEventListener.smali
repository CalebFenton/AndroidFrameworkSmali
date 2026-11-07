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
.field final synthetic blacklist this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor blacklist <init>(Landroid/view/ViewPropertyAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1064
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1089
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1090
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1092
    :cond_11
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1093
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    :cond_22
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1106
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1107
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorCleanupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1108
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorCleanupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1109
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_21

    .line 1110
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1112
    :cond_21
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorCleanupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2a
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1115
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1117
    :cond_3b
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 1118
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1119
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_54

    .line 1120
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1122
    :cond_54
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_5d
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1099
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1100
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1102
    :cond_11
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1068
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorSetupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1069
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorSetupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1070
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_19

    .line 1071
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1073
    :cond_19
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorSetupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_22
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnStartMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1076
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnStartMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1077
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_3b

    .line 1078
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1080
    :cond_3b
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorOnStartMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_44
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 1083
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1085
    :cond_55
    return-void
.end method

.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 15
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1137
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmAnimatorMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 1138
    .local v0, "propertyBundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    if-nez v0, :cond_f

    .line 1140
    return-void

    .line 1143
    :cond_f
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v1, v1, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    .line 1150
    .local v1, "hardwareAccelerated":Z
    const/4 v2, 0x0

    .line 1151
    .local v2, "alphaHandled":Z
    if-nez v1, :cond_21

    .line 1152
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v3, v3, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidateParentCaches()V

    .line 1154
    :cond_21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 1155
    .local v3, "fraction":F
    iget v4, v0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 1156
    .local v4, "propertyMask":I
    and-int/lit16 v5, v4, 0x7ff

    const/4 v6, 0x0

    if-eqz v5, :cond_33

    .line 1157
    iget-object v5, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v5, v5, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v5, v1, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 1159
    :cond_33
    iget-object v5, v0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .line 1160
    .local v5, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    if-eqz v5, :cond_63

    .line 1161
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1162
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3c
    if-ge v8, v7, :cond_63

    .line 1163
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 1164
    .local v9, "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v10, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v11, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    .line 1165
    .local v10, "value":F
    iget v11, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/16 v12, 0x800

    if-ne v11, v12, :cond_59

    .line 1166
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v11, v11, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    move-result v2

    goto :goto_60

    .line 1168
    :cond_59
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget v12, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    invoke-static {v11, v12, v10}, Landroid/view/ViewPropertyAnimator;->-$$Nest$msetValue(Landroid/view/ViewPropertyAnimator;IF)V

    .line 1162
    .end local v9    # "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    .end local v10    # "value":F
    :goto_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 1172
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_63
    and-int/lit16 v7, v4, 0x7ff

    if-eqz v7, :cond_73

    .line 1173
    if-nez v1, :cond_73

    .line 1174
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v7, v7, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 1179
    :cond_73
    if-eqz v2, :cond_7e

    .line 1180
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v6, v6, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    goto :goto_85

    .line 1182
    :cond_7e
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v7, v7, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v7, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 1184
    :goto_85
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v6}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmUpdateListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 1185
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v6}, Landroid/view/ViewPropertyAnimator;->-$$Nest$fgetmUpdateListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1187
    :cond_96
    return-void
.end method
