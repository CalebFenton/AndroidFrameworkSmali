.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$anim:Landroid/animation/Animator;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$duration:J

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .param p2, "val$anim"    # Landroid/animation/Animator;
    .param p3, "val$changeReason"    # I
    .param p4, "val$duration"    # J
    .param p6, "val$child"    # Landroid/view/View;
    .param p7, "val$parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 879
    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@2
    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@4
    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    #@6
    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    #@8
    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@a
    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    #@0
    .prologue
    .line 884
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@4
    invoke-virtual {v12}, Landroid/animation/Animator;->setupEndValues()V

    #@7
    .line 885
    move-object/from16 v0, p0

    #@9
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@b
    instance-of v12, v12, Landroid/animation/ValueAnimator;

    #@d
    if-eqz v12, :cond_5

    #@f
    .line 886
    const/4 v11, 0x0

    #@10
    .line 887
    .local v11, "valuesDiffer":Z
    move-object/from16 v0, p0

    #@12
    iget-object v10, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@14
    check-cast v10, Landroid/animation/ValueAnimator;

    #@16
    .line 888
    .local v10, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@19
    move-result-object v4

    #@1a
    .line 889
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    array-length v12, v4

    #@1c
    if-ge v2, v12, :cond_4

    #@1e
    .line 890
    aget-object v7, v4, v2

    #@20
    .line 891
    .local v7, "pvh":Landroid/animation/PropertyValuesHolder;
    iget-object v12, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@22
    instance-of v12, v12, Landroid/animation/KeyframeSet;

    #@24
    if-eqz v12, :cond_3

    #@26
    .line 892
    iget-object v3, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@28
    check-cast v3, Landroid/animation/KeyframeSet;

    #@2a
    .line 893
    .local v3, "keyframeSet":Landroid/animation/KeyframeSet;
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@2c
    if-eqz v12, :cond_0

    #@2e
    .line 894
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@30
    if-nez v12, :cond_2

    #@32
    .line 897
    :cond_0
    const/4 v11, 0x1

    #@33
    .line 889
    .end local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 895
    .restart local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_2
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@38
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@3b
    move-result-object v12

    #@3c
    .line 896
    iget-object v13, v3, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@3e
    invoke-virtual {v13}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v13

    #@42
    .line 895
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v12

    #@46
    if-eqz v12, :cond_0

    #@48
    goto :goto_1

    #@49
    .line 899
    .end local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_3
    iget-object v12, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@4b
    const/4 v13, 0x0

    #@4c
    invoke-interface {v12, v13}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    #@4f
    move-result-object v12

    #@50
    iget-object v13, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@52
    const/high16 v14, 0x3f800000    # 1.0f

    #@54
    invoke-interface {v13, v14}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    #@57
    move-result-object v13

    #@58
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v12

    #@5c
    if-nez v12, :cond_1

    #@5e
    .line 900
    const/4 v11, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 903
    .end local v7    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_4
    if-nez v11, :cond_5

    #@62
    .line 904
    return-void

    #@63
    .line 908
    .end local v2    # "i":I
    .end local v4    # "oldValues":[Landroid/animation/PropertyValuesHolder;
    .end local v10    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v11    # "valuesDiffer":Z
    :cond_5
    const-wide/16 v8, 0x0

    #@65
    .line 909
    .local v8, "startDelay":J
    move-object/from16 v0, p0

    #@67
    iget v12, v0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    #@69
    packed-switch v12, :pswitch_data_0

    #@6c
    .line 933
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@6e
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@70
    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    #@73
    .line 934
    move-object/from16 v0, p0

    #@75
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@77
    move-object/from16 v0, p0

    #@79
    iget-wide v14, v0, Landroid/animation/LayoutTransition$2;->val$duration:J

    #@7b
    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@7e
    .line 936
    move-object/from16 v0, p0

    #@80
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@82
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    #@85
    move-result-object v12

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@8a
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v6

    #@8e
    check-cast v6, Landroid/animation/Animator;

    #@90
    .line 937
    .local v6, "prevAnimation":Landroid/animation/Animator;
    if-eqz v6, :cond_7

    #@92
    .line 938
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    #@95
    .line 940
    :cond_7
    move-object/from16 v0, p0

    #@97
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@99
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    #@9c
    move-result-object v12

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@a1
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v5

    #@a5
    check-cast v5, Landroid/animation/Animator;

    #@a7
    .line 941
    .local v5, "pendingAnimation":Landroid/animation/Animator;
    if-eqz v5, :cond_8

    #@a9
    .line 942
    move-object/from16 v0, p0

    #@ab
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@ad
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    #@b0
    move-result-object v12

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@b5
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    .line 945
    :cond_8
    move-object/from16 v0, p0

    #@ba
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@bc
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    #@bf
    move-result-object v12

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@c8
    invoke-virtual {v12, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 947
    move-object/from16 v0, p0

    #@cd
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@d3
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    #@d6
    .line 951
    move-object/from16 v0, p0

    #@d8
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@da
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v12, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@df
    .line 952
    move-object/from16 v0, p0

    #@e1
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@e3
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get3(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    #@e6
    move-result-object v12

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    #@eb
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    .line 881
    return-void

    #@ef
    .line 911
    .end local v5    # "pendingAnimation":Landroid/animation/Animator;
    .end local v6    # "prevAnimation":Landroid/animation/Animator;
    :pswitch_0
    move-object/from16 v0, p0

    #@f1
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@f3
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get4(Landroid/animation/LayoutTransition;)J

    #@f6
    move-result-wide v12

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@fb
    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@fe
    move-result-wide v14

    #@ff
    add-long v8, v12, v14

    #@101
    .line 912
    move-object/from16 v0, p0

    #@103
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@105
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@108
    move-result-wide v14

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@10d
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get6(Landroid/animation/LayoutTransition;)J

    #@110
    move-result-wide v16

    #@111
    add-long v14, v14, v16

    #@113
    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    #@116
    .line 913
    move-object/from16 v0, p0

    #@118
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@11a
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get5(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@11d
    move-result-object v12

    #@11e
    invoke-static {}, Landroid/animation/LayoutTransition;->-get15()Landroid/animation/TimeInterpolator;

    #@121
    move-result-object v13

    #@122
    if-eq v12, v13, :cond_6

    #@124
    .line 914
    move-object/from16 v0, p0

    #@126
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@12c
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get5(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@12f
    move-result-object v13

    #@130
    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@133
    goto/16 :goto_2

    #@135
    .line 918
    :pswitch_1
    move-object/from16 v0, p0

    #@137
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@139
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get8(Landroid/animation/LayoutTransition;)J

    #@13c
    move-result-wide v12

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@141
    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@144
    move-result-wide v14

    #@145
    add-long v8, v12, v14

    #@147
    .line 919
    move-object/from16 v0, p0

    #@149
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@14b
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@14e
    move-result-wide v14

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@153
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get10(Landroid/animation/LayoutTransition;)J

    #@156
    move-result-wide v16

    #@157
    add-long v14, v14, v16

    #@159
    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    #@15c
    .line 920
    move-object/from16 v0, p0

    #@15e
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@160
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get9(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@163
    move-result-object v12

    #@164
    .line 921
    invoke-static {}, Landroid/animation/LayoutTransition;->-get16()Landroid/animation/TimeInterpolator;

    #@167
    move-result-object v13

    #@168
    .line 920
    if-eq v12, v13, :cond_6

    #@16a
    .line 922
    move-object/from16 v0, p0

    #@16c
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@172
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get9(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@175
    move-result-object v13

    #@176
    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@179
    goto/16 :goto_2

    #@17b
    .line 926
    :pswitch_2
    move-object/from16 v0, p0

    #@17d
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@17f
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get7(Landroid/animation/LayoutTransition;)J

    #@182
    move-result-wide v12

    #@183
    move-object/from16 v0, p0

    #@185
    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@187
    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@18a
    move-result-wide v14

    #@18b
    add-long v8, v12, v14

    #@18d
    .line 927
    move-object/from16 v0, p0

    #@18f
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@191
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    #@194
    move-result-wide v14

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@199
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get12(Landroid/animation/LayoutTransition;)J

    #@19c
    move-result-wide v16

    #@19d
    add-long v14, v14, v16

    #@19f
    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    #@1a2
    .line 928
    move-object/from16 v0, p0

    #@1a4
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@1a6
    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get11(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@1a9
    move-result-object v12

    #@1aa
    invoke-static {}, Landroid/animation/LayoutTransition;->-get17()Landroid/animation/TimeInterpolator;

    #@1ad
    move-result-object v13

    #@1ae
    if-eq v12, v13, :cond_6

    #@1b0
    .line 929
    move-object/from16 v0, p0

    #@1b2
    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    #@1b8
    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get11(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    #@1bb
    move-result-object v13

    #@1bc
    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1bf
    goto/16 :goto_2

    #@1c1
    .line 909
    nop

    #@1c2
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
