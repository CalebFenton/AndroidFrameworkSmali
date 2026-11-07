.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityMode;
    }
.end annotation


# static fields
.field public static final whitelist MODE_IN:I = 0x1

.field public static final whitelist MODE_OUT:I = 0x2

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final greylist-max-o PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final greylist-max-o PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mMode:I

.field private greylist-max-o mSuppressLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 80
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 101
    sget-object v0, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 103
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    if-eqz v1, :cond_1c

    .line 105
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    .line 107
    :cond_1c
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 151
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 152
    .local v0, "visibility":I
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 155
    .local v1, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method private static greylist-max-o getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .registers 9
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    .line 196
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility-IA;)V

    .line 197
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 198
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 199
    const-string v3, "android:visibility:parent"

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_33

    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 200
    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 201
    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_37

    .line 203
    :cond_33
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 204
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 206
    :goto_37
    if-eqz p1, :cond_5a

    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 207
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 208
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_5e

    .line 210
    :cond_5a
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 211
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 213
    :goto_5e
    const/4 v1, 0x1

    if-eqz p0, :cond_a0

    if-eqz p1, :cond_a0

    .line 214
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v3, v4, :cond_70

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_70

    .line 216
    return-object v0

    .line 218
    :cond_70
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v3, v4, :cond_88

    .line 219
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_7f

    .line 220
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 221
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 222
    :cond_7f
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_b5

    .line 223
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 224
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 227
    :cond_88
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_b5

    .line 228
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_97

    .line 229
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 230
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 231
    :cond_97
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_b5

    .line 232
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 233
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 237
    :cond_a0
    if-nez p0, :cond_ab

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_ab

    .line 238
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 239
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 240
    :cond_ab
    if-nez p1, :cond_b5

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_b5

    .line 241
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 242
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 244
    :cond_b5
    :goto_b5
    return-object v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 166
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 167
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 161
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 162
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 252
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 253
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_36

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_15

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    goto :goto_15

    :cond_11
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    goto :goto_39

    .line 255
    :cond_15
    :goto_15
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_29

    .line 256
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .end local p2    # "startValues":Landroid/transition/TransitionValues;
    .end local p3    # "endValues":Landroid/transition/TransitionValues;
    .local v3, "sceneRoot":Landroid/view/ViewGroup;
    .local v4, "startValues":Landroid/transition/TransitionValues;
    .local v6, "endValues":Landroid/transition/TransitionValues;
    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    move-object v2, v3

    move-object v3, v4

    move-object v5, v6

    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v6    # "endValues":Landroid/transition/TransitionValues;
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    .local v3, "startValues":Landroid/transition/TransitionValues;
    .local v5, "endValues":Landroid/transition/TransitionValues;
    return-object p1

    .line 259
    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    .end local v3    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    .restart local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local p2    # "startValues":Landroid/transition/TransitionValues;
    .restart local p3    # "endValues":Landroid/transition/TransitionValues;
    :cond_29
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .end local p2    # "startValues":Landroid/transition/TransitionValues;
    .end local p3    # "endValues":Landroid/transition/TransitionValues;
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local v3    # "startValues":Landroid/transition/TransitionValues;
    .restart local v5    # "endValues":Landroid/transition/TransitionValues;
    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 253
    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    .end local v3    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    .restart local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local p2    # "startValues":Landroid/transition/TransitionValues;
    .restart local p3    # "endValues":Landroid/transition/TransitionValues;
    :cond_36
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 264
    .end local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .end local p2    # "startValues":Landroid/transition/TransitionValues;
    .end local p3    # "endValues":Landroid/transition/TransitionValues;
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    .restart local v3    # "startValues":Landroid/transition/TransitionValues;
    .restart local v5    # "endValues":Landroid/transition/TransitionValues;
    :goto_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMode()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 147
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 7
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .line 513
    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 514
    return v0

    .line 516
    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 517
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 518
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 521
    return v0

    .line 523
    :cond_1b
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 524
    .local v1, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_2c

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_2b

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public whitelist isVisible(Landroid/transition/TransitionValues;)Z
    .registers 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 186
    return v0

    .line 188
    :cond_4
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 191
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_21

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 288
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2f

    if-nez p4, :cond_a

    goto :goto_2f

    .line 291
    :cond_a
    if-nez p2, :cond_28

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 294
    .local v1, "endParent":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    .line 296
    .local v4, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    .line 297
    .local v3, "endParentValues":Landroid/transition/TransitionValues;
    nop

    .line 298
    invoke-static {v4, v3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 299
    iget-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v5, :cond_28

    .line 300
    return-object v2

    .line 303
    .end local v0    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v1    # "endParent":Landroid/view/View;
    .end local v3    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v4    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_28
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 289
    :cond_2f
    :goto_2f
    return-object v2
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroid/transition/Visibility;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_12

    .line 364
    return-object v7

    .line 367
    :cond_12
    if-nez v2, :cond_15

    .line 369
    return-object v7

    .line 372
    :cond_15
    iget-object v5, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 373
    .local v5, "startView":Landroid/view/View;
    if-eqz v3, :cond_1c

    iget-object v8, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1d

    :cond_1c
    move-object v8, v7

    .line 374
    .local v8, "endView":Landroid/view/View;
    :goto_1d
    const/4 v9, 0x0

    .line 375
    .local v9, "overlayView":Landroid/view/View;
    const/4 v10, 0x0

    .line 376
    .local v10, "viewToKeep":Landroid/view/View;
    const/4 v11, 0x0

    .line 378
    .local v11, "reusingOverlayView":Z
    const v12, 0x10205b3

    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 379
    .local v13, "savedOverlayView":Landroid/view/View;
    const/4 v14, 0x1

    if-eqz v13, :cond_34

    .line 383
    move-object v9, v13

    .line 384
    const/4 v11, 0x1

    move-object/from16 v16, v7

    move/from16 v18, v14

    goto/16 :goto_ab

    .line 386
    :cond_34
    const/4 v15, 0x0

    .line 388
    .local v15, "needOverlayForStartView":Z
    if-eqz v8, :cond_4d

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_40

    move-object/from16 v16, v7

    goto :goto_4f

    .line 397
    :cond_40
    move-object/from16 v16, v7

    const/4 v7, 0x4

    if-ne v4, v7, :cond_47

    .line 398
    move-object v10, v8

    goto :goto_54

    .line 401
    :cond_47
    if-ne v5, v8, :cond_4b

    .line 402
    move-object v10, v8

    goto :goto_54

    .line 404
    :cond_4b
    const/4 v15, 0x1

    goto :goto_54

    .line 388
    :cond_4d
    move-object/from16 v16, v7

    .line 389
    :goto_4f
    if-eqz v8, :cond_53

    .line 391
    move-object v9, v8

    goto :goto_54

    .line 393
    :cond_53
    const/4 v15, 0x1

    .line 409
    :goto_54
    if-eqz v15, :cond_a9

    .line 413
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_60

    .line 415
    move-object v9, v5

    move/from16 v18, v14

    goto :goto_ab

    .line 416
    :cond_60
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_a6

    .line 417
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 418
    .local v7, "startParent":Landroid/view/View;
    invoke-virtual {v0, v7, v14}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v12

    .line 419
    .local v12, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {v0, v7, v14}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v6

    .line 421
    .local v6, "endParentValues":Landroid/transition/TransitionValues;
    nop

    .line 422
    move/from16 v18, v14

    invoke-static {v12, v6}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v14

    .line 423
    .local v14, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v19, v6

    .end local v6    # "endParentValues":Landroid/transition/TransitionValues;
    .local v19, "endParentValues":Landroid/transition/TransitionValues;
    iget-boolean v6, v14, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v6, :cond_88

    .line 424
    invoke-static {v1, v5, v7}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    goto :goto_ab

    .line 427
    :cond_88
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v6

    .line 428
    .local v6, "id":I
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_a3

    move-object/from16 v20, v7

    .end local v7    # "startParent":Landroid/view/View;
    .local v20, "startParent":Landroid/view/View;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_ab

    .line 429
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_ab

    iget-boolean v7, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_ab

    .line 433
    move-object v9, v5

    goto :goto_ab

    .line 428
    .end local v20    # "startParent":Landroid/view/View;
    .restart local v7    # "startParent":Landroid/view/View;
    :cond_a3
    move-object/from16 v20, v7

    .end local v7    # "startParent":Landroid/view/View;
    .restart local v20    # "startParent":Landroid/view/View;
    goto :goto_ab

    .line 416
    .end local v6    # "id":I
    .end local v12    # "startParentValues":Landroid/transition/TransitionValues;
    .end local v14    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v19    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v20    # "startParent":Landroid/view/View;
    :cond_a6
    move/from16 v18, v14

    goto :goto_ab

    .line 409
    :cond_a9
    move/from16 v18, v14

    .line 442
    .end local v15    # "needOverlayForStartView":Z
    :cond_ab
    :goto_ab
    const/4 v6, 0x0

    if-eqz v9, :cond_107

    .line 445
    if-nez v11, :cond_ea

    .line 446
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    .line 447
    .local v7, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v12, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:visibility:screenLocation"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 448
    .local v12, "screenLoc":[I
    aget v14, v12, v6

    .line 449
    .local v14, "screenX":I
    aget v15, v12, v18

    .line 450
    .local v15, "screenY":I
    move/from16 v19, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 451
    .local v6, "loc":[I
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 452
    aget v16, v6, v19

    sub-int v16, v14, v16

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v17

    move-object/from16 v20, v6

    .end local v6    # "loc":[I
    .local v20, "loc":[I
    sub-int v6, v16, v17

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 453
    aget v6, v20, v18

    sub-int v6, v15, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 454
    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 455
    .end local v12    # "screenLoc":[I
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v20    # "loc":[I
    goto :goto_eb

    .line 456
    .end local v7    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_ea
    const/4 v7, 0x0

    .line 458
    .restart local v7    # "overlay":Landroid/view/ViewGroupOverlay;
    :goto_eb
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 459
    .local v6, "animator":Landroid/animation/Animator;
    if-nez v11, :cond_106

    .line 460
    if-nez v6, :cond_f7

    .line 461
    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_106

    .line 463
    :cond_f7
    const v12, 0x10205b3

    invoke-virtual {v5, v12, v9}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 464
    move-object v12, v9

    .line 465
    .local v12, "finalOverlayView":Landroid/view/View;
    new-instance v14, Landroid/transition/Visibility$1;

    invoke-direct {v14, v0, v7, v12, v5}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroupOverlay;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 490
    .end local v12    # "finalOverlayView":Landroid/view/View;
    :cond_106
    :goto_106
    return-object v6

    .line 493
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v7    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_107
    move/from16 v19, v6

    if-eqz v10, :cond_12f

    .line 494
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 495
    .local v6, "originalVisibility":I
    move/from16 v7, v19

    invoke-virtual {v10, v7}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 496
    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v7

    .line 497
    .local v7, "animator":Landroid/animation/Animator;
    if-eqz v7, :cond_12b

    .line 498
    new-instance v12, Landroid/transition/Visibility$DisappearListener;

    iget-boolean v14, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    invoke-direct {v12, v10, v4, v14}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 500
    .local v12, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v7, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    invoke-virtual {v7, v12}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 502
    invoke-virtual {v0, v12}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 503
    .end local v12    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    goto :goto_12e

    .line 504
    :cond_12b
    invoke-virtual {v10, v6}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 506
    :goto_12e
    return-object v7

    .line 508
    .end local v6    # "originalVisibility":I
    .end local v7    # "animator":Landroid/animation/Animator;
    :cond_12f
    return-object v16
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 127
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 130
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 131
    return-void

    .line 128
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setSuppressLayout(Z)V
    .registers 2
    .param p1, "suppress"    # Z

    .line 115
    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 116
    return-void
.end method
