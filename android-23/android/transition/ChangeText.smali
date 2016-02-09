.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mChangeBehavior:I


# direct methods
.method static synthetic -get0(Landroid/transition/ChangeText;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 91
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 92
    const-string/jumbo v1, "android:textchange:text"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 93
    const-string/jumbo v1, "android:textchange:textSelectionStart"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 94
    const-string/jumbo v1, "android:textchange:textSelectionEnd"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 91
    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    #@17
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@6
    .line 40
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 129
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    instance-of v1, v1, Landroid/widget/TextView;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 130
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@8
    check-cast v0, Landroid/widget/TextView;

    #@a
    .line 131
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@c
    const-string/jumbo v2, "android:textchange:text"

    #@f
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 132
    instance-of v1, v0, Landroid/widget/EditText;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 133
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    const-string/jumbo v2, "android:textchange:textSelectionStart"

    #@1f
    .line 134
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@22
    move-result v3

    #@23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    .line 133
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 135
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2c
    const-string/jumbo v2, "android:textchange:textSelectionEnd"

    #@2f
    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@32
    move-result v3

    #@33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v3

    #@37
    .line 135
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 138
    :cond_0
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@3c
    if-lez v1, :cond_1

    #@3e
    .line 139
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@40
    const-string/jumbo v2, "android:textchange:textColor"

    #@43
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@46
    move-result v3

    #@47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 128
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 307
    if-ltz p2, :cond_0

    #@2
    if-ltz p3, :cond_0

    #@4
    .line 308
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    #@7
    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 150
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 145
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 157
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 159
    :cond_0
    const/4 v3, 0x0

    #@5
    return-object v3

    #@6
    .line 158
    :cond_1
    move-object/from16 v0, p2

    #@8
    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@a
    instance-of v3, v3, Landroid/widget/TextView;

    #@c
    if-eqz v3, :cond_0

    #@e
    move-object/from16 v0, p3

    #@10
    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@12
    instance-of v3, v3, Landroid/widget/TextView;

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 161
    move-object/from16 v0, p3

    #@18
    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1a
    check-cast v6, Landroid/widget/TextView;

    #@1c
    .line 162
    .local v6, "view":Landroid/widget/TextView;
    move-object/from16 v0, p2

    #@1e
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@20
    move-object/from16 v26, v0

    #@22
    .line 163
    .local v26, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    #@24
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@26
    move-object/from16 v22, v0

    #@28
    .line 164
    .local v22, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "android:textchange:text"

    #@2b
    move-object/from16 v0, v26

    #@2d
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 165
    const-string/jumbo v3, "android:textchange:text"

    #@36
    move-object/from16 v0, v26

    #@38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Ljava/lang/CharSequence;

    #@3e
    .line 166
    .local v5, "startText":Ljava/lang/CharSequence;
    :goto_0
    const-string/jumbo v3, "android:textchange:text"

    #@41
    move-object/from16 v0, v22

    #@43
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    if-eqz v3, :cond_4

    #@49
    .line 167
    const-string/jumbo v3, "android:textchange:text"

    #@4c
    move-object/from16 v0, v22

    #@4e
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v7

    #@52
    check-cast v7, Ljava/lang/CharSequence;

    #@54
    .line 169
    .local v7, "endText":Ljava/lang/CharSequence;
    :goto_1
    instance-of v3, v6, Landroid/widget/EditText;

    #@56
    if-eqz v3, :cond_9

    #@58
    .line 170
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    #@5b
    move-object/from16 v0, v26

    #@5d
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v3

    #@61
    if-eqz v3, :cond_5

    #@63
    .line 171
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    #@66
    move-object/from16 v0, v26

    #@68
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Ljava/lang/Integer;

    #@6e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v19

    #@72
    .line 172
    .local v19, "startSelectionStart":I
    :goto_2
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    #@75
    move-object/from16 v0, v26

    #@77
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    move-result-object v3

    #@7b
    if-eqz v3, :cond_6

    #@7d
    .line 173
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    #@80
    move-object/from16 v0, v26

    #@82
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    move-result-object v3

    #@86
    check-cast v3, Ljava/lang/Integer;

    #@88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@8b
    move-result v20

    #@8c
    .line 174
    .local v20, "startSelectionEnd":I
    :goto_3
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    #@8f
    move-object/from16 v0, v22

    #@91
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v3

    #@95
    if-eqz v3, :cond_7

    #@97
    .line 175
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    #@9a
    move-object/from16 v0, v22

    #@9c
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v3

    #@a0
    check-cast v3, Ljava/lang/Integer;

    #@a2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@a5
    move-result v8

    #@a6
    .line 176
    .local v8, "endSelectionStart":I
    :goto_4
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    #@a9
    move-object/from16 v0, v22

    #@ab
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v3

    #@af
    if-eqz v3, :cond_8

    #@b1
    .line 177
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    #@b4
    move-object/from16 v0, v22

    #@b6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    move-result-object v3

    #@ba
    check-cast v3, Ljava/lang/Integer;

    #@bc
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@bf
    move-result v9

    #@c0
    .line 181
    .local v9, "endSelectionEnd":I
    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v3

    #@c4
    if-nez v3, :cond_11

    #@c6
    .line 184
    move-object/from16 v0, p0

    #@c8
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@ca
    const/4 v4, 0x2

    #@cb
    if-eq v3, v4, :cond_2

    #@cd
    .line 185
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@d0
    .line 186
    instance-of v3, v6, Landroid/widget/EditText;

    #@d2
    if-eqz v3, :cond_2

    #@d4
    move-object v3, v6

    #@d5
    .line 187
    check-cast v3, Landroid/widget/EditText;

    #@d7
    move-object/from16 v0, p0

    #@d9
    move/from16 v1, v19

    #@db
    move/from16 v2, v20

    #@dd
    invoke-direct {v0, v3, v1, v2}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    #@e0
    .line 191
    :cond_2
    move-object/from16 v0, p0

    #@e2
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@e4
    if-nez v3, :cond_a

    #@e6
    .line 192
    const/4 v10, 0x0

    #@e7
    .local v10, "endColor":I
    const/16 v25, 0x0

    #@e9
    .line 193
    .local v25, "startColor":I
    const/4 v3, 0x2

    #@ea
    new-array v3, v3, [F

    #@ec
    const/4 v4, 0x0

    #@ed
    const/4 v12, 0x0

    #@ee
    aput v4, v3, v12

    #@f0
    const/high16 v4, 0x3f800000    # 1.0f

    #@f2
    const/4 v12, 0x1

    #@f3
    aput v4, v3, v12

    #@f5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f8
    move-result-object v21

    #@f9
    .line 194
    .local v21, "anim":Landroid/animation/Animator;
    new-instance v3, Landroid/transition/ChangeText$1;

    #@fb
    move-object/from16 v4, p0

    #@fd
    invoke-direct/range {v3 .. v9}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    #@100
    move-object/from16 v0, v21

    #@102
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@105
    .line 267
    :goto_6
    new-instance v11, Landroid/transition/ChangeText$6;

    #@107
    move-object/from16 v12, p0

    #@109
    move-object v13, v6

    #@10a
    move-object v14, v7

    #@10b
    move v15, v8

    #@10c
    move/from16 v16, v9

    #@10e
    move/from16 v17, v10

    #@110
    move-object/from16 v18, v5

    #@112
    invoke-direct/range {v11 .. v20}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    #@115
    .line 297
    .local v11, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v0, v11}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@11a
    .line 301
    return-object v21

    #@11b
    .line 165
    .end local v5    # "startText":Ljava/lang/CharSequence;
    .end local v7    # "endText":Ljava/lang/CharSequence;
    .end local v8    # "endSelectionStart":I
    .end local v9    # "endSelectionEnd":I
    .end local v10    # "endColor":I
    .end local v11    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    .end local v19    # "startSelectionStart":I
    .end local v20    # "startSelectionEnd":I
    .end local v21    # "anim":Landroid/animation/Animator;
    .end local v25    # "startColor":I
    :cond_3
    const-string/jumbo v5, ""

    #@11e
    .restart local v5    # "startText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@120
    .line 167
    :cond_4
    const-string/jumbo v7, ""

    #@123
    .restart local v7    # "endText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    #@125
    .line 171
    :cond_5
    const/16 v19, -0x1

    #@127
    .restart local v19    # "startSelectionStart":I
    goto/16 :goto_2

    #@129
    .line 173
    :cond_6
    move/from16 v20, v19

    #@12b
    .restart local v20    # "startSelectionEnd":I
    goto/16 :goto_3

    #@12d
    .line 175
    :cond_7
    const/4 v8, -0x1

    #@12e
    .restart local v8    # "endSelectionStart":I
    goto/16 :goto_4

    #@130
    .line 177
    :cond_8
    move v9, v8

    #@131
    .restart local v9    # "endSelectionEnd":I
    goto :goto_5

    #@132
    .line 179
    .end local v8    # "endSelectionStart":I
    .end local v9    # "endSelectionEnd":I
    .end local v19    # "startSelectionStart":I
    .end local v20    # "startSelectionEnd":I
    :cond_9
    const/4 v9, -0x1

    #@133
    .restart local v9    # "endSelectionEnd":I
    const/4 v8, -0x1

    #@134
    .restart local v8    # "endSelectionStart":I
    const/16 v20, -0x1

    #@136
    .restart local v20    # "startSelectionEnd":I
    const/16 v19, -0x1

    #@138
    .restart local v19    # "startSelectionStart":I
    goto :goto_5

    #@139
    .line 207
    :cond_a
    const-string/jumbo v3, "android:textchange:textColor"

    #@13c
    move-object/from16 v0, v26

    #@13e
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@141
    move-result-object v3

    #@142
    check-cast v3, Ljava/lang/Integer;

    #@144
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@147
    move-result v25

    #@148
    .line 208
    .restart local v25    # "startColor":I
    const-string/jumbo v3, "android:textchange:textColor"

    #@14b
    move-object/from16 v0, v22

    #@14d
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    move-result-object v3

    #@151
    check-cast v3, Ljava/lang/Integer;

    #@153
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@156
    move-result v10

    #@157
    .line 210
    .restart local v10    # "endColor":I
    const/16 v24, 0x0

    #@159
    .local v24, "outAnim":Landroid/animation/ValueAnimator;
    const/16 v23, 0x0

    #@15b
    .line 211
    .local v23, "inAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    #@15d
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@15f
    const/4 v4, 0x3

    #@160
    if-eq v3, v4, :cond_b

    #@162
    .line 212
    move-object/from16 v0, p0

    #@164
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@166
    const/4 v4, 0x1

    #@167
    if-ne v3, v4, :cond_c

    #@169
    .line 213
    :cond_b
    const/16 v3, 0xff

    #@16b
    const/4 v4, 0x0

    #@16c
    filled-new-array {v3, v4}, [I

    #@16f
    move-result-object v3

    #@170
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    #@173
    move-result-object v24

    #@174
    .line 214
    .local v24, "outAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/transition/ChangeText$2;

    #@176
    move-object/from16 v0, p0

    #@178
    move/from16 v1, v25

    #@17a
    invoke-direct {v3, v0, v6, v1}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    #@17d
    move-object/from16 v0, v24

    #@17f
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@182
    .line 222
    new-instance v3, Landroid/transition/ChangeText$3;

    #@184
    move-object/from16 v4, p0

    #@186
    invoke-direct/range {v3 .. v10}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    #@189
    move-object/from16 v0, v24

    #@18b
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@18e
    .line 238
    .end local v24    # "outAnim":Landroid/animation/ValueAnimator;
    :cond_c
    move-object/from16 v0, p0

    #@190
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@192
    const/4 v4, 0x3

    #@193
    if-eq v3, v4, :cond_d

    #@195
    .line 239
    move-object/from16 v0, p0

    #@197
    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@199
    const/4 v4, 0x2

    #@19a
    if-ne v3, v4, :cond_e

    #@19c
    .line 240
    :cond_d
    const/4 v3, 0x0

    #@19d
    const/16 v4, 0xff

    #@19f
    filled-new-array {v3, v4}, [I

    #@1a2
    move-result-object v3

    #@1a3
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    #@1a6
    move-result-object v23

    #@1a7
    .line 241
    .local v23, "inAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/transition/ChangeText$4;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    invoke-direct {v3, v0, v6, v10}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    #@1ae
    move-object/from16 v0, v23

    #@1b0
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@1b3
    .line 249
    new-instance v3, Landroid/transition/ChangeText$5;

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    invoke-direct {v3, v0, v6, v10}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    #@1ba
    move-object/from16 v0, v23

    #@1bc
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1bf
    .line 257
    .end local v23    # "inAnim":Landroid/animation/ValueAnimator;
    :cond_e
    if-eqz v24, :cond_f

    #@1c1
    if-eqz v23, :cond_f

    #@1c3
    .line 258
    new-instance v21, Landroid/animation/AnimatorSet;

    #@1c5
    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    #@1c8
    .restart local v21    # "anim":Landroid/animation/Animator;
    move-object/from16 v3, v21

    #@1ca
    .line 259
    check-cast v3, Landroid/animation/AnimatorSet;

    #@1cc
    const/4 v4, 0x2

    #@1cd
    new-array v4, v4, [Landroid/animation/Animator;

    #@1cf
    const/4 v12, 0x0

    #@1d0
    aput-object v24, v4, v12

    #@1d2
    const/4 v12, 0x1

    #@1d3
    aput-object v23, v4, v12

    #@1d5
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@1d8
    goto/16 :goto_6

    #@1da
    .line 260
    .end local v21    # "anim":Landroid/animation/Animator;
    :cond_f
    if-eqz v24, :cond_10

    #@1dc
    .line 261
    move-object/from16 v21, v24

    #@1de
    .restart local v21    # "anim":Landroid/animation/Animator;
    goto/16 :goto_6

    #@1e0
    .line 264
    .end local v21    # "anim":Landroid/animation/Animator;
    :cond_10
    move-object/from16 v21, v23

    #@1e2
    .restart local v21    # "anim":Landroid/animation/Animator;
    goto/16 :goto_6

    #@1e4
    .line 303
    .end local v10    # "endColor":I
    .end local v21    # "anim":Landroid/animation/Animator;
    .end local v25    # "startColor":I
    :cond_11
    const/4 v3, 0x0

    #@1e5
    return-object v3
.end method

.method public getChangeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setChangeBehavior(I)Landroid/transition/ChangeText;
    .locals 1
    .param p1, "changeBehavior"    # I

    #@0
    .prologue
    .line 107
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 108
    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    #@7
    .line 110
    :cond_0
    return-object p0
.end method
