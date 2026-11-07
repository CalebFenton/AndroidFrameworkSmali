.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final greylist-max-o CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final greylist-max-o CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final greylist-max-o PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final greylist-max-o PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mChangeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I
    .registers 1

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 93
    const-string v0, "android:textchange:textSelectionStart"

    const-string v1, "android:textchange:textSelectionEnd"

    const-string v2, "android:textchange:text"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 131
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 132
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_37

    .line 135
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    const-string v3, "android:textchange:textSelectionStart"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    const-string v3, "android:textchange:textSelectionEnd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_37
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_4a

    .line 141
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textColor"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_4a
    return-void
.end method

.method private greylist-max-o setSelection(Landroid/widget/EditText;II)V
    .registers 4
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 314
    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 317
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 153
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 154
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 148
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 149
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    if-eqz v10, :cond_189

    if-eqz v11, :cond_189

    iget-object v2, v10, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_189

    iget-object v2, v11, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-nez v2, :cond_19

    goto/16 :goto_189

    .line 165
    :cond_19
    iget-object v2, v11, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 166
    .local v3, "view":Landroid/widget/TextView;
    iget-object v12, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 167
    .local v12, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v13, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 168
    .local v13, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "android:textchange:text"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_34

    .line 169
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v7, v4

    goto :goto_35

    :cond_34
    move-object v7, v5

    .line 170
    .local v7, "startText":Ljava/lang/CharSequence;
    :goto_35
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 171
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_44

    :cond_43
    nop

    :goto_44
    move-object v4, v5

    .line 173
    .local v4, "endText":Ljava/lang/CharSequence;
    instance-of v2, v3, Landroid/widget/EditText;

    const/4 v5, -0x1

    if-eqz v2, :cond_99

    .line 174
    const-string v2, "android:textchange:textSelectionStart"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5d

    .line 175
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5e

    :cond_5d
    move v6, v5

    .line 176
    .local v6, "startSelectionStart":I
    :goto_5e
    const-string v8, "android:textchange:textSelectionEnd"

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_71

    .line 177
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_72

    :cond_71
    move v9, v6

    .line 178
    .local v9, "startSelectionEnd":I
    :goto_72
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_83

    .line 179
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_84

    :cond_83
    nop

    .line 180
    .local v5, "endSelectionStart":I
    :goto_84
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 181
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_96

    :cond_95
    move v2, v5

    :goto_96
    move v8, v6

    move v6, v2

    .local v2, "endSelectionEnd":I
    goto :goto_9e

    .line 183
    .end local v2    # "endSelectionEnd":I
    .end local v5    # "endSelectionStart":I
    .end local v6    # "startSelectionStart":I
    .end local v9    # "startSelectionEnd":I
    :cond_99
    move v2, v5

    .restart local v2    # "endSelectionEnd":I
    move v6, v5

    .local v6, "endSelectionStart":I
    move v9, v5

    .restart local v9    # "startSelectionEnd":I
    move v8, v5

    move v6, v2

    .line 185
    .end local v2    # "endSelectionEnd":I
    .restart local v5    # "endSelectionStart":I
    .local v6, "endSelectionEnd":I
    .local v8, "startSelectionStart":I
    :goto_9e
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_188

    .line 188
    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v14, 0x2

    if-eq v0, v14, :cond_b6

    .line 189
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    instance-of v0, v3, Landroid/widget/EditText;

    if-eqz v0, :cond_b6

    .line 191
    move-object v0, v3

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v1, v0, v8, v9}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 195
    :cond_b6
    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v15, 0x0

    if-nez v0, :cond_d1

    .line 196
    move/from16 v16, v15

    .line 197
    .local v15, "startColor":I
    .local v16, "endColor":I
    new-array v0, v14, [F

    fill-array-data v0, :array_18a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 198
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v0, Landroid/transition/ChangeText$1;

    move-object v2, v7

    .end local v7    # "startText":Ljava/lang/CharSequence;
    .local v2, "startText":Ljava/lang/CharSequence;
    invoke-direct/range {v0 .. v6}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v14, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_16d

    .line 211
    .end local v2    # "startText":Ljava/lang/CharSequence;
    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v15    # "startColor":I
    .end local v16    # "endColor":I
    .restart local v7    # "startText":Ljava/lang/CharSequence;
    :cond_d1
    move-object v2, v7

    .end local v7    # "startText":Ljava/lang/CharSequence;
    .restart local v2    # "startText":Ljava/lang/CharSequence;
    const-string v0, "android:textchange:textColor"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 212
    .local v7, "startColor":I
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    .local v0, "endColor":I
    const/16 v16, 0x0

    .local v16, "outAnim":Landroid/animation/ValueAnimator;
    const/16 v17, 0x0

    .line 215
    .local v17, "inAnim":Landroid/animation/ValueAnimator;
    iget v14, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_fa

    iget v14, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f7

    goto :goto_fa

    :cond_f7
    move v15, v7

    move v7, v0

    goto :goto_11b

    .line 217
    :cond_fa
    :goto_fa
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    const/4 v15, 0x0

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 218
    .end local v16    # "outAnim":Landroid/animation/ValueAnimator;
    .local v14, "outAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/transition/ChangeText$2;

    invoke-direct {v15, v1, v3, v7}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    move v15, v7

    move v7, v0

    .end local v0    # "endColor":I
    .local v7, "endColor":I
    .restart local v15    # "startColor":I
    new-instance v0, Landroid/transition/ChangeText$3;

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v16, v14

    .line 241
    .end local v14    # "outAnim":Landroid/animation/ValueAnimator;
    .restart local v16    # "outAnim":Landroid/animation/ValueAnimator;
    :goto_11b
    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v14, 0x3

    if-eq v0, v14, :cond_125

    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v14, 0x2

    if-ne v0, v14, :cond_144

    .line 243
    :cond_125
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v14, 0x0

    filled-new-array {v14, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 244
    .end local v17    # "inAnim":Landroid/animation/ValueAnimator;
    .local v0, "inAnim":Landroid/animation/ValueAnimator;
    new-instance v14, Landroid/transition/ChangeText$4;

    invoke-direct {v14, v1, v3, v7}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance v14, Landroid/transition/ChangeText$5;

    invoke-direct {v14, v1, v3, v7}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v17, v0

    .line 259
    .end local v0    # "inAnim":Landroid/animation/ValueAnimator;
    .restart local v17    # "inAnim":Landroid/animation/ValueAnimator;
    :cond_144
    if-eqz v16, :cond_162

    if-eqz v17, :cond_162

    .line 260
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v14, v0

    .line 261
    .local v14, "anim":Landroid/animation/Animator;
    move-object v0, v14

    check-cast v0, Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/16 v18, 0x0

    aput-object v16, v1, v18

    const/16 v19, 0x1

    aput-object v17, v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move/from16 v16, v7

    goto :goto_16d

    .line 262
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_162
    if-eqz v16, :cond_169

    .line 263
    move-object/from16 v14, v16

    move/from16 v16, v7

    .restart local v14    # "anim":Landroid/animation/Animator;
    goto :goto_16d

    .line 266
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_169
    move-object/from16 v14, v17

    move/from16 v16, v7

    .line 269
    .end local v7    # "endColor":I
    .end local v17    # "inAnim":Landroid/animation/ValueAnimator;
    .restart local v14    # "anim":Landroid/animation/Animator;
    .local v16, "endColor":I
    :goto_16d
    new-instance v0, Landroid/transition/ChangeText$6;

    move-object/from16 v1, p0

    move-object v7, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    .end local v16    # "endColor":I
    .local v2, "view":Landroid/widget/TextView;
    .local v3, "endText":Ljava/lang/CharSequence;
    .local v4, "endSelectionStart":I
    .local v5, "endSelectionEnd":I
    .local v6, "endColor":I
    .local v7, "startText":Ljava/lang/CharSequence;
    invoke-direct/range {v0 .. v9}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    move-object/from16 v20, v3

    move-object v3, v2

    move-object v2, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object/from16 v4, v20

    .line 304
    .local v0, "transitionListener":Landroid/transition/Transition$TransitionListener;
    .local v2, "startText":Ljava/lang/CharSequence;
    .local v3, "view":Landroid/widget/TextView;
    .local v4, "endText":Ljava/lang/CharSequence;
    .local v5, "endSelectionStart":I
    .local v6, "endSelectionEnd":I
    .local v7, "endColor":I
    invoke-virtual {v1, v0}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 308
    return-object v14

    .line 310
    .end local v0    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    .end local v2    # "startText":Ljava/lang/CharSequence;
    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v15    # "startColor":I
    .local v7, "startText":Ljava/lang/CharSequence;
    :cond_188
    return-object v0

    .line 163
    .end local v3    # "view":Landroid/widget/TextView;
    .end local v4    # "endText":Ljava/lang/CharSequence;
    .end local v5    # "endSelectionStart":I
    .end local v6    # "endSelectionEnd":I
    .end local v7    # "startText":Ljava/lang/CharSequence;
    .end local v8    # "startSelectionStart":I
    .end local v9    # "startSelectionEnd":I
    .end local v12    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_189
    :goto_189
    return-object v0

    :array_18a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getChangeBehavior()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 117
    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setChangeBehavior(I)Landroid/transition/ChangeText;
    .registers 3
    .param p1, "changeBehavior"    # I

    .line 109
    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    .line 110
    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 112
    :cond_7
    return-object p0
.end method
