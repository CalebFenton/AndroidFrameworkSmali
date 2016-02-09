.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$DisappearListener;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mForcedEndVisibility:I

.field private mForcedStartVisibility:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 63
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 64
    const-string/jumbo v1, "android:visibility:visibility"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 65
    const-string/jumbo v1, "android:visibility:parent"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 63
    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    #@11
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 82
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@4
    .line 77
    const/4 v0, 0x3

    #@5
    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    #@7
    .line 79
    iput v1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@9
    .line 80
    iput v1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@b
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 77
    const/4 v2, 0x3

    #@6
    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    #@8
    .line 79
    iput v4, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@a
    .line 80
    iput v4, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@c
    .line 86
    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    #@e
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@11
    move-result-object v0

    #@12
    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@15
    move-result v1

    #@16
    .line 88
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 89
    if-eqz v1, :cond_0

    #@1b
    .line 90
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    #@1e
    .line 84
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;I)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
    .param p2, "forcedVisibility"    # I

    #@0
    .prologue
    .line 127
    const/4 v2, -0x1

    #@1
    if-eq p2, v2, :cond_0

    #@3
    .line 128
    move v1, p2

    #@4
    .line 132
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v3, "android:visibility:visibility"

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 133
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@12
    const-string/jumbo v3, "android:visibility:parent"

    #@15
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@17
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 134
    const/4 v2, 0x2

    #@1f
    new-array v0, v2, [I

    #@21
    .line 135
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@23
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@26
    .line 136
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@28
    const-string/jumbo v3, "android:visibility:screenLocation"

    #@2b
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 125
    return-void

    #@2f
    .line 130
    .end local v0    # "loc":[I
    .end local v1    # "visibility":I
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@31
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@34
    move-result v1

    #@35
    .restart local v1    # "visibility":I
    goto :goto_0
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 186
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    #@6
    invoke-direct {v0, v3}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo;)V

    #@9
    .line 187
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@b
    .line 188
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@d
    .line 189
    if-eqz p0, :cond_0

    #@f
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@11
    const-string/jumbo v2, "android:visibility:visibility"

    #@14
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 190
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    const-string/jumbo v2, "android:visibility:visibility"

    #@1f
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Integer;

    #@25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v1

    #@29
    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@2b
    .line 191
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2d
    const-string/jumbo v2, "android:visibility:parent"

    #@30
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/view/ViewGroup;

    #@36
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@38
    .line 196
    :goto_0
    if-eqz p1, :cond_1

    #@3a
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@3c
    const-string/jumbo v2, "android:visibility:visibility"

    #@3f
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_1

    #@45
    .line 197
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@47
    const-string/jumbo v2, "android:visibility:visibility"

    #@4a
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Ljava/lang/Integer;

    #@50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@53
    move-result v1

    #@54
    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@56
    .line 198
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@58
    const-string/jumbo v2, "android:visibility:parent"

    #@5b
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroid/view/ViewGroup;

    #@61
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@63
    .line 203
    :goto_1
    if-eqz p0, :cond_7

    #@65
    if-eqz p1, :cond_7

    #@67
    .line 204
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@69
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@6b
    if-ne v1, v2, :cond_2

    #@6d
    .line 205
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@6f
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@71
    if-ne v1, v2, :cond_2

    #@73
    .line 206
    return-object v0

    #@74
    .line 193
    :cond_0
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@76
    .line 194
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@78
    goto :goto_0

    #@79
    .line 200
    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@7b
    .line 201
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@7d
    goto :goto_1

    #@7e
    .line 208
    :cond_2
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@80
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@82
    if-eq v1, v2, :cond_5

    #@84
    .line 209
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@86
    if-nez v1, :cond_4

    #@88
    .line 210
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@8a
    .line 211
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@8c
    .line 234
    :cond_3
    :goto_2
    return-object v0

    #@8d
    .line 212
    :cond_4
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@8f
    if-nez v1, :cond_3

    #@91
    .line 213
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@93
    .line 214
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@95
    goto :goto_2

    #@96
    .line 217
    :cond_5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@98
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@9a
    if-eq v1, v2, :cond_3

    #@9c
    .line 218
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@9e
    if-nez v1, :cond_6

    #@a0
    .line 219
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@a2
    .line 220
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@a4
    goto :goto_2

    #@a5
    .line 221
    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@a7
    if-nez v1, :cond_3

    #@a9
    .line 222
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@ab
    .line 223
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@ad
    goto :goto_2

    #@ae
    .line 227
    :cond_7
    if-nez p0, :cond_8

    #@b0
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@b2
    if-nez v1, :cond_8

    #@b4
    .line 228
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@b6
    .line 229
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@b8
    goto :goto_2

    #@b9
    .line 230
    :cond_8
    if-nez p1, :cond_3

    #@bb
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@bd
    if-nez v1, :cond_3

    #@bf
    .line 231
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@c1
    .line 232
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@c3
    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@2
    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    #@5
    .line 145
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@2
    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    #@5
    .line 140
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@4
    move-result-object v6

    #@5
    .line 241
    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 242
    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 243
    :cond_0
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 244
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@17
    .line 245
    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@19
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move-object v2, p2

    #@1c
    move-object v4, p3

    #@1d
    .line 244
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 247
    :cond_1
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@24
    .line 248
    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@26
    move-object v0, p0

    #@27
    move-object v1, p1

    #@28
    move-object v2, p2

    #@29
    move-object v4, p3

    #@2a
    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 252
    :cond_2
    return-object v1
.end method

.method public forceVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    #@0
    .prologue
    .line 152
    if-eqz p2, :cond_0

    #@2
    .line 153
    iput p1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@4
    .line 151
    :goto_0
    return-void

    #@5
    .line 155
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@7
    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 464
    if-nez p1, :cond_0

    #@4
    if-nez p2, :cond_0

    #@6
    .line 465
    return v2

    #@7
    .line 467
    :cond_0
    if-eqz p1, :cond_1

    #@9
    if-eqz p2, :cond_1

    #@b
    .line 468
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@d
    const-string/jumbo v4, "android:visibility:visibility"

    #@10
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    .line 469
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@16
    const-string/jumbo v5, "android:visibility:visibility"

    #@19
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    .line 468
    if-eq v3, v4, :cond_1

    #@1f
    .line 472
    return v2

    #@20
    .line 474
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@23
    move-result-object v0

    #@24
    .line 475
    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@26
    if-eqz v3, :cond_4

    #@28
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 476
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@2e
    if-nez v3, :cond_3

    #@30
    .line 475
    :cond_2
    :goto_0
    return v1

    #@31
    :cond_3
    move v1, v2

    #@32
    .line 476
    goto :goto_0

    #@33
    :cond_4
    move v1, v2

    #@34
    .line 475
    goto :goto_0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 175
    if-nez p1, :cond_0

    #@3
    .line 176
    return v3

    #@4
    .line 178
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v4, "android:visibility:visibility"

    #@9
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/Integer;

    #@f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    .line 179
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@15
    const-string/jumbo v4, "android:visibility:parent"

    #@18
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/view/View;

    #@1e
    .line 181
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    #@20
    if-eqz v0, :cond_1

    #@22
    const/4 v2, 0x1

    #@23
    :goto_0
    return v2

    #@24
    :cond_1
    move v2, v3

    #@25
    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 276
    iget v5, p0, Landroid/transition/Visibility;->mMode:I

    #@5
    and-int/lit8 v5, v5, 0x1

    #@7
    const/4 v6, 0x1

    #@8
    if-ne v5, v6, :cond_0

    #@a
    if-nez p4, :cond_1

    #@c
    .line 277
    :cond_0
    return-object v7

    #@d
    .line 279
    :cond_1
    if-nez p2, :cond_2

    #@f
    .line 280
    const/4 v3, 0x0

    #@10
    .line 281
    .local v3, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@12
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    .line 282
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v9}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@1b
    move-result-object v4

    #@1c
    .line 284
    .local v4, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v9}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@1f
    move-result-object v1

    #@20
    .line 286
    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-static {v4, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@23
    move-result-object v3

    #@24
    .line 287
    .local v3, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v3, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 288
    return-object v7

    #@29
    .line 291
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v3    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v4    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_2
    iget v5, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@2b
    if-ne v5, v8, :cond_4

    #@2d
    .line 292
    iget v5, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@2f
    if-eq v5, v8, :cond_5

    #@31
    const/4 v2, 0x1

    #@32
    .line 293
    .local v2, "isForcedVisibility":Z
    :goto_0
    if-eqz v2, :cond_3

    #@34
    .line 295
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@36
    const/high16 v6, 0x3f800000    # 1.0f

    #@38
    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    #@3b
    .line 297
    :cond_3
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3d
    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@40
    move-result-object v5

    #@41
    return-object v5

    #@42
    .line 291
    .end local v2    # "isForcedVisibility":Z
    :cond_4
    const/4 v2, 0x1

    #@43
    .restart local v2    # "isForcedVisibility":Z
    goto :goto_0

    #@44
    .line 292
    .end local v2    # "isForcedVisibility":Z
    :cond_5
    const/4 v2, 0x0

    #@45
    .restart local v2    # "isForcedVisibility":Z
    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 317
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    #@0
    .prologue
    .line 357
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    #@4
    move/from16 v25, v0

    #@6
    and-int/lit8 v25, v25, 0x2

    #@8
    const/16 v26, 0x2

    #@a
    move/from16 v0, v25

    #@c
    move/from16 v1, v26

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 358
    const/16 v25, 0x0

    #@12
    return-object v25

    #@13
    .line 361
    :cond_0
    if-eqz p2, :cond_3

    #@15
    move-object/from16 v0, p2

    #@17
    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@19
    move-object/from16 v23, v0

    #@1b
    .line 362
    :goto_0
    if-eqz p4, :cond_4

    #@1d
    move-object/from16 v0, p4

    #@1f
    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@21
    .line 363
    :goto_1
    const/16 v16, 0x0

    #@23
    .line 364
    .local v16, "overlayView":Landroid/view/View;
    const/16 v24, 0x0

    #@25
    .line 365
    .local v24, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_1

    #@27
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@2a
    move-result-object v25

    #@2b
    if-nez v25, :cond_8

    #@2d
    .line 366
    :cond_1
    if-eqz v8, :cond_5

    #@2f
    .line 368
    move-object/from16 v16, v8

    #@31
    .line 411
    .end local v16    # "overlayView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v11, p5

    #@33
    .line 412
    .local v11, "finalVisibility":I
    move-object/from16 v10, p1

    #@35
    .line 414
    .local v10, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v16, :cond_c

    #@37
    .line 416
    move-object/from16 v0, p2

    #@39
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@3b
    move-object/from16 v25, v0

    #@3d
    const-string/jumbo v26, "android:visibility:screenLocation"

    #@40
    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v18

    #@44
    check-cast v18, [I

    #@46
    .line 417
    .local v18, "screenLoc":[I
    const/16 v25, 0x0

    #@48
    aget v19, v18, v25

    #@4a
    .line 418
    .local v19, "screenX":I
    const/16 v25, 0x1

    #@4c
    aget v20, v18, v25

    #@4e
    .line 419
    .local v20, "screenY":I
    const/16 v25, 0x2

    #@50
    move/from16 v0, v25

    #@52
    new-array v14, v0, [I

    #@54
    .line 420
    .local v14, "loc":[I
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@59
    .line 421
    const/16 v25, 0x0

    #@5b
    aget v25, v14, v25

    #@5d
    sub-int v25, v19, v25

    #@5f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    #@62
    move-result v26

    #@63
    sub-int v25, v25, v26

    #@65
    move-object/from16 v0, v16

    #@67
    move/from16 v1, v25

    #@69
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@6c
    .line 422
    const/16 v25, 0x1

    #@6e
    aget v25, v14, v25

    #@70
    sub-int v25, v20, v25

    #@72
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    #@75
    move-result v26

    #@76
    sub-int v25, v25, v26

    #@78
    move-object/from16 v0, v16

    #@7a
    move/from16 v1, v25

    #@7c
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@7f
    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@82
    move-result-object v25

    #@83
    move-object/from16 v0, v25

    #@85
    move-object/from16 v1, v16

    #@87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@8a
    .line 424
    move-object/from16 v0, p0

    #@8c
    move-object/from16 v1, p1

    #@8e
    move-object/from16 v2, v16

    #@90
    move-object/from16 v3, p2

    #@92
    move-object/from16 v4, p4

    #@94
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@97
    move-result-object v5

    #@98
    .line 425
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_b

    #@9a
    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@9d
    move-result-object v25

    #@9e
    move-object/from16 v0, v25

    #@a0
    move-object/from16 v1, v16

    #@a2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@a5
    .line 436
    :goto_3
    return-object v5

    #@a6
    .line 361
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_3
    const/16 v23, 0x0

    #@a8
    .local v23, "startView":Landroid/view/View;
    goto/16 :goto_0

    #@aa
    .line 362
    .end local v23    # "startView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    #@ab
    .local v8, "endView":Landroid/view/View;
    goto/16 :goto_1

    #@ad
    .line 369
    .end local v8    # "endView":Landroid/view/View;
    .restart local v16    # "overlayView":Landroid/view/View;
    .restart local v24    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v23, :cond_2

    #@af
    .line 373
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b2
    move-result-object v25

    #@b3
    if-nez v25, :cond_6

    #@b5
    .line 375
    move-object/from16 v16, v23

    #@b7
    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@b9
    .line 376
    .local v16, "overlayView":Landroid/view/View;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@bc
    move-result-object v25

    #@bd
    move-object/from16 v0, v25

    #@bf
    instance-of v0, v0, Landroid/view/View;

    #@c1
    move/from16 v25, v0

    #@c3
    if-eqz v25, :cond_2

    #@c5
    .line 377
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@c8
    move-result-object v21

    #@c9
    check-cast v21, Landroid/view/View;

    #@cb
    .line 378
    .local v21, "startParent":Landroid/view/View;
    const/16 v25, 0x1

    #@cd
    move-object/from16 v0, p0

    #@cf
    move-object/from16 v1, v21

    #@d1
    move/from16 v2, v25

    #@d3
    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@d6
    move-result-object v22

    #@d7
    .line 380
    .local v22, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v25, 0x1

    #@d9
    .line 379
    move-object/from16 v0, p0

    #@db
    move-object/from16 v1, v21

    #@dd
    move/from16 v2, v25

    #@df
    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@e2
    move-result-object v7

    #@e3
    .line 382
    .local v7, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v22

    #@e5
    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@e8
    move-result-object v17

    #@e9
    .line 383
    .local v17, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v17

    #@eb
    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@ed
    move/from16 v25, v0

    #@ef
    if-nez v25, :cond_7

    #@f1
    .line 384
    move-object/from16 v0, p1

    #@f3
    move-object/from16 v1, v23

    #@f5
    move-object/from16 v2, v21

    #@f7
    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    #@fa
    move-result-object v16

    #@fb
    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@fd
    .line 386
    .local v16, "overlayView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@100
    move-result-object v25

    #@101
    if-nez v25, :cond_2

    #@103
    .line 387
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    #@106
    move-result v12

    #@107
    .line 388
    .local v12, "id":I
    const/16 v25, -0x1

    #@109
    move/from16 v0, v25

    #@10b
    if-eq v12, v0, :cond_2

    #@10d
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@112
    move-result-object v25

    #@113
    if-eqz v25, :cond_2

    #@115
    .line 389
    move-object/from16 v0, p0

    #@117
    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    #@119
    move/from16 v25, v0

    #@11b
    .line 388
    if-eqz v25, :cond_2

    #@11d
    .line 393
    move-object/from16 v16, v23

    #@11f
    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@121
    .line 400
    .end local v7    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v17    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v21    # "startParent":Landroid/view/View;
    .end local v22    # "startParentValues":Landroid/transition/TransitionValues;
    .local v16, "overlayView":Landroid/view/View;
    :cond_8
    const/16 v25, 0x4

    #@123
    move/from16 v0, p5

    #@125
    move/from16 v1, v25

    #@127
    if-ne v0, v1, :cond_9

    #@129
    .line 401
    move-object/from16 v24, v8

    #@12b
    .local v24, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    #@12d
    .line 404
    .local v24, "viewToKeep":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v23

    #@12f
    if-ne v0, v8, :cond_a

    #@131
    .line 405
    move-object/from16 v24, v8

    #@133
    .local v24, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    #@135
    .line 407
    .local v24, "viewToKeep":Landroid/view/View;
    :cond_a
    move-object/from16 v16, v23

    #@137
    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@139
    .line 428
    .end local v16    # "overlayView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v14    # "loc":[I
    .restart local v18    # "screenLoc":[I
    .restart local v19    # "screenX":I
    .restart local v20    # "screenY":I
    :cond_b
    move-object/from16 v9, v16

    #@13b
    .line 429
    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v25, Landroid/transition/Visibility$1;

    #@13d
    move-object/from16 v0, v25

    #@13f
    move-object/from16 v1, p0

    #@141
    invoke-direct {v0, v1, v10, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@144
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v25

    #@148
    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@14b
    goto/16 :goto_3

    #@14d
    .line 439
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_c
    if-eqz v24, :cond_12

    #@14f
    .line 440
    const/4 v15, -0x1

    #@150
    .line 441
    .local v15, "originalVisibility":I
    move-object/from16 v0, p0

    #@152
    iget v0, v0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    #@154
    move/from16 v25, v0

    #@156
    const/16 v26, -0x1

    #@158
    move/from16 v0, v25

    #@15a
    move/from16 v1, v26

    #@15c
    if-ne v0, v1, :cond_f

    #@15e
    .line 442
    move-object/from16 v0, p0

    #@160
    iget v0, v0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    #@162
    move/from16 v25, v0

    #@164
    const/16 v26, -0x1

    #@166
    move/from16 v0, v25

    #@168
    move/from16 v1, v26

    #@16a
    if-eq v0, v1, :cond_10

    #@16c
    const/4 v13, 0x1

    #@16d
    .line 443
    .local v13, "isForcedVisibility":Z
    :goto_4
    if-nez v13, :cond_d

    #@16f
    .line 444
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    #@172
    move-result v15

    #@173
    .line 445
    const/16 v25, 0x0

    #@175
    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTransitionVisibility(I)V

    #@178
    .line 447
    :cond_d
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, p1

    #@17c
    move-object/from16 v2, v24

    #@17e
    move-object/from16 v3, p2

    #@180
    move-object/from16 v4, p4

    #@182
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@185
    move-result-object v5

    #@186
    .line 448
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_11

    #@188
    .line 449
    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    #@18a
    move-object/from16 v0, v24

    #@18c
    invoke-direct {v6, v0, v11, v13}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    #@18f
    .line 451
    .local v6, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@192
    .line 452
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    #@195
    .line 453
    move-object/from16 v0, p0

    #@197
    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@19a
    .line 457
    .end local v6    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    :cond_e
    :goto_5
    return-object v5

    #@19b
    .line 441
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    :cond_f
    const/4 v13, 0x1

    #@19c
    .restart local v13    # "isForcedVisibility":Z
    goto :goto_4

    #@19d
    .line 442
    .end local v13    # "isForcedVisibility":Z
    :cond_10
    const/4 v13, 0x0

    #@19e
    .restart local v13    # "isForcedVisibility":Z
    goto :goto_4

    #@19f
    .line 454
    .restart local v5    # "animator":Landroid/animation/Animator;
    :cond_11
    if-nez v13, :cond_e

    #@1a1
    .line 455
    move-object/from16 v0, v24

    #@1a3
    invoke-virtual {v0, v15}, Landroid/view/View;->setTransitionVisibility(I)V

    #@1a6
    goto :goto_5

    #@1a7
    .line 459
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    .end local v15    # "originalVisibility":I
    :cond_12
    const/16 v25, 0x0

    #@1a9
    return-object v25
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 497
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 103
    and-int/lit8 v0, p1, -0x4

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 106
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    #@f
    .line 102
    return-void
.end method
